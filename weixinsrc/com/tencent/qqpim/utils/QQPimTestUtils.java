// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import com.tencent.qqpim.interfaces.IEntity;
import java.io.*;

public class QQPimTestUtils
{

    public QQPimTestUtils()
    {
    }

    public static byte[] readVCardFromFile(String s)
    {
        byte abyte0[];
        StringBuilder stringbuilder;
        File file;
        abyte0 = null;
        stringbuilder = new StringBuilder();
        file = new File(s);
        Object obj = new BufferedReader(new FileReader(file));
_L3:
        String s1 = ((BufferedReader) (obj)).readLine();
        if(s1 != null) goto _L2; else goto _L1
_L1:
        ((BufferedReader) (obj)).close();
        Exception exception;
        Exception exception2;
        byte abyte1[];
        Exception exception6;
        try
        {
            ((BufferedReader) (obj)).close();
        }
        catch(Exception exception4) { }
        abyte1 = stringbuilder.toString().getBytes("UTF-8");
        abyte0 = abyte1;
_L4:
        return abyte0;
_L2:
        stringbuilder.append(s1).append("\r\n");
          goto _L3
        exception2;
_L6:
        if(obj != null)
            try
            {
                ((BufferedReader) (obj)).close();
            }
            catch(Exception exception3) { }
        break MISSING_BLOCK_LABEL_58;
        exception6;
        obj = abyte0;
        exception = exception6;
_L5:
        if(obj != null)
            try
            {
                ((BufferedReader) (obj)).close();
            }
            catch(Exception exception1) { }
        throw exception;
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
          goto _L4
        exception;
          goto _L5
        Exception exception5;
        exception5;
        obj = abyte0;
          goto _L6
    }

    public static void writeEntityToFile(IEntity ientity, String s)
    {
    }

    public static void writeStringToFile(String s, String s1)
    {
    }
}
