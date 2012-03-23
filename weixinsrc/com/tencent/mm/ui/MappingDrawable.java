// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.graphics.*;
import android.graphics.drawable.Drawable;

public class MappingDrawable extends Drawable
{

    MappingDrawable(Bitmap bitmap, Rect rect, int i)
    {
        this(bitmap, rect, i, (byte)0);
    }

    private MappingDrawable(Bitmap bitmap, Rect rect, int i, byte byte0)
    {
        a = bitmap;
        b = rect;
        setFilterBitmap(true);
        setBounds(0, 0, rect.width(), rect.height());
        e = i;
        c = b.width();
        d = b.height();
    }

    public void draw(Canvas canvas)
    {
        canvas.drawBitmap(a, b, getBounds(), f);
    }

    public int getIntrinsicHeight()
    {
        return d;
    }

    public int getIntrinsicWidth()
    {
        return c;
    }

    public int getOpacity()
    {
        return 0;
    }

    public void setAlpha(int i)
    {
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
    }

    private static final Paint f;
    private Bitmap a;
    private Rect b;
    private int c;
    private int d;
    private final int e;

    static 
    {
        Paint paint = new Paint(2);
        f = paint;
        paint.setDither(true);
        f.setAntiAlias(true);
        f.setFilterBitmap(true);
    }
}
