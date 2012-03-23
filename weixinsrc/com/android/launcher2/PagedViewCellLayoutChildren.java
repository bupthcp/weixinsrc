// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PagedViewCellLayoutChildren.java

package com.android.launcher2;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package com.android.launcher2:
//            PagedViewCellLayout

public class PagedViewCellLayoutChildren extends ViewGroup
{

    public PagedViewCellLayoutChildren(Context context)
    {
        super(context);
    }

    public void cancelLongPress()
    {
        super.cancelLongPress();
        int count = getChildCount();
        for(int i = 0; i < count; i++)
        {
            View child = getChildAt(i);
            child.cancelLongPress();
        }

    }

    public void setGap(int widthGap, int heightGap)
    {
        mWidthGap = widthGap;
        mHeightGap = heightGap;
        requestLayout();
    }

    public void setCellDimensions(int width, int height)
    {
        mCellWidth = width;
        mCellHeight = height;
        requestLayout();
    }

    public void requestChildFocus(View child, View focused)
    {
        super.requestChildFocus(child, focused);
        if(child != null)
        {
            Rect r = new Rect();
            child.getDrawingRect(r);
            requestRectangleOnScreen(r);
        }
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
    {
        int widthSpecMode = android.view.View.MeasureSpec.getMode(widthMeasureSpec);
        int widthSpecSize = android.view.View.MeasureSpec.getSize(widthMeasureSpec);
        int heightSpecMode = android.view.View.MeasureSpec.getMode(heightMeasureSpec);
        int heightSpecSize = android.view.View.MeasureSpec.getSize(heightMeasureSpec);
        if(widthSpecMode == 0 || heightSpecMode == 0)
            throw new RuntimeException("CellLayout cannot have UNSPECIFIED dimensions");
        int count = getChildCount();
        for(int i = 0; i < count; i++)
        {
            View child = getChildAt(i);
            PagedViewCellLayout.LayoutParams lp = (PagedViewCellLayout.LayoutParams)child.getLayoutParams();
            lp.setup(mCellWidth, mCellHeight, mWidthGap, mHeightGap, getPaddingLeft(), getPaddingTop());
            int childWidthMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(lp.width, 0x40000000);
            int childheightMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(lp.height, 0x40000000);
            child.measure(childWidthMeasureSpec, childheightMeasureSpec);
        }

        setMeasuredDimension(widthSpecSize, heightSpecSize);
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b)
    {
        int count = getChildCount();
        int offsetX = 0;
        if(mCenterContent && count > 0)
        {
            int maxRowX = 0;
            int minRowX = 0x7fffffff;
            for(int i = 0; i < count; i++)
            {
                View child = getChildAt(i);
                if(child.getVisibility() != 8)
                {
                    PagedViewCellLayout.LayoutParams lp = (PagedViewCellLayout.LayoutParams)child.getLayoutParams();
                    minRowX = Math.min(minRowX, lp.x);
                    maxRowX = Math.max(maxRowX, lp.x + lp.width);
                }
            }

            int maxRowWidth = maxRowX - minRowX;
            offsetX = (getMeasuredWidth() - maxRowWidth) / 2;
        }
        for(int i = 0; i < count; i++)
        {
            View child = getChildAt(i);
            if(child.getVisibility() != 8)
            {
                PagedViewCellLayout.LayoutParams lp = (PagedViewCellLayout.LayoutParams)child.getLayoutParams();
                int childLeft = offsetX + lp.x;
                int childTop = lp.y;
                child.layout(childLeft, childTop, childLeft + lp.width, childTop + lp.height);
            }
        }

    }

    void destroyHardwareLayer()
    {
        setLayerType(0, null);
    }

    void createHardwareLayer()
    {
        setLayerType(2, null);
    }

    public void enableCenteredContent(boolean enabled)
    {
        mCenterContent = enabled;
    }

    protected void setChildrenDrawingCacheEnabled(boolean enabled)
    {
        int count = getChildCount();
        for(int i = 0; i < count; i++)
        {
            View view = getChildAt(i);
            view.setDrawingCacheEnabled(enabled);
            if(!view.isHardwareAccelerated())
                view.buildDrawingCache(true);
        }

    }

    static final String TAG = "PagedViewCellLayout";
    private boolean mCenterContent;
    private int mCellWidth;
    private int mCellHeight;
    private int mWidthGap;
    private int mHeightGap;
}
