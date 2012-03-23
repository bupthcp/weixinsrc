// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvideo;

import android.graphics.Bitmap;
import android.hardware.Camera;
import android.view.SurfaceHolder;
import b.a.ad;
import b.a.u;
import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelvideo:
//            RecordParams

public class YuvReocrder
    implements android.hardware.Camera.PreviewCallback
{

    public YuvReocrder()
    {
        a = null;
        b = false;
        c = false;
        d = 0;
        e = 0L;
        f = null;
    }

    public static int a(String s, int j, int k)
    {
        int l;
        int ai[];
        byte abyte0[];
        l = j * k;
        ai = new int[l];
        abyte0 = new byte[l * 4];
        FileInputStream fileinputstream = new FileInputStream(s);
        fileinputstream.read(abyte0);
        fileinputstream.close();
        for(int j1 = 0; j1 < l; j1++)
        {
            int k1 = j1 * 4;
            ai[j1] = 0xff & abyte0[k1] | 0xff00 & abyte0[k1 + 1] << 8 | 0xff0000 & abyte0[k1 + 2] << 16 | 0xff000000 & abyte0[k1 + 3] << 24;
        }

        Bitmap bitmap = Bitmap.createBitmap(ai, 0, j, j, k, android.graphics.Bitmap.Config.ARGB_4444);
        FileOutputStream fileoutputstream = new FileOutputStream(s);
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 30, fileoutputstream);
        fileoutputstream.close();
        int i1 = 0;
_L2:
        return i1;
        Exception exception;
        exception;
        Log.a("MicroMsg.YuvReocrder", (new StringBuilder()).append("getThumbFromYuv Failed :").append(exception.getMessage()).toString());
        i1 = -1;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final int a(long l)
    {
label0:
        {
            c = false;
            e = Util.d() - e;
            int j;
            RecordParams recordparams;
            int k;
            try
            {
                f.close();
            }
            catch(Exception exception)
            {
                j = -1;
                if(false)
                    ;
                else
                    break label0;
            }
            g.n = d;
            g.o = (int)(l / 1000L);
            recordparams = g;
            if(g.o > 0)
                k = g.o;
            else
                k = 1;
            recordparams.o = k;
            g.a = (int)((float)(1000 * d) / (float)l);
            Log.d("MicroMsg.YuvReocrder", (new StringBuilder()).append(" fix frame rate:").append(g.a).append(" Cnt:").append(d).append(" t:").append(e).append(" time from ui:").append(l).toString());
            a();
            j = d;
        }
        return j;
    }

    public final int a(SurfaceHolder surfaceholder, RecordParams recordparams, boolean flag)
    {
        int j;
        if(surfaceholder == null)
            j = 0 - CodeInfo.b();
        else
        if(recordparams == null)
        {
            j = 0 - CodeInfo.b();
        } else
        {
label0:
            {
                g = recordparams;
                if(!flag && a != null)
                    break label0;
                a();
                if(flag)
                    h = 1 & (-1 ^ h);
                i = ad.a(h);
                a = i.a;
                g.d = i.b;
                if(a != null)
                    break label0;
                Log.a("MicroMsg.YuvReocrder", "start camera failed");
                j = 0 - CodeInfo.b();
            }
        }
_L1:
        return j;
label1:
        {
            if(!b)
                break label1;
            j = 0;
        }
          goto _L1
        android.hardware.Camera.Parameters parameters;
        int k;
        List list;
        parameters = a.getParameters();
        k = 0x7fffffff;
        list = ad.a(parameters);
        if(list == null) goto _L3; else goto _L2
_L2:
        int l = 0;
_L8:
        if(l >= list.size()) goto _L5; else goto _L4
_L4:
        int k1;
        int i1 = ((android.hardware.Camera.Size)list.get(l)).height;
        int j1 = ((android.hardware.Camera.Size)list.get(l)).width;
        Log.d("MicroMsg.YuvReocrder", (new StringBuilder()).append("supp w:").append(j1).append(" h:").append(i1).toString());
        k1 = i1 * j1;
        if(((recordparams.d == 0 || recordparams.d == 180) && i1 >= recordparams.e && j1 >= recordparams.f || (recordparams.d == 90 || recordparams.d == 270) && j1 >= recordparams.e && i1 >= recordparams.f) && k1 < k)
        {
            recordparams.c = j1;
            recordparams.b = i1;
            break MISSING_BLOCK_LABEL_539;
        }
          goto _L6
_L5:
        parameters.setPreviewSize(recordparams.c, recordparams.b);
_L7:
        Log.d("MicroMsg.YuvReocrder", (new StringBuilder()).append(" rotate:").append(recordparams.d).append(" w:").append(parameters.getPreviewSize().width).append(" h:").append(parameters.getPreviewSize().height).toString());
        parameters.setPreviewFormat(17);
        a.setParameters(parameters);
        a.setPreviewCallback(this);
        a.setPreviewDisplay(surfaceholder);
        a.startPreview();
        b = true;
        j = 0;
          goto _L1
_L3:
        android.hardware.Camera.Size size = parameters.getPreviewSize();
        recordparams.b = size.height;
        recordparams.c = size.width;
          goto _L7
        Exception exception;
        exception;
        Log.a("MicroMsg.YuvReocrder", (new StringBuilder()).append("Start preview failed :").append(exception.getMessage()).toString());
        j = 0 - CodeInfo.b();
          goto _L1
_L6:
        k1 = k;
        l++;
        k = k1;
          goto _L8
    }

    public final void a()
    {
        if(a != null)
        {
            Log.d("MicroMsg.YuvReocrder", "release camera");
            a.setPreviewCallback(null);
            a.stopPreview();
            a.release();
            a = null;
            b = false;
        }
    }

    public final boolean b()
    {
        boolean flag = true;
        f = new FileOutputStream(g.i);
        d = 0;
        e = 0L;
        c = flag;
_L2:
        return flag;
        Exception exception;
        exception;
        flag = false;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public void onPreviewFrame(byte abyte0[], Camera camera)
    {
        if(c)
            try
            {
                if(e == 0L)
                    e = Util.d();
                f.write(abyte0);
                Log.d("MicroMsg.YuvReocrder", (new StringBuilder()).append("width:").append(camera.getParameters().getPreviewSize().width).append(" height:").append(camera.getParameters().getPreviewSize().height).append(" data:").append(abyte0.length).toString());
                d = 1 + d;
            }
            catch(Exception exception) { }
    }

    private static int h = 0;
    private Camera a;
    private boolean b;
    private boolean c;
    private int d;
    private long e;
    private FileOutputStream f;
    private RecordParams g;
    private u i;

}
