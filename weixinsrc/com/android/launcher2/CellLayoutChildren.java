// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CellLayoutChildren.java

package com.android.launcher2;

import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

// Referenced classes of package com.android.launcher2:
//            CellLayout

public class CellLayoutChildren extends ViewGroup
{

    public CellLayoutChildren(Context context)
    {
        super(context);
        mWallpaperManager = WallpaperManager.getInstance(context);
    }

    public void enableHardwareLayers()
    {
        setLayerType(2, null);
    }

    public void setCellDimensions(int cellWidth, int cellHeight, int widthGap, int heightGap)
    {
        mCellWidth = cellWidth;
        mCellHeight = cellHeight;
        mWidthGap = widthGap;
        mHeightGap = heightGap;
    }

    public View getChildAt(int x, int y)
    {
        int count = getChildCount();
        for(int i = 0; i < count; i++)
        {
            View child = getChildAt(i);
            CellLayout.LayoutParams lp = (CellLayout.LayoutParams)child.getLayoutParams();
            if(lp.cellX <= x && x < lp.cellX + lp.cellHSpan && lp.cellY <= y && y < lp.cellY + lp.cellVSpan)
                return child;
        }

        return null;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
    {
        int count = getChildCount();
        for(int i = 0; i < count; i++)
        {
            View child = getChildAt(i);
            measureChild(child);
        }

        int widthSpecSize = android.view.View.MeasureSpec.getSize(widthMeasureSpec);
        int heightSpecSize = android.view.View.MeasureSpec.getSize(heightMeasureSpec);
        setMeasuredDimension(widthSpecSize, heightSpecSize);
    }

    public void setupLp(CellLayout.LayoutParams lp)
    {
        lp.setup(mCellWidth, mCellHeight, mWidthGap, mHeightGap);
    }

    public void measureChild(View child)
    {
        int cellWidth = mCellWidth;
        int cellHeight = mCellHeight;
        CellLayout.LayoutParams lp = (CellLayout.LayoutParams)child.getLayoutParams();
        lp.setup(cellWidth, cellHeight, mWidthGap, mHeightGap);
        int childWidthMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(lp.width, 0x40000000);
        int childheightMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(lp.height, 0x40000000);
        child.measure(childWidthMeasureSpec, childheightMeasureSpec);
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b)
    {
        int count = getChildCount();
        for(int i = 0; i < count; i++)
        {
            View child = getChildAt(i);
            if(child.getVisibility() != 8)
            {
                CellLayout.LayoutParams lp = (CellLayout.LayoutParams)child.getLayoutParams();
                int childLeft = lp.x;
                int childTop = lp.y;
                child.layout(childLeft, childTop, childLeft + lp.width, childTop + lp.height);
                if(lp.dropped)
                {
                    lp.dropped = false;
                    int cellXY[] = mTmpCellXY;
                    getLocationOnScreen(cellXY);
                    mWallpaperManager.sendWallpaperCommand(getWindowToken(), "android.home.drop", cellXY[0] + childLeft + lp.width / 2, cellXY[1] + childTop + lp.height / 2, 0, null);
                }
            }
        }

    }

    public boolean shouldDelayChildPressedState()
    {
        return false;
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

    protected void setChildrenDrawingCacheEnabled(boolean enabled)
    {
        int count = getChildCount();
        for(int i = 0; i < count; i++)
        {
            View view = getChildAt(i);
            view.setDrawingCacheEnabled(enabled);
            if(!view.isHardwareAccelerated() && enabled)
                view.buildDrawingCache(true);
        }

    }

    protected void setChildrenDrawnWithCacheEnabled(boolean enabled)
    {
        super.setChildrenDrawnWithCacheEnabled(enabled);
    }

    static final String TAG = "CellLayoutChildren";
    private final int mTmpCellXY[] = new int[2];
    private final WallpaperManager mWallpaperManager;
    private int mCellWidth;
    private int mCellHeight;
    private int mWidthGap;
    private int mHeightGap;
}
