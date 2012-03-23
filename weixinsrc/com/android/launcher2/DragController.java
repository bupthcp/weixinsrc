// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   DragController.java

package com.android.launcher2;

import android.content.*;
import android.content.res.Resources;
import android.graphics.*;
import android.os.*;
import android.util.Log;
import android.view.*;
import android.view.inputmethod.InputMethodManager;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.android.launcher2:
//            Launcher, DragLayer, DragView, DropTarget, 
//            DragSource, ShortcutInfo, ApplicationInfo, DragScroller

public class DragController
{
    static interface DragListener
    {

        public abstract void onDragStart(DragSource dragsource, Object obj, int i);

        public abstract void onDragEnd();
    }

    private class ScrollRunnable
        implements Runnable
    {

        public void run()
        {
            if(mDragScroller != null)
            {
                if(mDirection == 0)
                    mDragScroller.scrollLeft();
                else
                    mDragScroller.scrollRight();
                mScrollState = 0;
                mDistanceSinceScroll = 0;
                mDragScroller.onExitScrollArea();
            }
        }

        void setDirection(int direction)
        {
            mDirection = direction;
        }

        private int mDirection;
        final DragController this$0;

        ScrollRunnable()
        {
            this$0 = DragController.this;
            super();
        }
    }


    public DragController(Launcher launcher)
    {
        mRectTemp = new Rect();
        mDropTargets = new ArrayList();
        mListeners = new ArrayList();
        mScrollState = 0;
        mScrollRunnable = new ScrollRunnable();
        mLastTouch = new int[2];
        mDistanceSinceScroll = 0;
        mTmpPoint = new int[2];
        mDragLayerRect = new Rect();
        mLauncher = launcher;
        mHandler = new Handler();
        mScrollZone = launcher.getResources().getDimensionPixelSize(0x7f0a002e);
    }

    public boolean dragging()
    {
        return mDragging;
    }

    public void startDrag(View v, DragSource source, Object dragInfo, int dragAction)
    {
        startDrag(v, source, dragInfo, dragAction, null);
    }

    public void startDrag(View v, DragSource source, Object dragInfo, int dragAction, Rect dragRegion)
    {
        Bitmap b = getViewBitmap(v);
        if(b == null)
            return;
        int loc[] = mCoordinatesTemp;
        mLauncher.getDragLayer().getLocationInDragLayer(v, loc);
        int dragLayerX = loc[0];
        int dragLayerY = loc[1];
        startDrag(b, dragLayerX, dragLayerY, source, dragInfo, dragAction, null, dragRegion);
        b.recycle();
        if(dragAction == DRAG_ACTION_MOVE)
            v.setVisibility(8);
    }

    public void startDrag(View v, Bitmap bmp, DragSource source, Object dragInfo, int dragAction, Rect dragRegion)
    {
        int loc[] = mCoordinatesTemp;
        mLauncher.getDragLayer().getLocationInDragLayer(v, loc);
        int dragLayerX = loc[0];
        int dragLayerY = loc[1];
        startDrag(bmp, dragLayerX, dragLayerY, source, dragInfo, dragAction, null, dragRegion);
        if(dragAction == DRAG_ACTION_MOVE)
            v.setVisibility(8);
    }

    public void startDrag(Bitmap b, int dragLayerX, int dragLayerY, DragSource source, Object dragInfo, int dragAction)
    {
        startDrag(b, dragLayerX, dragLayerY, source, dragInfo, dragAction, null, null);
    }

    public void startDrag(Bitmap b, int dragLayerX, int dragLayerY, DragSource source, Object dragInfo, int dragAction, Point dragOffset, 
            Rect dragRegion)
    {
        if(mInputMethodManager == null)
            mInputMethodManager = (InputMethodManager)mLauncher.getSystemService("input_method");
        mInputMethodManager.hideSoftInputFromWindow(mWindowToken, 0);
        DragListener listener;
        for(Iterator iterator = mListeners.iterator(); iterator.hasNext(); listener.onDragStart(source, dragInfo, dragAction))
            listener = (DragListener)iterator.next();

        int registrationX = mMotionDownX - dragLayerX;
        int registrationY = mMotionDownY - dragLayerY;
        int dragRegionLeft = dragRegion != null ? dragRegion.left : 0;
        int dragRegionTop = dragRegion != null ? dragRegion.top : 0;
        mDragging = true;
        mDragObject = new DropTarget.DragObject();
        mDragObject.dragComplete = false;
        mDragObject.xOffset = mMotionDownX - (dragLayerX + dragRegionLeft);
        mDragObject.yOffset = mMotionDownY - (dragLayerY + dragRegionTop);
        mDragObject.dragSource = source;
        mDragObject.dragInfo = dragInfo;
        mVibrator.vibrate(35L);
        DragView dragView = mDragObject.dragView = new DragView(mLauncher, b, registrationX, registrationY, 0, 0, b.getWidth(), b.getHeight());
        if(dragOffset != null)
            dragView.setDragVisualizeOffset(new Point(dragOffset));
        if(dragRegion != null)
            dragView.setDragRegion(new Rect(dragRegion));
        dragView.show(mMotionDownX, mMotionDownY);
        handleMoveEvent(mMotionDownX, mMotionDownY);
    }

    Bitmap getViewBitmap(View v)
    {
        v.clearFocus();
        v.setPressed(false);
        boolean willNotCache = v.willNotCacheDrawing();
        v.setWillNotCacheDrawing(false);
        int color = v.getDrawingCacheBackgroundColor();
        v.setDrawingCacheBackgroundColor(0);
        float alpha = v.getAlpha();
        v.setAlpha(1.0F);
        if(color != 0)
            v.destroyDrawingCache();
        v.buildDrawingCache();
        Bitmap cacheBitmap = v.getDrawingCache();
        if(cacheBitmap == null)
        {
            Log.e("Launcher.DragController", (new StringBuilder("failed getViewBitmap(")).append(v).append(")").toString(), new RuntimeException());
            return null;
        } else
        {
            Bitmap bitmap = Bitmap.createBitmap(cacheBitmap);
            v.destroyDrawingCache();
            v.setAlpha(alpha);
            v.setWillNotCacheDrawing(willNotCache);
            v.setDrawingCacheBackgroundColor(color);
            return bitmap;
        }
    }

    public boolean dispatchKeyEvent(KeyEvent event)
    {
        return mDragging;
    }

    public boolean isDragging()
    {
        return mDragging;
    }

    public void cancelDrag()
    {
        if(mDragging)
        {
            if(mLastDropTarget != null)
                mLastDropTarget.onDragExit(mDragObject);
            mDragObject.cancelled = true;
            mDragObject.dragComplete = true;
            mDragObject.dragSource.onDropCompleted(null, mDragObject, false);
        }
        endDrag();
    }

    public void onAppsRemoved(ArrayList apps, Context context)
    {
        if(mDragObject != null)
        {
            Object rawDragInfo = mDragObject.dragInfo;
            if(rawDragInfo instanceof ShortcutInfo)
            {
                ShortcutInfo dragInfo = (ShortcutInfo)rawDragInfo;
                for(Iterator iterator = apps.iterator(); iterator.hasNext();)
                {
                    ApplicationInfo info = (ApplicationInfo)iterator.next();
                    if(dragInfo.intent.getComponent().equals(info.intent.getComponent()))
                    {
                        cancelDrag();
                        return;
                    }
                }

            }
        }
    }

    private void endDrag()
    {
        if(mDragging)
        {
            mDragging = false;
            DragListener listener;
            for(Iterator iterator = mListeners.iterator(); iterator.hasNext(); listener.onDragEnd())
                listener = (DragListener)iterator.next();

            if(mDragObject.dragView != null)
            {
                mDragObject.dragView.remove();
                mDragObject.dragView = null;
            }
        }
    }

    private int[] getClampedDragLayerPos(float x, float y)
    {
        mLauncher.getDragLayer().getLocalVisibleRect(mDragLayerRect);
        mTmpPoint[0] = (int)Math.max(mDragLayerRect.left, Math.min(x, mDragLayerRect.right - 1));
        mTmpPoint[1] = (int)Math.max(mDragLayerRect.top, Math.min(y, mDragLayerRect.bottom - 1));
        return mTmpPoint;
    }

    public boolean onInterceptTouchEvent(MotionEvent ev)
    {
        int action = ev.getAction();
        int dragLayerPos[] = getClampedDragLayerPos(ev.getX(), ev.getY());
        int dragLayerX = dragLayerPos[0];
        int dragLayerY = dragLayerPos[1];
        switch(action)
        {
        case 2: // '\002'
        default:
            break;

        case 0: // '\0'
            mMotionDownX = dragLayerX;
            mMotionDownY = dragLayerY;
            mLastDropTarget = null;
            break;

        case 1: // '\001'
            if(mDragging)
                drop(dragLayerX, dragLayerY);
            endDrag();
            break;

        case 3: // '\003'
            cancelDrag();
            break;
        }
        return mDragging;
    }

    void setMoveTarget(View view)
    {
        mMoveTarget = view;
    }

    public boolean dispatchUnhandledMove(View focused, int direction)
    {
        return mMoveTarget != null && mMoveTarget.dispatchUnhandledMove(focused, direction);
    }

    private void handleMoveEvent(int x, int y)
    {
        mDragObject.dragView.move(x, y);
        int coordinates[] = mCoordinatesTemp;
        DropTarget dropTarget = findDropTarget(x, y, coordinates);
        mDragObject.x = coordinates[0];
        mDragObject.y = coordinates[1];
        if(dropTarget != null)
        {
            DropTarget delegate = dropTarget.getDropTargetDelegate(mDragObject);
            if(delegate != null)
                dropTarget = delegate;
            if(mLastDropTarget != dropTarget)
            {
                if(mLastDropTarget != null)
                    mLastDropTarget.onDragExit(mDragObject);
                dropTarget.onDragEnter(mDragObject);
            }
            dropTarget.onDragOver(mDragObject);
        } else
        if(mLastDropTarget != null)
            mLastDropTarget.onDragExit(mDragObject);
        mLastDropTarget = dropTarget;
        boolean inDeleteRegion = false;
        if(mDeleteRegion != null)
            inDeleteRegion = mDeleteRegion.contains(x, y);
        int slop = ViewConfiguration.get(mLauncher).getScaledWindowTouchSlop();
        mDistanceSinceScroll += Math.sqrt(Math.pow(mLastTouch[0] - x, 2D) + Math.pow(mLastTouch[1] - y, 2D));
        mLastTouch[0] = x;
        mLastTouch[1] = y;
        if(!inDeleteRegion && x < mScrollZone)
        {
            if(mScrollState == 0 && mDistanceSinceScroll > slop)
            {
                mScrollState = 1;
                if(mDragScroller.onEnterScrollArea(x, y, 0))
                {
                    mScrollRunnable.setDirection(0);
                    mHandler.postDelayed(mScrollRunnable, 600L);
                }
            }
        } else
        if(!inDeleteRegion && x > mScrollView.getWidth() - mScrollZone)
        {
            if(mScrollState == 0 && mDistanceSinceScroll > slop)
            {
                mScrollState = 1;
                if(mDragScroller.onEnterScrollArea(x, y, 1))
                {
                    mScrollRunnable.setDirection(1);
                    mHandler.postDelayed(mScrollRunnable, 600L);
                }
            }
        } else
        if(mScrollState == 1)
        {
            mScrollState = 0;
            mScrollRunnable.setDirection(1);
            mHandler.removeCallbacks(mScrollRunnable);
            mDragScroller.onExitScrollArea();
        }
    }

    public boolean onTouchEvent(MotionEvent ev)
    {
        if(!mDragging)
            return false;
        int action = ev.getAction();
        int dragLayerPos[] = getClampedDragLayerPos(ev.getX(), ev.getY());
        int dragLayerX = dragLayerPos[0];
        int dragLayerY = dragLayerPos[1];
        switch(action)
        {
        default:
            break;

        case 0: // '\0'
            mMotionDownX = dragLayerX;
            mMotionDownY = dragLayerY;
            if(dragLayerX < mScrollZone || dragLayerX > mScrollView.getWidth() - mScrollZone)
            {
                mScrollState = 1;
                mHandler.postDelayed(mScrollRunnable, 600L);
            } else
            {
                mScrollState = 0;
            }
            break;

        case 2: // '\002'
            handleMoveEvent(dragLayerX, dragLayerY);
            break;

        case 1: // '\001'
            handleMoveEvent(dragLayerX, dragLayerY);
            mHandler.removeCallbacks(mScrollRunnable);
            if(mDragging)
                drop(dragLayerX, dragLayerY);
            endDrag();
            break;

        case 3: // '\003'
            cancelDrag();
            break;
        }
        return true;
    }

    private void drop(float x, float y)
    {
        int coordinates[] = mCoordinatesTemp;
        DropTarget dropTarget = findDropTarget((int)x, (int)y, coordinates);
        mDragObject.x = coordinates[0];
        mDragObject.y = coordinates[1];
        boolean accepted = false;
        if(dropTarget != null)
        {
            mDragObject.dragComplete = true;
            dropTarget.onDragExit(mDragObject);
            if(dropTarget.acceptDrop(mDragObject))
            {
                dropTarget.onDrop(mDragObject);
                accepted = true;
            }
        }
        mDragObject.dragSource.onDropCompleted((View)dropTarget, mDragObject, accepted);
    }

    private DropTarget findDropTarget(int x, int y, int dropCoordinates[])
    {
        Rect r = mRectTemp;
        ArrayList dropTargets = mDropTargets;
        int count = dropTargets.size();
        for(int i = count - 1; i >= 0; i--)
        {
            DropTarget target = (DropTarget)dropTargets.get(i);
            if(target.isDropEnabled())
            {
                target.getHitRect(r);
                target.getLocationInDragLayer(dropCoordinates);
                r.offset(dropCoordinates[0] - target.getLeft(), dropCoordinates[1] - target.getTop());
                mDragObject.x = x;
                mDragObject.y = y;
                if(r.contains(x, y))
                {
                    DropTarget delegate = target.getDropTargetDelegate(mDragObject);
                    if(delegate != null)
                    {
                        target = delegate;
                        target.getLocationInDragLayer(dropCoordinates);
                    }
                    dropCoordinates[0] = x - dropCoordinates[0];
                    dropCoordinates[1] = y - dropCoordinates[1];
                    return target;
                }
            }
        }

        return null;
    }

    public void setDragScoller(DragScroller scroller)
    {
        mDragScroller = scroller;
    }

    public void setWindowToken(IBinder token)
    {
        mWindowToken = token;
    }

    public void addDragListener(DragListener l)
    {
        mListeners.add(l);
    }

    public void removeDragListener(DragListener l)
    {
        mListeners.remove(l);
    }

    public void addDropTarget(DropTarget target)
    {
        mDropTargets.add(target);
    }

    public void removeDropTarget(DropTarget target)
    {
        mDropTargets.remove(target);
    }

    public void setScrollView(View v)
    {
        mScrollView = v;
    }

    void setDeleteRegion(RectF region)
    {
        mDeleteRegion = region;
    }

    DragView getDragView()
    {
        return mDragObject.dragView;
    }

    private static final String TAG = "Launcher.DragController";
    public static int DRAG_ACTION_MOVE = 0;
    public static int DRAG_ACTION_COPY = 1;
    private static final int SCROLL_DELAY = 600;
    private static final int VIBRATE_DURATION = 35;
    private static final boolean PROFILE_DRAWING_DURING_DRAG = false;
    private static final int SCROLL_OUTSIDE_ZONE = 0;
    private static final int SCROLL_WAITING_IN_ZONE = 1;
    static final int SCROLL_NONE = -1;
    static final int SCROLL_LEFT = 0;
    static final int SCROLL_RIGHT = 1;
    private Launcher mLauncher;
    private Handler mHandler;
    private final Vibrator mVibrator = new Vibrator();
    private Rect mRectTemp;
    private final int mCoordinatesTemp[] = new int[2];
    private boolean mDragging;
    private int mMotionDownX;
    private int mMotionDownY;
    private int mScrollZone;
    private DropTarget.DragObject mDragObject;
    private ArrayList mDropTargets;
    private ArrayList mListeners;
    private IBinder mWindowToken;
    private View mScrollView;
    private View mMoveTarget;
    private DragScroller mDragScroller;
    private int mScrollState;
    private ScrollRunnable mScrollRunnable;
    private RectF mDeleteRegion;
    private DropTarget mLastDropTarget;
    private InputMethodManager mInputMethodManager;
    private int mLastTouch[];
    private int mDistanceSinceScroll;
    private int mTmpPoint[];
    private Rect mDragLayerRect;




}
