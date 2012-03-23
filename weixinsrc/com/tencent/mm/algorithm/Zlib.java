// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.algorithm;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.Deflater;

public class Zlib
{

    public Zlib()
    {
    }

    public static byte[] a(byte abyte0[])
    {
        Deflater deflater;
        ByteArrayOutputStream bytearrayoutputstream;
        deflater = new Deflater();
        deflater.reset();
        deflater.setInput(abyte0);
        deflater.finish();
        bytearrayoutputstream = new ByteArrayOutputStream(abyte0.length);
        byte abyte2[];
        try
        {
            byte abyte1[] = new byte[1024];
            for(; !deflater.finished(); bytearrayoutputstream.write(abyte1, 0, deflater.deflate(abyte1)));
            break MISSING_BLOCK_LABEL_73;
        }
        catch(Exception exceptionException exception1, IOException ioexception2, )
        {
            try
            {
                bytearrayoutputstream.close();
            }
            catch(IOException ioexception1) { }
        }
        deflater.end();
        return abyte0;
        abyte2 = bytearrayoutputstream.toByteArray();
        abyte0 = abyte2;
        try
        {
            bytearrayoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch(IOException ioexception2) { }
        if(false)
            ;
        else
            break MISSING_BLOCK_LABEL_67;
        exception;
        try
        {
            bytearrayoutputstream.close();
        }
        catch(IOException ioexception) { }
        throw exception;
    }
}
