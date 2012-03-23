// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PagedViewCellLayout.java

package com.android.launcher2;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.*;

// Referenced classes of package com.android.launcher2:
//            Page, LauncherModel, PagedViewCellLayoutChildren, PagedViewIcon, 
//            LauncherApplication

public class PagedViewCellLayout extends ViewGroup
    implements Page
{
    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams
    {

        public void setup(int cellWidth, int cellHeight, int widthGap, int heightGap, int hStartPadding, int vStartPadding)
        {
            int myCellHSpan = cellHSpan;
            int myCellVSpan = cellVSpan;
            int myCellX = cellX;
            int myCellY = cellY;
            width = (myCellHSpan * cellWidth + (myCellHSpan - 1) * widthGap) - leftMargin - rightMargin;
            height = (myCellVSpan * cellHeight + (myCellVSpan - 1) * heightGap) - topMargin - bottomMargin;
            if(LauncherApplication.isScreenLarge())
            {
                x = hStartPadding + myCellX * (cellWidth + widthGap) + leftMargin;
                y = vStartPadding + myCellY * (cellHeight + heightGap) + topMargin;
            } else
            {
                x = myCellX * (cellWidth + widthGap) + leftMargin;
                y = myCellY * (cellHeight + heightGap) + topMargin;
            }
        }

        public Object getTag()
        {
            return mTag;
        }

        public void setTag(Object tag)
        {
            mTag = tag;
        }

        public String toString()
        {
            return (new StringBuilder("(")).append(cellX).append(", ").append(cellY).append(", ").append(cellHSpan).append(", ").append(cellVSpan).append(")").toString();
        }

        public int cellX;
        public int cellY;
        public int cellHSpan;
        public int cellVSpan;
        public boolean isDragging;
        private Object mTag;
        int x;
        int y;

        public LayoutParams()
        {
            super(-1, -1);
            cellHSpan = 1;
            cellVSpan = 1;
        }

        public LayoutParams(Context c, AttributeSet attrs)
        {
            super(c, attrs);
            cellHSpan = 1;
            cellVSpan = 1;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams source)
        {
            super(source);
            cellHSpan = 1;
            cellVSpan = 1;
        }

        public LayoutParams(LayoutParams source)
        {
            super(source);
            cellX = source.cellX;
            cellY = source.cellY;
            cellHSpan = source.cellHSpan;
            cellVSpan = source.cellVSpan;
        }

        public LayoutParams(int cellX, int cellY, int cellHSpan, int cellVSpan)
        {
            super(-1, -1);
            this.cellX = cellX;
            this.cellY = cellY;
            this.cellHSpan = cellHSpan;
            this.cellVSpan = cellVSpan;
        }
    }


    public PagedViewCellLayout(Context context)
    {
        this(context, null);
    }

    public PagedViewCellLayout(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public PagedViewCellLayout(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        setAlwaysDrawnWithCacheEnabled(false);
        Resources resources = context.getResources();
        mOriginalCellWidth = mCellWidth = resources.getDimensionPixelSize(0x7f0a001c);
        mOriginalCellHeight = mCellHeight = resources.getDimensionPixelSize(0x7f0a001d);
        mCellCountX = LauncherModel.getCellCountX();
        mCellCountY = LauncherModel.getCellCountY();
        mOriginalHeightGap = mOriginalHeightGap = mWidthGap = mHeightGap = -1;
        mMaxGap = resources.getDimensionPixelSize(0x7f0a001e);
        mChildren = new PagedViewCellLayoutChildren(context);
        mChildren.setCellDimensions(mCellWidth, mCellHeight);
        mChildren.setGap(mWidthGap, mHeightGap);
        addView(mChildren);
    }

    public int getCellWidth()
    {
        return mCellWidth;
    }

    public int getCellHeight()
    {
        return mCellHeight;
    }

    public void setAlpha(float alpha)
    {
        mChildren.setAlpha(alpha);
    }

    void destroyHardwareLayers()
    {
        mChildren.destroyHardwareLayer();
    }

    void createHardwareLayers()
    {
        mChildren.createHardwareLayer();
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

    public boolean addViewToCellLayout(View child, int index, int childId, LayoutParams params)
    {
        LayoutParams lp = params;
        if(lp.cellX >= 0 && lp.cellX <= mCellCountX - 1 && lp.cellY >= 0 && lp.cellY <= mCellCountY - 1)
        {
            if(lp.cellHSpan < 0)
                lp.cellHSpan = mCellCountX;
            if(lp.cellVSpan < 0)
                lp.cellVSpan = mCellCountY;
            child.setId(childId);
            mChildren.addView(child, index, lp);
            if(child instanceof PagedViewIcon)
            {
                PagedViewIcon pagedViewIcon = (PagedViewIcon)child;
                pagedViewIcon.disableCache();
            }
            return true;
        } else
        {
            return false;
        }
    }

    public void removeAllViewsOnPage()
    {
        mChildren.removeAllViews();
        destroyHardwareLayers();
    }

    public void removeViewOnPageAt(int index)
    {
        mChildren.removeViewAt(index);
    }

    public int getPageChildCount()
    {
        return mChildren.getChildCount();
    }

    public PagedViewCellLayoutChildren getChildrenLayout()
    {
        return mChildren;
    }

    public View getChildOnPageAt(int i)
    {
        return mChildren.getChildAt(i);
    }

    public int indexOfChildOnPage(View v)
    {
        return mChildren.indexOfChild(v);
    }

    public int getCellCountX()
    {
        return mCellCountX;
    }

    public int getCellCountY()
    {
        return mCellCountY;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
    {
        int widthSpecMode = android.view.View.MeasureSpec.getMode(widthMeasureSpec);
        int widthSpecSize = android.view.View.MeasureSpec.getSize(widthMeasureSpec);
        int heightSpecMode = android.view.View.MeasureSpec.getMode(heightMeasureSpec);
        int heightSpecSize = android.view.View.MeasureSpec.getSize(heightMeasureSpec);
        if(widthSpecMode == 0 || heightSpecMode == 0)
            throw new RuntimeException("CellLayout cannot have UNSPECIFIED dimensions");
        int numWidthGaps = mCellCountX - 1;
        int numHeightGaps = mCellCountY - 1;
        if(mOriginalWidthGap < 0 || mOriginalHeightGap < 0)
        {
            int hSpace = widthSpecSize - mPaddingLeft - mPaddingRight;
            int vSpace = heightSpecSize - mPaddingTop - mPaddingBottom;
            int hFreeSpace = hSpace - mCellCountX * mOriginalCellWidth;
            int vFreeSpace = vSpace - mCellCountY * mOriginalCellHeight;
            mWidthGap = Math.min(mMaxGap, numWidthGaps <= 0 ? 0 : hFreeSpace / numWidthGaps);
            mHeightGap = Math.min(mMaxGap, numHeightGaps <= 0 ? 0 : vFreeSpace / numHeightGaps);
            mChildren.setGap(mWidthGap, mHeightGap);
        } else
        {
            mWidthGap = mOriginalWidthGap;
            mHeightGap = mOriginalHeightGap;
        }
        int newWidth = widthSpecSize;
        int newHeight = heightSpecSize;
        if(widthSpecMode == 0x80000000)
        {
            newWidth = mPaddingLeft + mPaddingRight + mCellCountX * mCellWidth + (mCellCountX - 1) * mWidthGap;
            newHeight = mPaddingTop + mPaddingBottom + mCellCountY * mCellHeight + (mCellCountY - 1) * mHeightGap;
            setMeasuredDimension(newWidth, newHeight);
        }
        int count = getChildCount();
        for(int i = 0; i < count; i++)
        {
            View child = getChildAt(i);
            int childWidthMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(newWidth - mPaddingLeft - mPaddingRight, 0x40000000);
            int childheightMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(newHeight - mPaddingTop - mPaddingBottom, 0x40000000);
            child.measure(childWidthMeasureSpec, childheightMeasureSpec);
        }

        setMeasuredDimension(newWidth, newHeight);
    }

    int getContentWidth()
    {
        return getWidthBeforeFirstLayout() + mPaddingLeft + mPaddingRight;
    }

    int getContentHeight()
    {
        if(mCellCountY > 0)
            return mCellCountY * mCellHeight + (mCellCountY - 1) * Math.max(0, mHeightGap);
        else
            return 0;
    }

    int getWidthBeforeFirstLayout()
    {
        if(mCellCountX > 0)
            return mCellCountX * mCellWidth + (mCellCountX - 1) * Math.max(0, mWidthGap);
        else
            return 0;
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b)
    {
        int count = getChildCount();
        for(int i = 0; i < count; i++)
        {
            View child = getChildAt(i);
            child.layout(mPaddingLeft, mPaddingTop, r - l - mPaddingRight, b - t - mPaddingBottom);
        }

    }

    public boolean onTouchEvent(MotionEvent event)
    {
        boolean result = super.onTouchEvent(event);
        int count = getPageChildCount();
        if(count > 0)
        {
            View child = getChildOnPageAt(count - 1);
            int bottom = child.getBottom();
            int numRows = (int)Math.ceil((float)getPageChildCount() / (float)getCellCountX());
            if(numRows < getCellCountY())
                bottom += mCellHeight / 2;
            result = result || event.getY() < (float)bottom;
        }
        return result;
    }

    public void enableCenteredContent(boolean enabled)
    {
        mChildren.enableCenteredContent(enabled);
    }

    protected void setChildrenDrawingCacheEnabled(boolean enabled)
    {
        mChildren.setChildrenDrawingCacheEnabled(enabled);
    }

    public void setCellCount(int xCount, int yCount)
    {
        mCellCountX = xCount;
        mCellCountY = yCount;
        requestLayout();
    }

    public void setGap(int widthGap, int heightGap)
    {
        mWidthGap = widthGap;
        mHeightGap = heightGap;
        mChildren.setGap(widthGap, heightGap);
    }

    public int[] getCellCountForDimensions(int width, int height)
    {
        int smallerSize = Math.min(mCellWidth, mCellHeight);
        int spanX = (width + smallerSize) / smallerSize;
        int spanY = (height + smallerSize) / smallerSize;
        return (new int[] {
            spanX, spanY
        });
    }

    void onDragChild(View child)
    {
        LayoutParams lp = (LayoutParams)child.getLayoutParams();
        lp.isDragging = true;
    }

    public int estimateCellHSpan(int width)
    {
        int availWidth = width - (2 * mPaddingLeft + 2 * mPaddingRight);
        int n = Math.max(1, (availWidth + mWidthGap) / (mCellWidth + mWidthGap));
        return n;
    }

    public int estimateCellVSpan(int height)
    {
        int availHeight = height - (mPaddingTop + mPaddingBottom);
        int n = Math.max(1, (availHeight + mHeightGap) / (mCellHeight + mHeightGap));
        return n;
    }

    public int[] estimateCellPosition(int x, int y)
    {
        return (new int[] {
            mPaddingLeft + x * mCellWidth + x * mWidthGap + mCellWidth / 2, mPaddingTop + y * mCellHeight + y * mHeightGap + mCellHeight / 2
        });
    }

    public void calculateCellCount(int width, int height, int maxCellCountX, int maxCellCountY)
    {
        mCellCountX = Math.min(maxCellCountX, estimateCellHSpan(width));
        mCellCountY = Math.min(maxCellCountY, estimateCellVSpan(height));
        requestLayout();
    }

    public int estimateCellWidth(int hSpan)
    {
        return hSpan * mCellWidth;
    }

    public int estimateCellHeight(int vSpan)
    {
        return vSpan * mCellHeight;
    }

    public android.view.ViewGroup.LayoutParams generateLayoutParams(AttributeSet attrs)
    {
        return new LayoutParams(getContext(), attrs);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams p)
    {
        return p instanceof LayoutParams;
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams p)
    {
        return new LayoutParams(p);
    }

    static final String TAG = "PagedViewCellLayout";
    private int mCellCountX;
    private int mCellCountY;
    private int mOriginalCellWidth;
    private int mOriginalCellHeight;
    private int mCellWidth;
    private int mCellHeight;
    private int mOriginalWidthGap;
    private int mOriginalHeightGap;
    private int mWidthGap;
    private int mHeightGap;
    private int mMaxGap;
    protected PagedViewCellLayoutChildren mChildren;
}
