// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PagedViewWithDraggableItems.java

package com.android.launcher2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.android.launcher2:
//            PagedView, Launcher, Workspace

public abstract class PagedViewWithDraggableItems extends PagedView
    implements android.view.View.OnLongClickListener, android.view.View.OnTouchListener
{

    public PagedViewWithDraggableItems(Context context)
    {
        this(context, null);
    }

    public PagedViewWithDraggableItems(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public PagedViewWithDraggableItems(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mLauncher = (Launcher)context;
    }

    protected boolean beginDragging(View v)
    {
        boolean wasDragging = mIsDragging;
        mIsDragging = true;
        return !wasDragging;
    }

    protected void cancelDragging()
    {
        mIsDragging = false;
        mLastTouchedItem = null;
        mIsDragEnabled = false;
    }

    private void handleTouchEvent(MotionEvent ev)
    {
        int action = ev.getAction();
        switch(action & 0xff)
        {
        case 1: // '\001'
        default:
            break;

        case 0: // '\0'
            cancelDragging();
            mIsDragEnabled = true;
            break;

        case 2: // '\002'
            if(mTouchState != 1 && !mIsDragging && mIsDragEnabled)
                determineDraggingStart(ev);
            break;
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent ev)
    {
        handleTouchEvent(ev);
        return super.onInterceptTouchEvent(ev);
    }

    public boolean onTouchEvent(MotionEvent ev)
    {
        handleTouchEvent(ev);
        return super.onTouchEvent(ev);
    }

    public boolean onTouch(View v, MotionEvent event)
    {
        mLastTouchedItem = v;
        mIsDragEnabled = true;
        return false;
    }

    public boolean onLongClick(View v)
    {
        if(!v.isInTouchMode())
            return false;
        if(mNextPage != -1)
            return false;
        if(!mLauncher.isAllAppsCustomizeOpen() || mLauncher.getWorkspace().isSwitchingState())
            return false;
        else
            return beginDragging(v);
    }

    protected void determineScrollingStart(MotionEvent ev)
    {
        if(!mIsDragging)
            super.determineScrollingStart(ev);
    }

    protected void determineDraggingStart(MotionEvent ev)
    {
        int pointerIndex = ev.findPointerIndex(mActivePointerId);
        float x = ev.getX(pointerIndex);
        float y = ev.getY(pointerIndex);
        int xDiff = (int)Math.abs(x - mLastMotionX);
        int yDiff = (int)Math.abs(y - mLastMotionY);
        int touchSlop = mTouchSlop;
        boolean yMoved = yDiff > touchSlop;
        boolean isUpwardMotion = (float)yDiff / (float)xDiff > mDragSlopeThreshold;
        if(isUpwardMotion && yMoved && mLastTouchedItem != null)
        {
            beginDragging(mLastTouchedItem);
            if(mAllowLongPress)
            {
                mAllowLongPress = false;
                View currentPage = getPageAt(mCurrentPage);
                if(currentPage != null)
                    currentPage.cancelLongPress();
            }
        }
    }

    public void setDragSlopeThreshold(float dragSlopeThreshold)
    {
        mDragSlopeThreshold = dragSlopeThreshold;
    }

    protected void onDetachedFromWindow()
    {
        cancelDragging();
        super.onDetachedFromWindow();
    }

    private View mLastTouchedItem;
    private boolean mIsDragging;
    private boolean mIsDragEnabled;
    private float mDragSlopeThreshold;
    private Launcher mLauncher;
}
