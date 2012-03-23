// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ButtonDropTarget.java

package com.android.launcher2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.TextView;

// Referenced classes of package com.android.launcher2:
//            DropTarget, DragView, Launcher, DragLayer, 
//            DragController, SearchDropTargetBar, DragSource

public class ButtonDropTarget extends TextView
    implements DropTarget, DragController.DragListener
{

    public ButtonDropTarget(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public ButtonDropTarget(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mHoverPaint = new Paint();
        Resources r = getResources();
        mTransitionDuration = r.getInteger(0x7f090017);
        mBottomDragPadding = r.getDimensionPixelSize(0x7f0a0028);
    }

    void setLauncher(Launcher launcher)
    {
        mLauncher = launcher;
    }

    public boolean acceptDrop(DropTarget.DragObject d)
    {
        return false;
    }

    public void setSearchDropTargetBar(SearchDropTargetBar searchDropTargetBar)
    {
        mSearchDropTargetBar = searchDropTargetBar;
    }

    public void onDrop(DropTarget.DragObject dragobject)
    {
    }

    public void onDragEnter(DropTarget.DragObject d)
    {
        d.dragView.setPaint(mHoverPaint);
    }

    public void onDragOver(DropTarget.DragObject dragobject)
    {
    }

    public void onDragExit(DropTarget.DragObject d)
    {
        d.dragView.setPaint(null);
    }

    public void onDragStart(DragSource dragsource, Object obj, int i)
    {
    }

    public boolean isDropEnabled()
    {
        return mActive;
    }

    public void onDragEnd()
    {
    }

    public void getHitRect(Rect outRect)
    {
        super.getHitRect(outRect);
        outRect.bottom += mBottomDragPadding;
    }

    public DropTarget getDropTargetDelegate(DropTarget.DragObject d)
    {
        return null;
    }

    public void getLocationInDragLayer(int loc[])
    {
        mLauncher.getDragLayer().getLocationInDragLayer(this, loc);
    }

    protected final int mTransitionDuration;
    protected Launcher mLauncher;
    private int mBottomDragPadding;
    protected TextView mText;
    protected SearchDropTargetBar mSearchDropTargetBar;
    protected boolean mActive;
    protected final Paint mHoverPaint;
}
