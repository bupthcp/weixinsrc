// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PomEdits.java

package org.eclipse.m2e.core.ui.internal.editing;

import java.io.IOException;
import java.util.*;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.text.*;
import org.eclipse.wst.sse.core.StructuredModelManager;
import org.eclipse.wst.sse.core.internal.format.IStructuredFormatPreferences;
import org.eclipse.wst.sse.core.internal.provisional.IModelManager;
import org.eclipse.wst.sse.core.internal.provisional.IndexedRegion;
import org.eclipse.wst.sse.core.internal.provisional.text.IStructuredDocument;
import org.eclipse.wst.sse.core.internal.undo.IStructuredTextUndoManager;
import org.eclipse.wst.xml.core.internal.provisional.document.IDOMDocument;
import org.eclipse.wst.xml.core.internal.provisional.document.IDOMModel;
import org.eclipse.wst.xml.core.internal.provisional.format.FormatProcessorXML;
import org.w3c.dom.*;

public class PomEdits
{
    public static final class CompoundOperation
        implements Operation
    {

        public void process(Document document)
        {
            Operation aoperation[];
            int j = (aoperation = operations).length;
            for(int i = 0; i < j; i++)
            {
                Operation oper = aoperation[i];
                oper.process(document);
            }

        }

        private final Operation operations[];

        public transient CompoundOperation(Operation operations[])
        {
            this.operations = operations;
        }
    }

    public static interface Matcher
    {

        public abstract boolean matches(Element element);
    }

    public static interface Operation
    {

        public abstract void process(Document document);
    }

    public static final class OperationTuple
    {

        public void setForceSave()
        {
            forceSave = true;
        }

        public boolean isForceSave()
        {
            return forceSave;
        }

        public boolean isReadOnly()
        {
            return readOnly;
        }

        public IFile getFile()
        {
            return file;
        }

        public Operation getOperation()
        {
            return operation;
        }

        public IDocument getDocument()
        {
            return document;
        }

        public IDOMModel getModel()
        {
            return model;
        }

        private final Operation operation;
        private final IFile file;
        private final IDocument document;
        private final IDOMModel model;
        private boolean readOnly;
        private boolean forceSave;
        static final boolean $assertionsDisabled = !org/eclipse/m2e/core/ui/internal/editing/PomEdits.desiredAssertionStatus();


        public OperationTuple(IFile file, Operation operation)
        {
            readOnly = false;
            forceSave = false;
            if(!$assertionsDisabled && file == null)
                throw new AssertionError();
            if(!$assertionsDisabled && operation == null)
            {
                throw new AssertionError();
            } else
            {
                this.file = file;
                this.operation = operation;
                document = null;
                model = null;
                forceSave = true;
                return;
            }
        }

        public OperationTuple(IDocument document, Operation operation)
        {
            this(document, operation, false);
        }

        public OperationTuple(IDocument document, Operation operation, boolean readOnly)
        {
            this.readOnly = false;
            forceSave = false;
            if(!$assertionsDisabled && operation == null)
            {
                throw new AssertionError();
            } else
            {
                this.document = document;
                this.operation = operation;
                file = null;
                model = null;
                this.readOnly = readOnly;
                return;
            }
        }

        public OperationTuple(IDOMModel model, Operation operation)
        {
            readOnly = false;
            forceSave = false;
            if(!$assertionsDisabled && model == null)
            {
                throw new AssertionError();
            } else
            {
                this.operation = operation;
                this.model = model;
                document = null;
                file = null;
                return;
            }
        }
    }


    public PomEdits()
    {
    }

    public static Element findChild(Element parent, String name)
    {
        if(parent == null)
            return null;
        NodeList rootList = parent.getChildNodes();
        for(int i = 0; i < rootList.getLength(); i++)
        {
            Node nd = rootList.item(i);
            if(nd instanceof Element)
            {
                Element el = (Element)nd;
                if(name.equals(el.getNodeName()))
                    return el;
            }
        }

        return null;
    }

    public static List findChilds(Element parent, String name)
    {
        List toRet = new ArrayList();
        if(parent != null)
        {
            NodeList rootList = parent.getChildNodes();
            for(int i = 0; i < rootList.getLength(); i++)
            {
                Node nd = rootList.item(i);
                if(nd instanceof Element)
                {
                    Element el = (Element)nd;
                    if(name.equals(el.getNodeName()))
                        toRet.add(el);
                }
            }

        }
        return toRet;
    }

    public static String getTextValue(Node element)
    {
        if(element == null)
            return null;
        StringBuffer buff = new StringBuffer();
        NodeList list = element.getChildNodes();
        for(int i = 0; i < list.getLength(); i++)
        {
            Node child = list.item(i);
            if(child instanceof Text)
            {
                Text text = (Text)child;
                buff.append(text.getData().trim());
            }
        }

        return buff.toString();
    }

    public static transient Element findChild(Element parent, String name, Matcher matchers[])
    {
        Iterator iterator = findChilds(parent, name).iterator();
          goto _L1
_L7:
        Element el;
        int i;
        int j;
        Matcher amatcher[];
        el = (Element)iterator.next();
        j = (amatcher = matchers).length;
        i = 0;
          goto _L2
_L5:
        Matcher match = amatcher[i];
        if(match.matches(el)) goto _L3; else goto _L1
_L3:
        i++;
_L2:
        if(i < j) goto _L5; else goto _L4
_L4:
        return el;
_L1:
        if(!iterator.hasNext())
            return null;
        if(true) goto _L7; else goto _L6
_L6:
    }

    public static Element createElementWithText(Element parent, String name, String value)
    {
        Document doc = parent.getOwnerDocument();
        Element newElement = doc.createElement(name);
        parent.appendChild(newElement);
        newElement.appendChild(doc.createTextNode(value));
        return newElement;
    }

    public static Element createElement(Element parent, String name)
    {
        Document doc = parent.getOwnerDocument();
        Element newElement = doc.createElement(name);
        parent.appendChild(newElement);
        return newElement;
    }

    public static void setText(Element element, String value)
    {
        NodeList list = element.getChildNodes();
        List toRemove = new ArrayList();
        for(int i = 0; i < list.getLength(); i++)
        {
            Node child = list.item(i);
            if(child instanceof Text)
                toRemove.add(child);
        }

        Node rm;
        for(Iterator iterator = toRemove.iterator(); iterator.hasNext(); element.removeChild(rm))
            rm = (Node)iterator.next();

        Document doc = element.getOwnerDocument();
        element.appendChild(doc.createTextNode(value));
    }

    public static transient Element getChild(Element parent, String names[])
    {
        Element toFormat = null;
        Element toRet = null;
        if(names.length == 0)
            throw new IllegalArgumentException("At least one child name has to be specified");
        String as[];
        int j = (as = names).length;
        for(int i = 0; i < j; i++)
        {
            String name = as[i];
            toRet = findChild(parent, name);
            if(toRet == null)
            {
                toRet = parent.getOwnerDocument().createElement(name);
                parent.appendChild(toRet);
                if(toFormat == null)
                    toFormat = toRet;
            }
            parent = toRet;
        }

        if(toFormat != null)
            format(toFormat);
        return toRet;
    }

    public static void removeChild(Element parent, Element child)
    {
        if(child != null)
        {
            Node prev = child.getPreviousSibling();
            if(prev instanceof Text)
            {
                Text txt = (Text)prev;
                int lastnewline = getLastEolIndex(txt.getData());
                if(lastnewline >= 0)
                    txt.setData(txt.getData().substring(0, lastnewline));
            }
            parent.removeChild(child);
        }
    }

    private static int getLastEolIndex(String s)
    {
        if(s == null || s.length() == 0)
            return -1;
        for(int i = s.length() - 1; i >= 0; i--)
        {
            char c = s.charAt(i);
            if(c == '\r')
                return i;
            if(c == '\n')
                if(i > 0 && s.charAt(i - 1) == '\r')
                    return i - 1;
                else
                    return i;
        }

        return -1;
    }

    public static void removeIfNoChildElement(Element el)
    {
        NodeList nl = el.getChildNodes();
        boolean hasChilds = false;
        for(int i = 0; i < nl.getLength(); i++)
        {
            Node child = nl.item(i);
            if(child instanceof Element)
                hasChilds = true;
        }

        if(!hasChilds)
        {
            Node parent = el.getParentNode();
            if(parent != null && (parent instanceof Element))
            {
                removeChild((Element)parent, el);
                removeIfNoChildElement((Element)parent);
            }
        }
    }

    public static Element insertAt(Element newElement, int offset)
    {
        Document doc = newElement.getOwnerDocument();
        if(doc instanceof IDOMDocument)
        {
            IDOMDocument domDoc = (IDOMDocument)doc;
            IndexedRegion ir = domDoc.getModel().getIndexedRegion(offset);
            Node parent = ((Node)ir).getParentNode();
            if(ir instanceof Text)
            {
                Text txt = (Text)ir;
                String data = txt.getData();
                int dataSplitIndex = offset - ir.getStartOffset();
                String beforeText = data.substring(0, dataSplitIndex);
                String afterText = data.substring(dataSplitIndex);
                Text after = doc.createTextNode(afterText);
                Text before = doc.createTextNode(beforeText);
                parent.replaceChild(after, txt);
                parent.insertBefore(newElement, after);
                parent.insertBefore(before, newElement);
            } else
            {
                parent.appendChild(newElement);
            }
        } else
        {
            throw new IllegalArgumentException();
        }
        return newElement;
    }

    public static Element elementAtOffset(Document doc, int offset)
    {
        if(doc instanceof IDOMDocument)
        {
            IDOMDocument domDoc = (IDOMDocument)doc;
            IndexedRegion ir = domDoc.getModel().getIndexedRegion(offset);
            if(ir instanceof Element)
                return (Element)ir;
            Node parent = ((Node)ir).getParentNode();
            if(parent instanceof Element)
                return (Element)parent;
        }
        return null;
    }

    public static void format(Node newNode)
    {
        if(newNode.getParentNode() != null && newNode.equals(newNode.getParentNode().getLastChild()))
            newNode.getParentNode().appendChild(newNode.getParentNode().getOwnerDocument().createTextNode("\n"));
        FormatProcessorXML formatProcessor = new FormatProcessorXML();
        formatProcessor.getFormatPreferences().setLineWidth(2000);
        formatProcessor.formatNode(newNode);
    }

    public static transient void performOnDOMDocument(OperationTuple fileOperations[])
        throws IOException, CoreException
    {
        int i;
        int j;
        OperationTuple aoperationtuple[];
        j = (aoperationtuple = fileOperations).length;
        i = 0;
          goto _L1
_L3:
        OperationTuple tuple;
        IDOMModel domModel;
        tuple = aoperationtuple[i];
        domModel = null;
        org.eclipse.jface.text.DocumentRewriteSession session;
        IStructuredTextUndoManager undo;
        session = null;
        undo = null;
        if(tuple.isReadOnly())
        {
            domModel = (IDOMModel)StructuredModelManager.getModelManager().getExistingModelForRead(tuple.getDocument());
            if(domModel == null)
                domModel = (IDOMModel)StructuredModelManager.getModelManager().getModelForRead((IStructuredDocument)tuple.getDocument());
        } else
        {
            domModel = tuple.getModel() == null ? tuple.getFile() == null ? (IDOMModel)StructuredModelManager.getModelManager().getExistingModelForEdit(tuple.getDocument()) : (IDOMModel)StructuredModelManager.getModelManager().getModelForEdit(tuple.getFile()) : tuple.getModel();
            domModel.aboutToChangeModel();
            undo = domModel.getStructuredDocument().getUndoManager();
            if(domModel.getStructuredDocument() instanceof IDocumentExtension4)
            {
                IDocumentExtension4 ext4 = (IDocumentExtension4)domModel.getStructuredDocument();
                session = ext4.startRewriteSession(DocumentRewriteSessionType.UNRESTRICTED_SMALL);
            }
            undo.beginRecording(domModel);
        }
        tuple.getOperation().process(domModel.getDocument());
        break MISSING_BLOCK_LABEL_286;
        Exception exception;
        exception;
        if(!tuple.isReadOnly())
        {
            undo.endRecording(domModel);
            if(session != null && (domModel.getStructuredDocument() instanceof IDocumentExtension4))
            {
                IDocumentExtension4 ext4 = (IDocumentExtension4)domModel.getStructuredDocument();
                ext4.stopRewriteSession(session);
            }
            domModel.changedModel();
        }
        throw exception;
        if(!tuple.isReadOnly())
        {
            undo.endRecording(domModel);
            if(session != null && (domModel.getStructuredDocument() instanceof IDocumentExtension4))
            {
                IDocumentExtension4 ext4 = (IDocumentExtension4)domModel.getStructuredDocument();
                ext4.stopRewriteSession(session);
            }
            domModel.changedModel();
        }
        break MISSING_BLOCK_LABEL_410;
        Exception exception1;
        exception1;
        if(domModel != null)
            if(tuple.isReadOnly())
            {
                domModel.releaseFromRead();
            } else
            {
                if(tuple.isForceSave() || domModel.getReferenceCountForEdit() == 1)
                    domModel.save();
                domModel.releaseFromEdit();
            }
        throw exception1;
        if(domModel != null)
            if(tuple.isReadOnly())
            {
                domModel.releaseFromRead();
            } else
            {
                if(tuple.isForceSave() || domModel.getReferenceCountForEdit() == 1)
                    domModel.save();
                domModel.releaseFromEdit();
            }
        i++;
_L1:
        if(i < j) goto _L3; else goto _L2
_L2:
    }

    public static Matcher childEquals(final String elementName, final String matchingValue)
    {
        return new Matcher() {

            public boolean matches(Element child)
            {
                String toMatch = PomEdits.getTextValue(PomEdits.findChild(child, elementName));
                return toMatch != null && toMatch.trim().equals(matchingValue);
            }

            private final String val$elementName;
            private final String val$matchingValue;

            
            {
                elementName = s;
                matchingValue = s1;
                super();
            }
        }
;
    }

    public static Matcher textEquals(final String matchingValue)
    {
        return new Matcher() {

            public boolean matches(Element child)
            {
                String toMatch = PomEdits.getTextValue(child);
                return toMatch != null && toMatch.trim().equals(matchingValue);
            }

            private final String val$matchingValue;

            
            {
                matchingValue = s;
                super();
            }
        }
;
    }

    public static Matcher childMissingOrEqual(final String elementName, final String matchingValue)
    {
        return new Matcher() {

            public boolean matches(Element child)
            {
                Element match = PomEdits.findChild(child, elementName);
                if(match == null)
                    return true;
                String toMatch = PomEdits.getTextValue(match);
                return toMatch != null && toMatch.trim().equals(matchingValue);
            }

            private final String val$elementName;
            private final String val$matchingValue;

            
            {
                elementName = s;
                matchingValue = s1;
                super();
            }
        }
;
    }

    public static Matcher childAt(final int index)
    {
        return new Matcher() {

            public boolean matches(Element child)
            {
                if(count == index)
                {
                    return true;
                } else
                {
                    count++;
                    return false;
                }
            }

            int count;
            private final int val$index;

            
            {
                index = i;
                super();
                count = 0;
            }
        }
;
    }

    public static final String DEPENDENCIES = "dependencies";
    public static final String GROUP_ID = "groupId";
    public static final String ARTIFACT_ID = "artifactId";
    public static final String DEPENDENCY = "dependency";
    public static final String DEPENDENCY_MANAGEMENT = "dependencyManagement";
    public static final String EXCLUSIONS = "exclusions";
    public static final String EXCLUSION = "exclusion";
    public static final String VERSION = "version";
    public static final String PLUGIN = "plugin";
    public static final String CONFIGURATION = "configuration";
    public static final String PLUGINS = "plugins";
    public static final String PLUGIN_MANAGEMENT = "pluginManagement";
    public static final String BUILD = "build";
    public static final String PARENT = "parent";
    public static final String RELATIVE_PATH = "relativePath";
    public static final String TYPE = "type";
    public static final String CLASSIFIER = "classifier";
    public static final String OPTIONAL = "optional";
    public static final String SCOPE = "scope";
    public static final String MODULES = "modules";
    public static final String MODULE = "module";
    public static final String PROFILE = "profile";
    public static final String ID = "id";
    public static final String NAME = "name";
    public static final String URL = "url";
    public static final String DESCRIPTION = "description";
    public static final String INCEPTION_YEAR = "inceptionYear";
    public static final String ORGANIZATION = "organization";
    public static final String SCM = "scm";
    public static final String CONNECTION = "connection";
    public static final String DEV_CONNECTION = "developerConnection";
    public static final String TAG = "tag";
    public static final String ISSUE_MANAGEMENT = "issueManagement";
    public static final String SYSTEM = "system";
    public static final String SYSTEM_PATH = "systemPath";
    public static final String CI_MANAGEMENT = "ciManagement";
    public static final String PACKAGING = "packaging";
    public static final String PROPERTIES = "properties";
    public static final String EXTENSION = "extension";
    public static final String EXTENSIONS = "extensions";
    public static final String PROFILES = "profiles";
    public static final String EXECUTIONS = "executions";
    public static final String EXECUTION = "execution";
    public static final String GOAL = "goal";
    public static final String GOALS = "goals";
}
