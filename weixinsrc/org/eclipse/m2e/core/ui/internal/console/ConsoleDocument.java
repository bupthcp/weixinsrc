// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ConsoleDocument.java

package org.eclipse.m2e.core.ui.internal.console;


public class ConsoleDocument
{
    protected static class ConsoleLine
    {

        public String line;
        public int type;

        ConsoleLine(String line, int type)
        {
            this.line = line;
            this.type = type;
        }
    }


    public ConsoleDocument()
    {
        writeIndex = 0;
        readIndex = 0;
    }

    public void clear()
    {
        lineTypes = null;
        lines = null;
        writeIndex = 0;
        readIndex = 0;
    }

    public void appendConsoleLine(int type, String line)
    {
        if(lines == null)
        {
            lines = new String[200];
            lineTypes = new int[200];
        }
        lines[writeIndex] = line;
        lineTypes[writeIndex] = type;
        if(++writeIndex >= 200)
            writeIndex = 0;
        if(writeIndex == readIndex && ++readIndex >= 200)
            readIndex = 0;
    }

    public ConsoleLine[] getLines()
    {
        if(isEmpty())
            return new ConsoleLine[0];
        ConsoleLine docLines[] = new ConsoleLine[readIndex <= writeIndex ? writeIndex : 200];
        int index = readIndex;
        for(int i = 0; i < docLines.length; i++)
        {
            docLines[i] = new ConsoleLine(lines[index], lineTypes[index]);
            if(++index >= 200)
                index = 0;
        }

        return docLines;
    }

    public boolean isEmpty()
    {
        return writeIndex == readIndex;
    }

    public static final int COMMAND = 0;
    public static final int MESSAGE = 1;
    public static final int ERROR = 2;
    public static final int STATUS = 3;
    public static final int DELIMITER = 4;
    private int lineTypes[];
    private String lines[];
    private int writeIndex;
    private int readIndex;
    private static final int BUFFER_SIZE = 200;
}
