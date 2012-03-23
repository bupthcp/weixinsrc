// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.ui;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.ScrollView;

public class BounceScrollView extends ScrollView
{

    public BounceScrollView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = new Rect();
    }

    protected void onFinishInflate()
    {
        if(getChildCount() > 0)
            a = getChildAt(0);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i;
        int j;
        i = 1;
        j = 0;
        if(a != null) goto _L2; else goto _L1
_L1:
        boolean flag = super.onTouchEvent(motionevent);
_L8:
        return flag;
_L2:
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 52
    //                   0 62
    //                   1 73
    //                   2 183;
           goto _L3 _L4 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_183;
_L3:
        break; /* Loop/switch isn't completed */
_L4:
        break; /* Loop/switch isn't completed */
_L9:
        flag = super.onTouchEvent(motionevent);
        if(true) goto _L8; else goto _L7
_L7:
        b = motionevent.getY();
          goto _L9
_L5:
        if(c.isEmpty())
            i = j;
        if(i != 0)
        {
            TranslateAnimation translateanimation = new TranslateAnimation(0F, 0F, a.getTop(), c.top);
            translateanimation.setDuration(200L);
            a.startAnimation(translateanimation);
            a.layout(c.left, c.top, c.right, c.bottom);
            c.setEmpty();
        }
          goto _L9
        float f = b;
        float f1 = motionevent.getY();
        int k = (int)(f - f1);
        scrollBy(j, k);
        b = f1;
        int l = a.getMeasuredHeight() - getHeight();
        int i1 = getScrollY();
        if(i1 == 0 || i1 == l)
            j = i;
        if(j != 0)
        {
            if(c.isEmpty())
                c.set(a.getLeft(), a.getTop(), a.getRight(), a.getBottom());
            a.layout(a.getLeft(), a.getTop() - k, a.getRight(), a.getBottom() - k);
        }
          goto _L9
    }

    private View a;
    private float b;
    private Rect c;
}
