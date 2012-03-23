// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.media.ExifInterface;
import com.tencent.mm.platformtools.Log;
import java.io.IOException;

class af
{

    af()
    {
    }

    public int a(String s)
    {
        int i;
        i = 0;
        ExifInterface exifinterface;
        int j;
        try
        {
            exifinterface = new ExifInterface(s);
        }
        catch(IOException ioexception)
        {
            Log.a("MicroMsg.ExifHelper20Impl", (new StringBuilder()).append("cannot read exif").append(ioexception).toString());
            exifinterface = null;
        }
        if(exifinterface == null) goto _L2; else goto _L1
_L1:
        j = exifinterface.getAttributeInt("Orientation", -1);
        if(j == -1) goto _L2; else goto _L3
_L3:
        j;
        JVM INSTR tableswitch 3 8: default 72
    //                   3 112
    //                   4 72
    //                   5 72
    //                   6 106
    //                   7 72
    //                   8 119;
           goto _L2 _L4 _L2 _L2 _L5 _L2 _L6
_L2:
        return i;
_L5:
        i = 90;
        continue; /* Loop/switch isn't completed */
_L4:
        i = 180;
        continue; /* Loop/switch isn't completed */
_L6:
        i = 270;
        if(true) goto _L2; else goto _L7
_L7:
    }

    private static final String a = "MicroMsg.ExifHelper20Impl";
}
