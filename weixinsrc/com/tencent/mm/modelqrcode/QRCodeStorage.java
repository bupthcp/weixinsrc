// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelqrcode;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;

public class QRCodeStorage
{

    public QRCodeStorage(String s)
    {
        a = s;
    }

    private String b(String s, int i)
    {
        return (new StringBuilder()).append(a).append("qr_").append(MD5.a(s.getBytes())).append("_").append(i).append(".png").toString();
    }

    public final int a(String s, int i, byte abyte0[])
    {
        String s1 = b(s, i);
        FileOutputStream fileoutputstream = new FileOutputStream(s1);
        fileoutputstream.write(abyte0);
        fileoutputstream.close();
        int j = 0;
_L2:
        return j;
        Exception exception;
        exception;
        j = -1;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final Bitmap a()
    {
        byte abyte0[] = a(ConfigStorageLogic.b(), Util.a((Integer)MMCore.f().f().a(0x10401)));
        Bitmap bitmap;
        if(abyte0 == null)
            bitmap = null;
        else
            bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
        return bitmap;
    }

    public final byte[] a(String s, int i)
    {
        String s1 = b(s, i);
        byte abyte0[];
        try
        {
            RandomAccessFile randomaccessfile = new RandomAccessFile(s1, "r");
            abyte0 = new byte[(int)randomaccessfile.length()];
            randomaccessfile.read(abyte0);
            randomaccessfile.close();
        }
        catch(Exception exception)
        {
            abyte0 = null;
        }
        return abyte0;
    }

    private String a;
}
