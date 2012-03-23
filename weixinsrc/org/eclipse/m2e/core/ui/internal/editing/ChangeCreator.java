// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ChangeCreator.java

package org.eclipse.m2e.core.ui.internal.editing;

import java.util.ArrayList;
import java.util.Arrays;
import org.eclipse.compare.rangedifferencer.*;
import org.eclipse.core.resources.IFile;
import org.eclipse.jface.text.*;
import org.eclipse.ltk.core.refactoring.*;
import org.eclipse.text.edits.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ChangeCreator
{
    public static class LineComparator
        implements IRangeComparator
    {

        public int getRangeCount()
        {
            return document.getNumberOfLines();
        }

        public boolean rangesEqual(int thisIndex, IRangeComparator other, int otherIndex)
        {
            try
            {
                return getHash(thisIndex).equals(((LineComparator)other).getHash(otherIndex));
            }
            catch(BadLocationException e)
            {
                ChangeCreator.log.error("Problem comparing", e);
            }
            return false;
        }

        public boolean skipRangeComparison(int length, int maxLength, IRangeComparator other)
        {
            return false;
        }

        private Integer getHash(int line)
            throws BadLocationException
        {
            Integer hash = (Integer)hashes.get(line);
            if(hash == null)
            {
                IRegion lineRegion = document.getLineInformation(line);
                String lineContents = document.get(lineRegion.getOffset(), lineRegion.getLength());
                hash = new Integer(computeDJBHash(lineContents));
                hashes.set(line, hash);
            }
            return hash;
        }

        private int computeDJBHash(String string)
        {
            int hash = 5381;
            int len = string.length();
            for(int i = 0; i < len; i++)
                hash = (hash << 5) + hash + string.charAt(i);

            return hash;
        }

        private final IDocument document;
        private final ArrayList hashes;

        public LineComparator(IDocument document)
        {
            this.document = document;
            hashes = new ArrayList(Arrays.asList(new Integer[document.getNumberOfLines()]));
        }
    }


    public ChangeCreator(IFile oldFile, IDocument oldDocument, IDocument newDocument, String label)
    {
        this.newDocument = newDocument;
        this.oldDocument = oldDocument;
        this.oldFile = oldFile;
        this.label = label;
    }

    public TextChange createChange()
        throws Exception
    {
        TextChange change = ((TextChange) (oldFile != null ? ((TextChange) (new TextFileChange(label, oldFile))) : ((TextChange) (new DocumentChange(label, oldDocument)))));
        change.setEdit(new MultiTextEdit());
        Object leftSide = new LineComparator(oldDocument);
        Object rightSide = new LineComparator(newDocument);
        RangeDifference differences[] = RangeDifferencer.findDifferences((IRangeComparator)leftSide, (IRangeComparator)rightSide);
        int insertOffset = 0;
        for(int i = 0; i < differences.length; i++)
        {
            RangeDifference curr = differences[i];
            int startLine = 0;
            if(curr.rightLength() == curr.leftLength())
            {
                startLine = curr.rightStart();
                int endLine = curr.rightEnd() - 1;
                for(int j = startLine; j <= endLine; j++)
                {
                    int newPos = (curr.leftStart() - startLine) + j;
                    String newText = newDocument.get(newDocument.getLineOffset(newPos), newDocument.getLineLength(newPos));
                    addEdit(change, startLine, new ReplaceEdit(oldDocument.getLineOffset(j), oldDocument.getLineLength(j), newText));
                }

            } else
            if(curr.rightLength() > 0 && curr.leftLength() == 0)
            {
                startLine = curr.rightStart();
                int endLine = curr.rightEnd() - 1;
                int posInsert = oldDocument.getLineOffset(curr.leftStart());
                String newText = "";
                for(int j = startLine; j <= endLine; j++)
                {
                    int newPos = (curr.leftStart() - startLine) + j + insertOffset;
                    newText = (new StringBuilder(String.valueOf(newText))).append(newDocument.get(newDocument.getLineOffset(newPos), newDocument.getLineLength(newPos))).toString();
                }

                if(newText.length() > 0)
                    addEdit(change, startLine, new InsertEdit(posInsert, newText));
                insertOffset += curr.rightEnd() - curr.rightStart();
            } else
            if(curr.leftLength() > 0 && curr.rightLength() == 0)
            {
                startLine = curr.leftStart();
                int endLine = curr.leftEnd() - 1;
                int startOffset = oldDocument.getLineOffset(startLine);
                int endOffset = 0;
                for(int j = startLine; j <= endLine; j++)
                    endOffset += oldDocument.getLineLength(j);

                addEdit(change, startLine, new DeleteEdit(startOffset, endOffset));
                insertOffset -= curr.leftEnd() - curr.leftStart();
            }
        }

        return change;
    }

    private void addEdit(TextChange change, int startLine, TextEdit edit)
    {
        change.addTextEditGroup(new TextEditGroup((new StringBuilder("Line ")).append(startLine + 1).toString(), edit));
        change.addEdit(edit);
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/editing/ChangeCreator);
    private String label;
    private IDocument oldDocument;
    private IDocument newDocument;
    private IFile oldFile;


}
