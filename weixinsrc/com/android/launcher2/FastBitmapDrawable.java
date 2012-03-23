// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   FastBitmapDrawable.java

package com.android.launcher2;

import android.graphics.*;
import android.graphics.drawable.Drawable;

class FastBitmapDrawable extends Drawable
{

    FastBitmapDrawable(Bitmap b)
    {
        mAlpha = 255;
        mBitmap = b;
        if(b != null)
        {
            mWidth = mBitmap.getWidth();
            mHeight = mBitmap.getHeight();
        } else
        {
            mWidth = mHeight = 0;
        }
    }

    public void draw(Canvas canvas)
    {
        Rect r = getBounds();
        canvas.drawBitmap(mBitmap, r.left, r.top, mPaint);
    }

    public void setColorFilter(ColorFilter cf)
    {
        mPaint.setColorFilter(cf);
    }

    public int getOpacity()
    {
        return -3;
    }

    public void setAlpha(int alpha)
    {
        mAlpha = alpha;
        mPaint.setAlpha(alpha);
    }

    public void setFilterBitmap(boolean filterBitmap)
    {
        mPaint.setFilterBitmap(filterBitmap);
    }

    public int getAlpha()
    {
        return mAlpha;
    }

    public int getIntrinsicWidth()
    {
        return mWidth;
    }

    public int getIntrinsicHeight()
    {
        return mHeight;
    }

    public int getMinimumWidth()
    {
        return mWidth;
    }

    public int getMinimumHeight()
    {
        return mHeight;
    }

    public void setBitmap(Bitmap b)
    {
        mBitmap = b;
        if(b != null)
        {
            mWidth = mBitmap.getWidth();
            mHeight = mBitmap.getHeight();
        } else
        {
            mWidth = mHeight = 0;
        }
    }

    public Bitmap getBitmap()
    {
        return mBitmap;
    }

    private Bitmap mBitmap;
    private int mAlpha;
    private int mWidth;
    private int mHeight;
    private final Paint mPaint = new Paint();
}
