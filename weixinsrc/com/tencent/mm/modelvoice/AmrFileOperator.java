// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoice;

import com.tencent.mm.platformtools.Log;
import java.io.*;
import junit.framework.Assert;

public class AmrFileOperator
{

    public AmrFileOperator(String s)
    {
        a = null;
        b = "";
        b = s;
    }

    public static int a(String s)
    {
        int i;
        File file;
        i = 0;
        int j;
        if(s.length() >= 0)
            j = 1;
        else
            j = i;
        Assert.assertTrue(j);
        file = new File(s);
        if(file.exists()) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        int k = (int)file.length() - "#!AMR\n".length();
        if(k > 0)
            i = k;
        if(true) goto _L1; else goto _L3
_L3:
    }

    private boolean b(String s)
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        if(b.length() >= 0)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        if(a == null)
            flag2 = flag;
        else
            flag2 = false;
        Assert.assertTrue(flag2);
        if(s.equals("r") || s.equals("rw"))
            flag3 = flag;
        else
            flag3 = false;
        Assert.assertTrue(flag3);
        Log.d("MicroMsg.AmrFileOperator", (new StringBuilder()).append("Open file:").append(a).append(" mode:").append(s).toString());
        try
        {
            a = new RandomAccessFile(b, s);
        }
        catch(Exception exception)
        {
            Log.a("MicroMsg.AmrFileOperator", (new StringBuilder()).append("ERR: OpenFile[").append(b).append("] failed:[").append(exception.getMessage()).append("]").toString());
            a = null;
            flag = false;
        }
        return flag;
    }

    public final int a(byte abyte0[], int i, int j)
    {
        boolean flag;
        int l;
        flag = true;
        boolean flag1;
        if(abyte0.length > 0 && i > 0)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        if(a != null || b("rw")) goto _L2; else goto _L1
_L1:
        l = -1;
_L4:
        return l;
_L2:
        int k;
        long l1;
        int i1;
        int j1;
        if(j == 0)
            try
            {
                a.write("#!AMR\n".getBytes(), 0, "#!AMR\n".length());
            }
            catch(Exception exception1)
            {
                Log.a("MicroMsg.AmrFileOperator", (new StringBuilder()).append("ERR: WriteHeadToFile[").append(b).append("] failed:[").append(exception1.getMessage()).append("]").toString());
                a();
                l = -2;
                continue; /* Loop/switch isn't completed */
            }
        k = j + "#!AMR\n".length();
        a.seek(k);
        a.write(abyte0, 0, i);
        l1 = a.getFilePointer();
        i1 = (int)l1;
        j1 = k + i;
        Exception exception;
        boolean flag2;
        if(i1 == j1)
            flag2 = flag;
        else
            flag2 = false;
        Assert.assertTrue(flag2);
        l = j1 - "#!AMR\n".length();
        if(l < 0)
            flag = false;
        Assert.assertTrue(flag);
        continue; /* Loop/switch isn't completed */
        exception;
        Log.a("MicroMsg.AmrFileOperator", (new StringBuilder()).append("ERR: WriteFile[").append(b).append("] Offset:").append(k).append(" failed:[").append(exception.getMessage()).append("]").toString());
        a();
        l = -3;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final ReadRes a(int i, int j)
    {
        ReadRes readres = new ReadRes();
        if(i >= 0 && j > 0) goto _L2; else goto _L1
_L1:
        readres.d = -3;
_L4:
        return readres;
_L2:
        int k;
        if(a == null && !b("r"))
        {
            readres.d = -2;
            continue; /* Loop/switch isn't completed */
        }
        k = i + "#!AMR\n".length();
        readres.a = new byte[j];
        long l = a.length();
        a.seek(k);
        int i1 = a.read(readres.a, 0, j);
        Log.d("MicroMsg.AmrFileOperator", (new StringBuilder()).append("DBG: ReadFile[").append(b).append("] readOffset:").append(k).append(" readRet:").append(i1).append(" fileNow:").append(a.getFilePointer()).append(" fileSize:").append(l).toString());
        if(i1 < 0)
            i1 = 0;
        readres.b = i1;
        readres.c = (i1 + k) - "#!AMR\n".length();
        readres.d = 0;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Log.a("MicroMsg.AmrFileOperator", (new StringBuilder()).append("ERR: ReadFile[").append(b).append("] Offset:").append(k).append("  failed:[").append(exception.getMessage()).append("] ").toString());
        a();
        readres.d = -1;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a()
    {
        if(a == null)
            break MISSING_BLOCK_LABEL_46;
        a.close();
        a = null;
        Log.d("MicroMsg.AmrFileOperator", (new StringBuilder()).append("Close :").append(b).toString());
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private RandomAccessFile a;
    private String b;

    private class ReadRes
    {

        public byte a[];
        public int b;
        public int c;
        public int d;

        public ReadRes()
        {
            a = null;
            b = 0;
            c = 0;
            d = 0;
        }
    }

}
