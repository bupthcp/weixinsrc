// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   DropTarget.java

package com.android.launcher2;

import android.graphics.Rect;

// Referenced classes of package com.android.launcher2:
//            DragView, DragSource

public interface DropTarget
{
    public static class DragObject
    {

        public int x;
        public int y;
        public int xOffset;
        public int yOffset;
        public boolean dragComplete;
        public DragView dragView;
        public Object dragInfo;
        public DragSource dragSource;
        public Runnable postAnimationRunnable;
        public boolean cancelled;

        public DragObject()
        {
            x = -1;
            y = -1;
            xOffset = -1;
            yOffset = -1;
            dragComplete = false;
            dragView = null;
            dragInfo = null;
            dragSource = null;
            postAnimationRunnable = null;
            cancelled = false;
        }
    }


    public abstract boolean isDropEnabled();

    public abstract void onDrop(DragObject dragobject);

    public abstract void onDragEnter(DragObject dragobject);

    public abstract void onDragOver(DragObject dragobject);

    public abstract void onDragExit(DragObject dragobject);

    public abstract DropTarget getDropTargetDelegate(DragObject dragobject);

    public abstract boolean acceptDrop(DragObject dragobject);

    public abstract void getHitRect(Rect rect);

    public abstract void getLocationInDragLayer(int ai[]);

    public abstract int getLeft();

    public abstract int getTop();
}
