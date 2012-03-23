// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   HolographicImageView.java

package com.android.launcher2;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;

// Referenced classes of package com.android.launcher2:
//            HolographicViewHelper

public class HolographicImageView extends ImageView
{

    public HolographicImageView(Context context)
    {
        this(context, null);
    }

    public HolographicImageView(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public HolographicImageView(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mHolographicHelper = new HolographicViewHelper(context);
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        mHolographicHelper.generatePressedFocusedStates(this);
    }

    private final HolographicViewHelper mHolographicHelper;
}
