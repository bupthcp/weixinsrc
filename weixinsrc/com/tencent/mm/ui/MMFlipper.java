// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.*;
import android.widget.Scroller;
import com.tencent.mm.platformtools.Log;

public class MMFlipper extends ViewGroup
{

    public MMFlipper(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
        a(context);
    }

    public MMFlipper(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        d = 0;
        e = 0;
        i = false;
        a(context);
    }

    private void a(Context context)
    {
        l = new WorkspaceOvershootInterpolator();
        a = new Scroller(context, l);
        c = d;
        f = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    }

    private void b(int i1)
    {
        int j1 = Math.max(0, Math.min(i1, -1 + getChildCount()));
        if(getScrollX() != j1 * getWidth())
        {
            int k1 = j1 * getWidth() - getScrollX();
            a.startScroll(getScrollX(), 0, k1, 0, 2 * Math.abs(k1));
            if(c != j1)
                i = true;
            c = j1;
            invalidate();
        }
    }

    public final void a()
    {
        c = d;
    }

    public final void a(int i1)
    {
        int j1 = Math.max(0, Math.min(i1, -1 + getChildCount()));
        i = false;
        if(!a.isFinished())
            a.abortAnimation();
        if(j != null)
            j.a(j1);
        c = j1;
        scrollTo(j1 * getWidth(), 0);
    }

    public final void a(OnMeasureListener onmeasurelistener)
    {
        k = onmeasurelistener;
    }

    public final void a(OnScreenChangedListener onscreenchangedlistener)
    {
        j = onscreenchangedlistener;
    }

    public final int b()
    {
        return c;
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
        if(i)
        {
            i = false;
            if(j != null)
                j.a(c);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        int i1;
        flag = true;
        i1 = motionevent.getAction();
        if(i1 != 2 || e == 0) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        float f1;
        float f2;
        f1 = motionevent.getX();
        f2 = motionevent.getY();
        i1;
        JVM INSTR tableswitch 0 3: default 64
    //                   0 102
    //                   1 142
    //                   2 76
    //                   3 142;
           goto _L3 _L4 _L5 _L6 _L5
_L5:
        break MISSING_BLOCK_LABEL_142;
_L3:
        break; /* Loop/switch isn't completed */
_L6:
        break; /* Loop/switch isn't completed */
_L8:
        if(e == 0)
            flag = false;
        if(true) goto _L1; else goto _L7
_L7:
        if((int)Math.abs(g - f1) > f)
            e = ((flag) ? 1 : 0);
          goto _L8
_L4:
        g = f1;
        h = f2;
        int j1;
        if(a.isFinished())
            j1 = 0;
        else
            j1 = ((flag) ? 1 : 0);
        e = j1;
          goto _L8
        e = 0;
          goto _L8
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        Log.e("MicroMsg.MMFlipper", (new StringBuilder()).append("flipper onLayout changed:").append(flag).append(" Left,Top,Right,Bottom:").append(i1).append(",").append(j1).append(",").append(k1).append(",").append(l1).toString());
        int i2 = getChildCount();
        int j2 = 0;
        int k2 = 0;
        for(; j2 < i2; j2++)
        {
            View view = getChildAt(j2);
            if(view.getVisibility() != 8)
            {
                int l2 = view.getMeasuredWidth();
                Log.e("MicroMsg.MMFlipper", (new StringBuilder()).append("flipper onLayout childWidth:").append(l2).toString());
                view.layout(k2, 0, k2 + l2, view.getMeasuredHeight());
                k2 += l2;
            }
        }

    }

    protected void onMeasure(int i1, int j1)
    {
        super.onMeasure(i1, j1);
        int k1 = android.view.View.MeasureSpec.getSize(i1);
        if(k != null)
            k.a(k1, android.view.View.MeasureSpec.getSize(j1));
        int l1 = getChildCount();
        for(int i2 = 0; i2 < l1; i2++)
            getChildAt(i2).measure(i1, j1);

        Log.e("MicroMsg.MMFlipper", (new StringBuilder()).append("flipper onMeasure:").append(k1).append(",").append(android.view.View.MeasureSpec.getSize(j1)).append(" childCount:").append(l1).toString());
        scrollTo(k1 * c, 0);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i1;
        float f1;
        if(b == null)
            b = VelocityTracker.obtain();
        b.addMovement(motionevent);
        i1 = motionevent.getAction();
        f1 = motionevent.getX();
        motionevent.getY();
        i1;
        JVM INSTR tableswitch 0 3: default 68
    //                   0 70
    //                   1 119
    //                   2 95
    //                   3 254;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return true;
_L2:
        if(!a.isFinished())
            a.abortAnimation();
        g = f1;
        continue; /* Loop/switch isn't completed */
_L4:
        int l1 = (int)(g - f1);
        g = f1;
        scrollBy(l1, 0);
        continue; /* Loop/switch isn't completed */
_L3:
        VelocityTracker velocitytracker = b;
        velocitytracker.computeCurrentVelocity(1000);
        int j1 = (int)velocitytracker.getXVelocity();
        if(j1 > 600 && c > 0)
            b(-1 + c);
        else
        if(j1 < -600 && c < -1 + getChildCount())
        {
            b(1 + c);
        } else
        {
            int k1 = getWidth();
            b((getScrollX() + k1 / 2) / k1);
        }
        if(b != null)
        {
            b.recycle();
            b = null;
        }
        e = 0;
        continue; /* Loop/switch isn't completed */
_L5:
        e = 0;
        if(true) goto _L1; else goto _L6
_L6:
    }

    private Scroller a;
    private VelocityTracker b;
    private int c;
    private int d;
    private int e;
    private int f;
    private float g;
    private float h;
    private boolean i;
    private OnScreenChangedListener j;
    private OnMeasureListener k;
    private WorkspaceOvershootInterpolator l;

    private class WorkspaceOvershootInterpolator
        implements Interpolator
    {

        public float getInterpolation(float f1)
        {
            float f2 = f1 - 1F;
            return 1F + f2 * f2 * (f2 * (1F + a) + a);
        }

        private float a;

        public WorkspaceOvershootInterpolator()
        {
            a = 1.3F;
        }
    }


    private class OnScreenChangedListener
    {

        public abstract void a(int i1);
    }


    private class OnMeasureListener
    {

        public abstract void a(int i1, int j1);
    }

}
