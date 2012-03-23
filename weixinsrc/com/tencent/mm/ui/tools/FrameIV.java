// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.tools;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;

public class FrameIV extends View
{

    public FrameIV(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 0;
        b = 0;
    }

    public FrameIV(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = 0;
        b = 0;
    }

    public void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
    }

    int a;
    int b;
}
