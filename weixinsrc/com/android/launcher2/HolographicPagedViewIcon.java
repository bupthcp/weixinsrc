// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   HolographicPagedViewIcon.java

package com.android.launcher2;

import android.content.Context;
import android.graphics.*;
import android.widget.TextView;

// Referenced classes of package com.android.launcher2:
//            PagedViewIcon

public class HolographicPagedViewIcon extends TextView
{

    public HolographicPagedViewIcon(Context context, PagedViewIcon original)
    {
        super(context);
        mOriginalIcon = original;
        mPaint = new Paint();
    }

    protected void onDraw(Canvas canvas)
    {
        Bitmap overlay = mOriginalIcon.getHolographicOutline();
        if(overlay != null)
        {
            int offset = getScrollX();
            int compoundPaddingLeft = getCompoundPaddingLeft();
            int compoundPaddingRight = getCompoundPaddingRight();
            int hspace = getWidth() - compoundPaddingRight - compoundPaddingLeft;
            canvas.drawBitmap(overlay, offset + compoundPaddingLeft + (hspace - overlay.getWidth()) / 2, mOriginalIcon.getPaddingTop(), mPaint);
        }
    }

    PagedViewIcon mOriginalIcon;
    Paint mPaint;
}
