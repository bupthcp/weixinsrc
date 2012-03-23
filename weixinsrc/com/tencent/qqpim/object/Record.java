// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.object;


public class Record
{

    public Record()
    {
        values = new StringBuilder[3];
        binary_data = null;
        isPref = false;
        values[0] = new StringBuilder();
        values[1] = new StringBuilder();
        values[2] = new StringBuilder();
    }

    public void clear()
    {
        values[0] = new StringBuilder();
        values[1] = new StringBuilder();
        values[2] = new StringBuilder();
        binary_data = null;
        isPref = false;
    }

    public String get(int i)
    {
        return values[i].toString();
    }

    public byte[] getBinaryData()
    {
        return binary_data;
    }

    public boolean isPref()
    {
        return isPref;
    }

    public void put(int i, String s)
    {
        if(s != null)
            values[i].append(s);
    }

    public void putBinaryData(byte abyte0[])
    {
        binary_data = abyte0;
    }

    public void setPref(boolean flag)
    {
        isPref = flag;
    }

    public static final int CONTENT = 2;
    public static final int LABEL = 1;
    public static final int TAG;
    private byte binary_data[];
    private boolean isPref;
    private StringBuilder values[];
}
