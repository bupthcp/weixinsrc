// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelqrcode;

import a.b.f;
import a.*;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;

// Referenced classes of package com.tencent.mm.modelqrcode:
//            RGBLuminanceSource

public class DecodeFile
{

    public DecodeFile()
    {
        a = null;
    }

    static DecodeFinCallback a(DecodeFile decodefile)
    {
        return decodefile.a;
    }

    private static String a(Bitmap bitmap)
    {
        String s;
        long l1;
        long l = Util.e();
        s = a(bitmap, 3);
        l1 = Util.f(l);
        Log.a("MicroMsg.DecodeFile", (new StringBuilder()).append("decode once time(ms):").append(l1).toString());
        if(s == null || s.length() <= 0) goto _L2; else goto _L1
_L1:
        String s1 = s;
_L4:
        return s1;
_L2:
        if(l1 == 0L)
            l1 = 1L;
        int i1 = (int)(10000L / l1);
        int j1 = 1;
        do
        {
            if(j1 >= i1)
                break;
            int k1 = 3 + j1 * 10;
            if(k1 > bitmap.getWidth() || k1 > bitmap.getHeight())
                break;
            s1 = a(bitmap, k1);
            if(s1 != null && s1.length() > 0)
                continue; /* Loop/switch isn't completed */
            j1++;
        } while(true);
        s1 = null;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static String a(Bitmap bitmap, int l)
    {
        k k1 = new k(new f(new RGBLuminanceSource(bitmap, l, l)));
        String s1;
        j j1 = new j();
        h h1 = j1.a(k1);
        j1.a();
        s1 = h1.a();
        String s = s1;
_L2:
        return s;
        i i1;
        i1;
        s = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    static String a(String s)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        Bitmap bitmap = BitmapFactory.decodeFile(s, options);
        if(bitmap != null)
            bitmap.recycle();
        int l;
        double d;
        long l1;
        Bitmap bitmap1;
        long l2;
        if(options.outWidth > options.outHeight)
            l = options.outWidth;
        else
            l = options.outHeight;
        d = (-1 + (l + 480)) / 480;
        if(d <= 1D)
            d = 1D;
        l1 = Util.e();
        bitmap1 = Util.a(s, (int)((double)options.outHeight / d), (int)((double)options.outWidth / d), false);
        l2 = Util.f(l1);
        Log.a("MicroMsg.DecodeFile", (new StringBuilder()).append("compress img time(ms):").append(l2).toString());
        return a(bitmap1);
    }

    public final int a(String s, DecodeFinCallback decodefincallback)
    {
        a = decodefincallback;
        DecodeTask decodetask = new DecodeTask();
        String as[] = new String[1];
        as[0] = s;
        decodetask.execute(as);
        return 0;
    }

    private DecodeFinCallback a;

    private class DecodeTask extends AsyncTask
    {

        protected volatile Object doInBackground(Object aobj[])
        {
            String as[] = (String[])aobj;
            String s;
            if(as == null || as.length != 1)
                s = null;
            else
                s = DecodeFile.a(as[0]);
            return s;
        }

        protected volatile void onPostExecute(Object obj)
        {
            String s = (String)obj;
            if(DecodeFile.a(a) != null)
                DecodeFile.a(a).a(s);
        }

        private DecodeFile a;

        DecodeTask()
        {
            this((byte)0);
        }

        private DecodeTask(byte byte0)
        {
            a = DecodeFile.this;
            super();
        }

        private class DecodeFinCallback
        {

            public abstract int a(String s);
        }

    }

}
