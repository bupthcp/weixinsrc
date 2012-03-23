// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import java.io.*;

public final class FilesCopy
{

    private FilesCopy()
    {
    }

    public static boolean a(String s, String s1)
    {
        boolean flag = false;
        try
        {
            FileInputStream fileinputstream = new FileInputStream(s);
            FileOutputStream fileoutputstream = new FileOutputStream(s1);
            byte abyte0[] = new byte[16384];
            do
            {
                int i = fileinputstream.read(abyte0);
                if(i == -1)
                {
                    fileinputstream.close();
                    fileoutputstream.flush();
                    fileoutputstream.close();
                    flag = true;
                    break;
                }
                fileoutputstream.write(abyte0, 0, i);
            } while(true);
        }
        catch(Exception exception) { }
        return flag;
    }

    public static boolean a(String s, String s1, boolean flag)
    {
        boolean flag1;
        File file;
        flag1 = false;
        file = new File(s);
        if(file.exists()) goto _L2; else goto _L1
_L1:
        return flag1;
_L2:
        File file1;
        file1 = new File(s1);
        if(!file.isFile())
            break; /* Loop/switch isn't completed */
        if(!file1.isFile() && file1.exists())
            continue; /* Loop/switch isn't completed */
        a(s, s1);
        if(flag)
            file.delete();
_L5:
        flag1 = true;
        if(true) goto _L1; else goto _L3
_L3:
        if(!file.isDirectory()) goto _L5; else goto _L4
_L4:
        if(!file1.exists())
            file1.mkdir();
        if(!file1.isDirectory()) goto _L1; else goto _L6
_L6:
        String as[] = file.list();
        while(flag1 < as.length) 
        {
            a((new StringBuilder()).append(s).append("/").append(as[flag1]).toString(), (new StringBuilder()).append(s1).append("/").append(as[flag1]).toString(), flag);
            flag1++;
        }
          goto _L5
    }
}
