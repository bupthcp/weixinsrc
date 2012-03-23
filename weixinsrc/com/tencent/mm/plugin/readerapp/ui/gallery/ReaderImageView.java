// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.readerapp.ui.gallery;

import android.content.Context;
import android.graphics.*;
import android.os.Handler;
import android.view.KeyEvent;
import android.widget.ImageView;
import b.a.w;
import com.tencent.mm.platformtools.Log;

public class ReaderImageView extends ImageView
{

    public ReaderImageView(Context context, int i1, int j1)
    {
        super(context);
        c = new Matrix();
        d = new Matrix();
        g = null;
        h = -1;
        i = -1;
        j = 3F;
        q = true;
        a = new Handler();
        b = 0F;
        m = j1;
        l = i1;
        e();
    }

    private void e()
    {
        Log.d("dktest", (new StringBuilder()).append("init screenWidth:").append(o).append(" screenHeight :").append(p).toString());
        setScaleType(android.widget.ImageView.ScaleType.MATRIX);
    }

    private Matrix f()
    {
        e.set(c);
        e.postConcat(d);
        return e;
    }

    public final float a()
    {
        return n;
    }

    public final void a(float f1, float f2)
    {
        d.postTranslate(f1, f2);
        setImageMatrix(f());
    }

    protected final void a(float f1, float f2, float f3)
    {
        float f4 = 0F;
        float f5;
        if(f1 > j)
            f1 = j;
        else
        if(f1 < k)
            f1 = k;
        f5 = f1 / d();
        d.postScale(f5, f5, f2, f3);
        setImageMatrix(f());
        if(g != null)
        {
            Matrix matrix = f();
            RectF rectf = new RectF(f4, f4, g.getWidth(), g.getHeight());
            matrix.mapRect(rectf);
            float f6 = rectf.height();
            float f7 = rectf.width();
            float f8;
            Matrix matrix1;
            float f9;
            float f10;
            if(f6 < (float)p)
                f8 = ((float)p - f6) / 2F - rectf.top;
            else
            if(rectf.top > f4)
                f8 = -rectf.top;
            else
            if(rectf.bottom < (float)p)
                f8 = (float)p - rectf.bottom;
            else
                f8 = f4;
            if(f7 < (float)o)
                f4 = ((float)o - f7) / 2F - rectf.left;
            else
            if(rectf.left > f4)
                f4 = -rectf.left;
            else
            if(rectf.right < (float)o)
                f4 = (float)o - rectf.right;
            Log.d("dktest", (new StringBuilder()).append("deltaX: ").append(f4).append(" deltaY:").append(f8).toString());
            a(f4, f8);
            matrix1 = f();
            setImageMatrix(matrix1);
            matrix1.mapRect(rectf);
            f9 = rectf.height();
            f10 = rectf.width();
            Log.d("dktest", (new StringBuilder()).append("center  w:").append(f10).append(" h:").append(f9).toString());
        }
    }

    public final int b()
    {
        return l;
    }

    protected final void b(float f1, float f2, float f3)
    {
        float f4 = (f1 - d()) / 200F;
        float f5 = d();
        long l1 = System.currentTimeMillis();
        a.post(new _cls1(l1, f5, f4, f2, f3));
    }

    public final int c()
    {
        return m;
    }

    protected final float d()
    {
        d.getValues(f);
        k = (float)o / 2F / (float)l;
        return f[0];
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        boolean flag;
        if(i1 == 4 && keyevent.getRepeatCount() == 0)
        {
            w.a(keyevent);
            flag = true;
        } else
        {
            flag = super.onKeyDown(i1, keyevent);
        }
        return flag;
    }

    public boolean onKeyUp(int i1, KeyEvent keyevent)
    {
        boolean flag;
        if(i1 == 4 && w.b(keyevent) && !w.c(keyevent) && d() > 1F)
        {
            a(1F, (float)o / 2F, (float)p / 2F);
            flag = true;
        } else
        {
            flag = super.onKeyUp(i1, keyevent);
        }
        return flag;
    }

    protected void onMeasure(int i1, int j1)
    {
        super.onMeasure(i1, j1);
        o = android.view.View.MeasureSpec.getSize(i1);
        p = android.view.View.MeasureSpec.getSize(j1);
        Log.e("MicroMsg.ReaderImageView", (new StringBuilder()).append("ReaderImageView width:").append(o).append(" height:").append(p).toString());
        if(!q)
        {
            q = true;
            e();
            n = Math.min((float)o / (float)l, (float)p / (float)m);
            a(n, (float)o / 2F, (float)p / 2F);
        }
    }

    public void setImageBitmap(Bitmap bitmap)
    {
        super.setImageBitmap(bitmap);
        g = bitmap;
        q = false;
    }

    protected Handler a;
    float b;
    private Matrix c;
    private Matrix d;
    private final Matrix e = new Matrix();
    private final float f[] = new float[9];
    private Bitmap g;
    private int h;
    private int i;
    private float j;
    private float k;
    private int l;
    private int m;
    private float n;
    private int o;
    private int p;
    private boolean q;

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            long l1 = System.currentTimeMillis();
            float f1 = Math.min(a, l1 - b);
            float f2 = c + f1 * d;
            g.a(f2, e, f);
            if(f1 < a)
                g.a.post(this);
        }

        private float a;
        private long b;
        private float c;
        private float d;
        private float e;
        private float f;
        private ReaderImageView g;

        _cls1(long l1, float f1, float f2, float f3, float f4)
        {
            g = ReaderImageView.this;
            a = 200F;
            b = l1;
            c = f1;
            d = f2;
            e = f3;
            f = f4;
            super();
        }
    }

}
