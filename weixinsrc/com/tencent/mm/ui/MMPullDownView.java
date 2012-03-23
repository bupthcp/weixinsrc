// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.*;
import android.view.animation.AccelerateInterpolator;
import android.widget.*;

public class MMPullDownView extends FrameLayout
    implements android.view.GestureDetector.OnGestureListener
{

    public MMPullDownView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public MMPullDownView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        c = 1;
        h = false;
        i = -100F;
        j = false;
        k = false;
        l = false;
        m = true;
        n = false;
        o = false;
        r = new _cls1();
        a = new Scroller(context, new AccelerateInterpolator());
        b = c;
        p = new GestureDetector(this);
    }

    static OnLoadDataListener a(MMPullDownView mmpulldownview)
    {
        return mmpulldownview.f;
    }

    static int b(MMPullDownView mmpulldownview)
    {
        return mmpulldownview.g;
    }

    static boolean c(MMPullDownView mmpulldownview)
    {
        mmpulldownview.m = true;
        return true;
    }

    public final int a()
    {
        return g;
    }

    public final void a(ListView listview)
    {
        d = listview;
    }

    public final void a(OnLoadDataListener onloaddatalistener)
    {
        f = onloaddatalistener;
    }

    public final void a(boolean flag)
    {
        o = flag;
    }

    public void computeScroll()
    {
        if(!a.computeScrollOffset()) goto _L2; else goto _L1
_L1:
        scrollTo(a.getCurrX(), a.getCurrY());
        postInvalidate();
_L4:
        return;
_L2:
        if(l)
        {
            l = false;
            r.sendEmptyMessageDelayed(0, q);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        if(!m)
        {
            flag = true;
        } else
        {
            View view = d.getChildAt(d.getFirstVisiblePosition());
            if(view != null && view.getTop() == 0)
                h = true;
            else
                h = false;
            if(o)
                e.setVisibility(4);
            else
                e.setVisibility(0);
            if(p.onTouchEvent(motionevent))
            {
                motionevent.setAction(3);
                super.dispatchTouchEvent(motionevent);
                flag = true;
            } else
            {
                if(motionevent.getAction() == 1)
                {
                    if(h && getScrollY() - g < 0)
                    {
                        if(o)
                        {
                            a.startScroll(0, getScrollY(), 0, -getScrollY() + g, 200);
                        } else
                        {
                            a.startScroll(0, getScrollY(), 0, -getScrollY(), 200);
                            l = true;
                            m = false;
                        }
                        postInvalidate();
                    }
                    j = false;
                    k = false;
                }
                flag = super.dispatchTouchEvent(motionevent);
            }
        }
        return flag;
    }

    public boolean onDown(MotionEvent motionevent)
    {
        if(!a.isFinished())
            a.abortAnimation();
        i = motionevent.getY();
        j = true;
        return false;
    }

    public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
    {
        return false;
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        int i2 = getChildCount();
        int j2 = 0;
        int k2 = 0;
        for(; j2 < i2; j2++)
        {
            View view = getChildAt(j2);
            int l2 = view.getMeasuredHeight();
            if(view.getVisibility() != 8)
            {
                view.layout(0, k2, view.getMeasuredWidth(), k2 + l2);
                k2 += l2;
            }
        }

        g = getChildAt(0).getHeight();
        e = getChildAt(0);
        if(!n && g != 0)
        {
            n = true;
            scrollTo(0, g);
        }
    }

    public void onLongPress(MotionEvent motionevent)
    {
    }

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
    {
        boolean flag = true;
        if(f2 > 0F)
            k = flag;
        else
            k = false;
        if(j)
            if(j && k && getScrollY() - g < 0 && h)
            {
                int j1 = (int)(0.5D * (double)f2);
                if(j1 == 0)
                    j1 = ((flag) ? 1 : 0);
                if(j1 + getScrollY() > g)
                    j1 = g - getScrollY();
                scrollBy(0, j1);
            } else
            if(j && k || !h)
            {
                flag = false;
            } else
            {
                int i1 = (int)(0.5D * (double)f2);
                if(i1 == 0)
                    i1 = ((flag) ? 1 : 0);
                if(i1 + getScrollY() > g)
                    i1 = g - getScrollY();
                scrollBy(0, i1);
            }
        return flag;
    }

    public void onShowPress(MotionEvent motionevent)
    {
    }

    public boolean onSingleTapUp(MotionEvent motionevent)
    {
        return false;
    }

    private static int q = 400;
    private Scroller a;
    private int b;
    private int c;
    private ListView d;
    private View e;
    private OnLoadDataListener f;
    private int g;
    private boolean h;
    private float i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private GestureDetector p;
    private Handler r;


    private class _cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
            super.handleMessage(message);
            if(MMPullDownView.a(a) != null)
                MMPullDownView.a(a).a();
            a.scrollTo(0, MMPullDownView.b(a));
            MMPullDownView.c(a);
        }

        private MMPullDownView a;

        _cls1()
        {
            a = MMPullDownView.this;
            super();
        }

        private class OnLoadDataListener
        {

            public abstract void a();
        }

    }

}
