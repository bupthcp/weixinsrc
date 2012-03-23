// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   HolographicViewHelper.java

package com.android.launcher2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.StateListDrawable;
import android.view.View;

// Referenced classes of package com.android.launcher2:
//            HolographicOutlineHelper, FastBitmapDrawable

public class HolographicViewHelper
{

    public HolographicViewHelper(Context context)
    {
        Resources res = context.getResources();
        mHighlightColor = res.getColor(0x1060012);
    }

    void generatePressedFocusedStates(View v)
    {
        if(!mStatesUpdated)
        {
            mStatesUpdated = true;
            Bitmap outline = createGlowingOutline(v, mTempCanvas, mHighlightColor, mHighlightColor);
            FastBitmapDrawable d = new FastBitmapDrawable(outline);
            StateListDrawable states = new StateListDrawable();
            states.addState(new int[] {
                0x10100a7
            }, d);
            states.addState(new int[] {
                0x101009c
            }, d);
            v.setBackgroundDrawable(states);
        }
    }

    private Bitmap createGlowingOutline(View v, Canvas canvas, int outlineColor, int glowColor)
    {
        int padding = HolographicOutlineHelper.MAX_OUTER_BLUR_RADIUS;
        Bitmap b = Bitmap.createBitmap(v.getWidth() + padding, v.getHeight() + padding, android.graphics.Bitmap.Config.ARGB_8888);
        canvas.setBitmap(b);
        canvas.save();
        v.draw(canvas);
        canvas.restore();
        mOutlineHelper.applyOuterBlur(b, canvas, outlineColor);
        canvas.setBitmap(null);
        return b;
    }

    private final HolographicOutlineHelper mOutlineHelper = new HolographicOutlineHelper();
    private final Canvas mTempCanvas = new Canvas();
    private boolean mStatesUpdated;
    private int mHighlightColor;
}
