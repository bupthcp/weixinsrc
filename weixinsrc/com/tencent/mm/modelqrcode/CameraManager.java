// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelqrcode;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;
import android.view.SurfaceHolder;
import b.a.ad;
import b.a.u;
import com.tencent.mm.platformtools.Log;
import java.io.IOException;
import java.util.regex.Pattern;

public final class CameraManager
{

    public CameraManager(Point point)
    {
        f = null;
        g = null;
        g = point;
    }

    private static int a(CharSequence charsequence, int i)
    {
        String as[];
        int j;
        int k;
        int l;
        as = e.split(charsequence);
        j = as.length;
        k = 0;
        l = 0;
_L3:
        if(k >= j) goto _L2; else goto _L1
_L1:
        String s = as[k].trim();
        double d1 = Double.parseDouble(s);
        int i1 = (int)(10D * d1);
        NumberFormatException numberformatexception;
        if(Math.abs((double)i - d1) >= (double)Math.abs(i - l))
            i1 = l;
        k++;
        l = i1;
        if(true) goto _L3; else goto _L2
_L2:
        i = l;
_L5:
        return i;
        numberformatexception;
        if(true) goto _L5; else goto _L4
_L4:
    }

    private static Point a(CharSequence charsequence, Point point)
    {
        String as[];
        int i;
        int j;
        boolean flag;
        boolean flag1;
        int k;
        as = e.split(charsequence);
        i = as.length;
        j = 0;
        flag = false;
        flag1 = false;
        k = 0x7fffffff;
_L2:
        String s;
        int j1;
        int k1;
        int l1;
        if(j >= i)
            break MISSING_BLOCK_LABEL_262;
        s = as[j].trim();
        j1 = s.indexOf('x');
        if(j1 >= 0)
            break; /* Loop/switch isn't completed */
        Log.b("CameraManager", (new StringBuilder()).append("Bad preview-size: ").append(s).toString());
        k1 = ((flag) ? 1 : 0);
        l1 = ((flag1) ? 1 : 0);
_L5:
        j++;
        flag1 = l1;
        flag = k1;
        if(true) goto _L2; else goto _L1
_L1:
        int i1;
        int i2;
        i1 = Integer.parseInt(s.substring(0, j1));
        i2 = Integer.parseInt(s.substring(j1 + 1));
        int l;
        int j2;
        l = i2;
        j2 = Math.abs(i1 - point.x) + Math.abs(l - point.y);
        if(j2 != 0) goto _L4; else goto _L3
_L3:
        Point point1;
        NumberFormatException numberformatexception;
        if(i1 > 0 && l > 0)
            point1 = new Point(i1, l);
        else
            point1 = null;
        return point1;
        numberformatexception;
        Log.b("CameraManager", (new StringBuilder()).append("Bad preview-size: ").append(s).toString());
        k1 = ((flag) ? 1 : 0);
        l1 = ((flag1) ? 1 : 0);
          goto _L5
_L4:
        if(j2 < k)
        {
            k = j2;
            l1 = i1;
            k1 = l;
        } else
        {
            k1 = ((flag) ? 1 : 0);
            l1 = ((flag1) ? 1 : 0);
        }
          goto _L5
        l = ((flag) ? 1 : 0);
        i1 = ((flag1) ? 1 : 0);
          goto _L3
    }

    public final void a()
    {
        if(a != null)
        {
            if(b)
            {
                a.stopPreview();
                b = false;
            }
            a.release();
            a = null;
        }
    }

    public final void a(Handler handler)
    {
        if(a != null && b)
        {
            c.a(handler);
            a.setOneShotPreviewCallback(c);
        }
    }

    public final void a(SurfaceHolder surfaceholder)
    {
        int i = 27;
        boolean flag = false;
        if(b)
        {
            a.stopPreview();
            b = flag;
        }
        if(a != null)
            a();
        u u1 = ad.a(flag);
        if(u1.b % 180 != 0)
            flag = true;
        h = flag;
        a = u1.a;
        if(a == null)
            throw new IOException();
        a.setPreviewDisplay(surfaceholder);
        android.hardware.Camera.Parameters parameters = a.getParameters();
        Point point = g;
        String s = parameters.get("preview-size-values");
        String s1;
        Point point1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        NumberFormatException numberformatexception;
        int j;
        int k;
        NumberFormatException numberformatexception1;
        int l;
        NumberFormatException numberformatexception2;
        double d1;
        int i1;
        if(s == null)
            s1 = parameters.get("preview-size-value");
        else
            s1 = s;
        point1 = null;
        if(s1 != null)
        {
            Log.d("CameraManager", (new StringBuilder()).append("preview-size-values parameter: ").append(s1).toString());
            point1 = a(((CharSequence) (s1)), point);
        }
        if(point1 == null)
            point1 = new Point((point.x >> 3) << 3, (point.y >> 3) << 3);
        f = point1;
        Log.d("CameraManager", (new StringBuilder()).append("getCameraResolution: ").append(g).append(" camera:").append(f).toString());
        parameters.setPreviewSize(f.x, f.y);
        s2 = parameters.get("zoom-supported");
        if(s2 != null && !Boolean.parseBoolean(s2)) goto _L2; else goto _L1
_L1:
label0:
        {
            s3 = parameters.get("max-zoom");
            if(s3 == null)
                break label0;
            try
            {
                d1 = Double.parseDouble(s3);
            }
            // Misplaced declaration of an exception variable
            catch(NumberFormatException numberformatexception2)
            {
                Log.b("CameraManager", (new StringBuilder()).append("Bad max-zoom: ").append(s3).toString());
                break label0;
            }
            i1 = (int)(d1 * 10D);
            if(i <= i1)
                i1 = i;
            i = i1;
        }
        s4 = parameters.get("taking-picture-zoom-max");
        if(s4 == null)
            break MISSING_BLOCK_LABEL_359;
        l = Integer.parseInt(s4);
        if(i > l)
            i = l;
_L3:
        s5 = parameters.get("mot-zoom-values");
        if(s5 != null)
            i = a(((CharSequence) (s5)), i);
        s6 = parameters.get("mot-zoom-step");
        if(s6 == null)
            break MISSING_BLOCK_LABEL_426;
        j = (int)(10D * Double.parseDouble(s6.trim()));
        if(j <= 1)
            break MISSING_BLOCK_LABEL_426;
        k = i % j;
        i -= k;
_L4:
        if(s3 != null || s5 != null)
            parameters.set("zoom", String.valueOf((double)i / 10D));
        if(s4 != null)
            parameters.set("taking-picture-zoom", i);
_L2:
        parameters.setPreviewFormat(17);
        a.setParameters(parameters);
        a.startPreview();
        b = true;
        return;
        numberformatexception1;
        Log.b("CameraManager", (new StringBuilder()).append("Bad taking-picture-zoom-max: ").append(s4).toString());
          goto _L3
        numberformatexception;
          goto _L4
    }

    public final void b(Handler handler)
    {
        if(a == null || !b)
            break MISSING_BLOCK_LABEL_33;
        d.a(handler);
        a.autoFocus(d);
_L2:
        return;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final boolean b()
    {
        return h;
    }

    public final Point c()
    {
        return f;
    }

    private static final Pattern e = Pattern.compile(",");
    private Camera a;
    private boolean b;
    private final PreviewCallback c = new PreviewCallback();
    private final AutoFocusCallback d = new AutoFocusCallback();
    private Point f;
    private Point g;
    private boolean h;


    private class PreviewCallback
        implements android.hardware.Camera.PreviewCallback
    {

        final void a(Handler handler)
        {
            a = handler;
            b = 0x12345003;
        }

        public final void onPreviewFrame(byte abyte0[], Camera camera)
        {
            if(a != null)
            {
                a.obtainMessage(b, abyte0).sendToTarget();
                a = null;
            } else
            {
                Log.d("CameraManager", "Got preview callback, but no handler for it");
            }
        }

        private Handler a;
        private int b;

        PreviewCallback()
        {
        }
    }


    private class AutoFocusCallback
        implements android.hardware.Camera.AutoFocusCallback
    {

        final void a(Handler handler)
        {
            a = handler;
            b = 0x12345001;
        }

        public final void onAutoFocus(boolean flag, Camera camera)
        {
            if(a != null)
            {
                Message message = a.obtainMessage(b, Boolean.valueOf(flag));
                a.sendMessageDelayed(message, 1000L);
                a = null;
            } else
            {
                Log.d("CameraManager", "Got auto-focus callback, but no handler for it");
            }
        }

        private Handler a;
        private int b;

        AutoFocusCallback()
        {
        }
    }

}
