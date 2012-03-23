// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.readerapp.ui.gallery;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.Gallery;

// Referenced classes of package com.tencent.mm.plugin.readerapp.ui.gallery:
//            ReaderImageView

public class ReaderGallery extends Gallery
{

    public ReaderGallery(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new GestureDetector(new MySimpleGesture());
        setOnTouchListener(new _cls1());
    }

    public ReaderGallery(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    static ReaderImageView a(ReaderGallery readergallery)
    {
        return readergallery.b;
    }

    static ReaderImageView a(ReaderGallery readergallery, ReaderImageView readerimageview)
    {
        readergallery.b = readerimageview;
        return readerimageview;
    }

    static int b(ReaderGallery readergallery)
    {
        return readergallery.c;
    }

    static int c(ReaderGallery readergallery)
    {
        return readergallery.d;
    }

    public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        return false;
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        c = android.view.View.MeasureSpec.getSize(i);
        d = android.view.View.MeasureSpec.getSize(j);
        (new StringBuilder()).append("ReaderGallery width:").append(c).append(" height:").append(d).toString();
    }

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        View view = getSelectedView();
        if(!(view instanceof ReaderImageView)) goto _L2; else goto _L1
_L1:
        float af[];
        float f2;
        float f3;
        b = (ReaderImageView)view;
        af = new float[9];
        b.getImageMatrix().getValues(af);
        f2 = b.d() * (float)b.b();
        f3 = b.d() * (float)b.c();
        if((int)f2 > c || (int)f3 > d) goto _L4; else goto _L3
_L3:
        super.onScroll(motionevent, motionevent1, f, f1);
_L6:
        return false;
_L4:
        float f4 = af[2];
        float f5 = f2 + f4;
        Rect rect = new Rect();
        b.getGlobalVisibleRect(rect);
        if(f > 0F)
        {
            if(rect.left > 0)
                super.onScroll(motionevent, motionevent1, f, f1);
            else
            if(f5 < (float)c)
                super.onScroll(motionevent, motionevent1, f, f1);
            else
                b.a(-f, -f1);
        } else
        if(f < 0F)
            if(rect.right < c)
                super.onScroll(motionevent, motionevent1, f, f1);
            else
            if(f4 > 0F)
                super.onScroll(motionevent, motionevent1, f, f1);
            else
                b.a(-f, -f1);
        continue; /* Loop/switch isn't completed */
_L2:
        super.onScroll(motionevent, motionevent1, f, f1);
        if(true) goto _L6; else goto _L5
_L5:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        a.onTouchEvent(motionevent);
        (new StringBuilder()).append("onTouchEvent event.getAction()").append(motionevent.getAction()).toString();
        motionevent.getAction();
        JVM INSTR tableswitch 1 1: default 56
    //                   1 62;
           goto _L1 _L2
_L1:
        return super.onTouchEvent(motionevent);
_L2:
        View view = getSelectedView();
        if(view instanceof ReaderImageView)
        {
            b = (ReaderImageView)view;
            float f = b.d() * (float)b.b();
            float f1 = b.d() * (float)b.c();
            if((int)f <= c && (int)f1 <= d)
            {
                (new StringBuilder()).append("onTouchEvent width:").append(f).append("height:").append(f1).toString();
            } else
            {
                float af[] = new float[9];
                b.getImageMatrix().getValues(af);
                float f2 = af[5];
                float f3 = f2 + f1;
                (new StringBuilder()).append("onTouchEvent top:").append(f2).append(" height:").append(f1).append(" bottom:").append(f3).toString();
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private GestureDetector a;
    private ReaderImageView b;
    private int c;
    private int d;

    private class MySimpleGesture extends android.view.GestureDetector.SimpleOnGestureListener
    {

        public boolean onDoubleTap(MotionEvent motionevent)
        {
            View view = a.getSelectedView();
            if(view instanceof ReaderImageView)
            {
                ReaderGallery.a(a, (ReaderImageView)view);
                if(ReaderGallery.a(a).d() > ReaderGallery.a(a).a())
                {
                    ReaderGallery.a(a).b(ReaderGallery.a(a).a(), ReaderGallery.b(a) / 2, ReaderGallery.c(a) / 2);
                    ReaderGallery.a(a).b(1F, ReaderGallery.b(a) / 2, ReaderGallery.c(a) / 2);
                }
            }
            return true;
        }

        private ReaderGallery a;

        MySimpleGesture()
        {
            this((byte)0);
        }

        private MySimpleGesture(byte byte0)
        {
            a = ReaderGallery.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            View view1 = c.getSelectedView();
            if(view1 instanceof ReaderImageView)
            {
                ReaderGallery.a(c, (ReaderImageView)view1);
                (new StringBuilder()).append("ReaderGallery onTouch event.getAction():").append(motionevent.getAction()).toString();
                if(motionevent.getAction() == 0)
                {
                    a = 0F;
                    b = ReaderGallery.a(c).d();
                    (new StringBuilder()).append("originalScale :").append(b).toString();
                }
                if(motionevent.getAction() == 2 && w.a(motionevent) == 2)
                {
                    float f = w.a(motionevent, 0) - w.a(motionevent, 1);
                    float f1 = w.b(motionevent, 0) - w.b(motionevent, 1);
                    float f2 = (float)Math.sqrt(f * f + f1 * f1);
                    if(a == 0F)
                    {
                        a = f2;
                    } else
                    {
                        float f3 = f2 / a;
                        ReaderGallery.a(c).a(f3 * b, f + w.a(motionevent, 1), f1 + w.b(motionevent, 1));
                    }
                }
            }
            return false;
        }

        private float a;
        private float b;
        private ReaderGallery c;

        _cls1()
        {
            c = ReaderGallery.this;
            super();
        }
    }

}
