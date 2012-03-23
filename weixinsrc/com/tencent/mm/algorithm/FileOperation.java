// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;

import java.io.*;
import junit.framework.Assert;

public class FileOperation
{

    public FileOperation()
    {
    }

    public static int a(String s)
    {
        int i = 0;
        if(s != null) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        File file = new File(s);
        if(file.exists())
            i = (int)file.length();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static int a(String s, String s1, String s2, byte abyte0[])
    {
        return a(s, (new StringBuilder()).append(s1).append(s2).toString(), abyte0);
    }

    public static int a(String s, String s1, byte abyte0[])
    {
        if(abyte0 != null) goto _L2; else goto _L1
_L1:
        byte byte0 = -2;
_L4:
        return byte0;
_L2:
        File file = new File(s);
        if(!file.exists())
            file.mkdirs();
        File file1 = new File((new StringBuilder()).append(s).append(s1).toString());
        if(!file1.exists())
            file1.createNewFile();
        BufferedOutputStream bufferedoutputstream = new BufferedOutputStream(new FileOutputStream(file1, true));
        bufferedoutputstream.write(abyte0);
        bufferedoutputstream.flush();
        bufferedoutputstream.close();
        byte0 = 0;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        byte0 = -1;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static final void a(File file)
    {
        Assert.assertNotNull(file);
        if(!file.exists()) goto _L2; else goto _L1
_L1:
        if(!file.isFile()) goto _L4; else goto _L3
_L3:
        file.delete();
_L6:
        file.delete();
_L2:
        return;
_L4:
        if(file.isDirectory())
        {
            File afile[] = file.listFiles();
            int i = 0;
            while(i < afile.length) 
            {
                a(afile[i]);
                i++;
            }
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static final void a(String s, String s1, String s2)
    {
        if(s != null && s1 != null && s2 != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        File file = new File((new StringBuilder()).append(s).append(s1).toString());
        File file1 = new File((new StringBuilder()).append(s).append(s2).toString());
        if(file.exists())
            file.renameTo(file1);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static byte[] a(String s, int i, int j)
    {
        boolean flag = true;
        if(s != null) goto _L2; else goto _L1
_L1:
        byte abyte0[] = null;
_L4:
        return abyte0;
_L2:
        Exception exception1;
        File file = new File(s);
        if(!file.exists())
        {
            abyte0 = null;
            continue; /* Loop/switch isn't completed */
        }
        if(j == -1)
            j = (int)file.length();
        (new StringBuilder()).append("readFromFile : offset = ").append(i).append(" len = ").append(j).append(" offset + len = ").append(i + j).toString();
        boolean flag1;
        boolean flag2;
        RandomAccessFile randomaccessfile;
        long l;
        if(i >= 0)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        if(j >= 0)
            flag2 = flag;
        else
            flag2 = false;
        Assert.assertTrue(flag2);
        if(i + j > (int)file.length())
            flag = false;
        Assert.assertTrue(flag);
        randomaccessfile = new RandomAccessFile(s, "r");
        abyte0 = new byte[j];
        l = i;
        randomaccessfile.seek(l);
        randomaccessfile.readFully(abyte0);
        randomaccessfile.close();
        continue; /* Loop/switch isn't completed */
        exception1;
_L5:
        (new StringBuilder()).append("readFromFile : errMsg = ").append(exception1.getMessage()).toString();
        if(true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        exception1 = exception;
        abyte0 = null;
          goto _L5
    }

    public static final String b(String s)
    {
        boolean flag;
        byte abyte0[];
        String s1;
        if(s != null && !s.equals(""))
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        abyte0 = a(s, 0, 2);
        if(abyte0 == null || abyte0.length < 2)
        {
            s1 = ".jpg";
        } else
        {
            int i = abyte0[0];
            if(i < 0)
                i += 256;
            int j = abyte0[1];
            if(j < 0)
                j += 256;
            if(i == 66 && j == 77)
                s1 = ".bmp";
            else
            if(i == 255 && j == 216)
                s1 = ".jpg";
            else
            if(i == 137 && j == 80)
                s1 = ".png";
            else
            if(i == 71 && j == 73)
                s1 = ".gif";
            else
                s1 = ".jpg";
        }
        return s1;
    }

    public static final boolean c(String s)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(s != null && (new File(s)).exists())
            flag = true;
        return flag;
    }

    public static final boolean d(String s)
    {
        boolean flag = true;
        if(s != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        File file = new File(s);
        if(file.exists())
            flag = file.delete();
        if(true) goto _L1; else goto _L3
_L3:
    }
}
