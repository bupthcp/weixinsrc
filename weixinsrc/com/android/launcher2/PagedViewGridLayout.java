// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PagedViewGridLayout.java

package com.android.launcher2;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.GridLayout;

// Referenced classes of package com.android.launcher2:
//            Page

public class PagedViewGridLayout extends GridLayout
    implements Page
{
    public static class LayoutParams extends android.widget.FrameLayout.LayoutParams
    {

        public LayoutParams(int width, int height)
        {
            super(width, height);
        }
    }


    public PagedViewGridLayout(Context context, int cellCountX, int cellCountY)
    {
        super(context, null, 0);
        mCellCountX = cellCountX;
        mCellCountY = cellCountY;
    }

    int getCellCountX()
    {
        return mCellCountX;
    }

    int getCellCountY()
    {
        return mCellCountY;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
    {
        int widthSpecSize = Math.min(getSuggestedMinimumWidth(), android.view.View.MeasureSpec.getSize(widthMeasureSpec));
        int widthSpecMode = 0x40000000;
        super.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(widthSpecSize, widthSpecMode), heightMeasureSpec);
    }

    public boolean onTouchEvent(MotionEvent event)
    {
        boolean result = super.onTouchEvent(event);
        int count = getPageChildCount();
        if(count > 0)
        {
            View child = getChildOnPageAt(count - 1);
            int bottom = child.getBottom();
            result = result || event.getY() < (float)bottom;
        }
        return result;
    }

    void destroyHardwareLayer()
    {
        setLayerType(0, null);
    }

    void createHardwareLayer()
    {
        setLayerType(2, null);
    }

    public void removeAllViewsOnPage()
    {
        removeAllViews();
        destroyHardwareLayer();
    }

    public void removeViewOnPageAt(int index)
    {
        removeViewAt(index);
    }

    public int getPageChildCount()
    {
        return getChildCount();
    }

    public View getChildOnPageAt(int i)
    {
        return getChildAt(i);
    }

    public int indexOfChildOnPage(View v)
    {
        return indexOfChild(v);
    }

    static final String TAG = "PagedViewGridLayout";
    private int mCellCountX;
    private int mCellCountY;
}
