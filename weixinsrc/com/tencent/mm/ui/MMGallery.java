// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.Gallery;

public class MMGallery extends Gallery
{

    public MMGallery(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        setStaticTransformationsEnabled(true);
    }

    public MMGallery(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        setStaticTransformationsEnabled(true);
    }

    public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        return true;
    }

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        boolean flag;
        if(motionevent.getX() - motionevent1.getX() > 10F)
            flag = super.onScroll(motionevent, motionevent1, f, f1);
        else
        if(motionevent.getX() - motionevent1.getX() < 10F)
            flag = super.onScroll(motionevent, motionevent1, f, f1);
        else
            flag = true;
        return flag;
    }
}
