// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   DragLayer.java

package com.android.launcher2;

import android.animation.*;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.*;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.android.launcher2:
//            DragController, AppWidgetResizeFrame, Launcher, Workspace, 
//            Folder, CellLayoutChildren, DragView, FolderIcon, 
//            HolographicOutlineHelper, CellLayout, ItemInfo, LauncherAppWidgetHostView

public class DragLayer extends FrameLayout
{
    public static class LayoutParams extends android.widget.FrameLayout.LayoutParams
    {

        public void setWidth(int width)
        {
            this.width = width;
        }

        public int getWidth()
        {
            return width;
        }

        public void setHeight(int height)
        {
            this.height = height;
        }

        public int getHeight()
        {
            return height;
        }

        public void setX(int x)
        {
            this.x = x;
        }

        public int getX()
        {
            return x;
        }

        public void setY(int y)
        {
            this.y = y;
        }

        public int getY()
        {
            return y;
        }

        public int x;
        public int y;
        public boolean customPosition;

        public LayoutParams(int width, int height)
        {
            super(width, height);
            customPosition = false;
        }
    }


    public DragLayer(Context context, AttributeSet attrs)
    {
        super(context, attrs);
        mTmpXY = new int[2];
        mDropAnim = null;
        mFadeOutAnim = null;
        mCubicEaseOutInterpolator = new DecelerateInterpolator(1.5F);
        mDropView = null;
        mDropViewPos = new int[2];
        setMotionEventSplittingEnabled(false);
    }

    public void setup(Launcher launcher, DragController controller)
    {
        mLauncher = launcher;
        mDragController = controller;
    }

    public boolean dispatchKeyEvent(KeyEvent event)
    {
        return mDragController.dispatchKeyEvent(event) || super.dispatchKeyEvent(event);
    }

    private boolean handleTouchDown(MotionEvent ev, boolean intercept)
    {
        Rect hitRect = new Rect();
        int x = (int)ev.getX();
        int y = (int)ev.getY();
        for(Iterator iterator = mResizeFrames.iterator(); iterator.hasNext();)
        {
            AppWidgetResizeFrame child = (AppWidgetResizeFrame)iterator.next();
            child.getHitRect(hitRect);
            if(hitRect.contains(x, y) && child.beginResizeIfPointInRegion(x - child.getLeft(), y - child.getTop()))
            {
                mCurrentResizeFrame = child;
                mXDown = x;
                mYDown = y;
                requestDisallowInterceptTouchEvent(true);
                return true;
            }
        }

        Folder currentFolder = mLauncher.getWorkspace().getOpenFolder();
        if(currentFolder != null && !mLauncher.isFolderClingVisible() && intercept)
        {
            if(currentFolder.isEditingName())
            {
                getDescendantRectRelativeToSelf(currentFolder.getEditTextRegion(), hitRect);
                if(!hitRect.contains(x, y))
                {
                    currentFolder.dismissEditingName();
                    return true;
                }
            }
            getDescendantRectRelativeToSelf(currentFolder, hitRect);
            if(!hitRect.contains(x, y))
            {
                mLauncher.closeFolder();
                return true;
            }
        }
        return false;
    }

    public boolean onInterceptTouchEvent(MotionEvent ev)
    {
        if(ev.getAction() == 0 && handleTouchDown(ev, true))
        {
            return true;
        } else
        {
            clearAllResizeFrames();
            return mDragController.onInterceptTouchEvent(ev);
        }
    }

    public boolean onTouchEvent(MotionEvent ev)
    {
        boolean handled = false;
        int action = ev.getAction();
        int x = (int)ev.getX();
        int y = (int)ev.getY();
        if(ev.getAction() == 0 && ev.getAction() == 0 && handleTouchDown(ev, false))
            return true;
        if(mCurrentResizeFrame != null)
        {
            handled = true;
            switch(action)
            {
            case 2: // '\002'
                mCurrentResizeFrame.visualizeResizeForDelta(x - mXDown, y - mYDown);
                break;

            case 1: // '\001'
            case 3: // '\003'
                mCurrentResizeFrame.commitResizeForDelta(x - mXDown, y - mYDown);
                mCurrentResizeFrame = null;
                break;
            }
        }
        if(handled)
            return true;
        else
            return mDragController.onTouchEvent(ev);
    }

    public float getDescendantRectRelativeToSelf(View descendant, Rect r)
    {
        mTmpXY[0] = 0;
        mTmpXY[1] = 0;
        float scale = getDescendantCoordRelativeToSelf(descendant, mTmpXY);
        r.set(mTmpXY[0], mTmpXY[1], mTmpXY[0] + descendant.getWidth(), mTmpXY[1] + descendant.getHeight());
        return scale;
    }

    public void getLocationInDragLayer(View child, int loc[])
    {
        loc[0] = 0;
        loc[1] = 0;
        getDescendantCoordRelativeToSelf(child, loc);
    }

    public float getDescendantCoordRelativeToSelf(View descendant, int coord[])
    {
        float scale = 1.0F;
        float pt[] = {
            (float)coord[0], (float)coord[1]
        };
        descendant.getMatrix().mapPoints(pt);
        scale *= descendant.getScaleX();
        pt[0] += descendant.getLeft();
        pt[1] += descendant.getTop();
        View view;
        for(android.view.ViewParent viewParent = descendant.getParent(); (viewParent instanceof View) && viewParent != this; viewParent = view.getParent())
        {
            view = (View)viewParent;
            view.getMatrix().mapPoints(pt);
            scale *= view.getScaleX();
            pt[0] += view.getLeft() - view.getScrollX();
            pt[1] += view.getTop() - view.getScrollY();
        }

        coord[0] = Math.round(pt[0]);
        coord[1] = Math.round(pt[1]);
        return scale;
    }

    public void getViewRectRelativeToSelf(View v, Rect r)
    {
        int loc[] = new int[2];
        getLocationInWindow(loc);
        int x = loc[0];
        int y = loc[1];
        v.getLocationInWindow(loc);
        int vX = loc[0];
        int vY = loc[1];
        int left = vX - x;
        int top = vY - y;
        r.set(left, top, left + v.getMeasuredWidth(), top + v.getMeasuredHeight());
    }

    public boolean dispatchUnhandledMove(View focused, int direction)
    {
        return mDragController.dispatchUnhandledMove(focused, direction);
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b)
    {
        super.onLayout(changed, l, t, r, b);
        int count = getChildCount();
        for(int i = 0; i < count; i++)
        {
            View child = getChildAt(i);
            android.widget.FrameLayout.LayoutParams flp = (android.widget.FrameLayout.LayoutParams)child.getLayoutParams();
            if(flp instanceof LayoutParams)
            {
                LayoutParams lp = (LayoutParams)flp;
                if(lp.customPosition)
                    child.layout(lp.x, lp.y, lp.x + lp.width, lp.y + lp.height);
            }
        }

    }

    public void clearAllResizeFrames()
    {
        if(mResizeFrames.size() > 0)
        {
            AppWidgetResizeFrame frame;
            for(Iterator iterator = mResizeFrames.iterator(); iterator.hasNext(); removeView(frame))
                frame = (AppWidgetResizeFrame)iterator.next();

            mResizeFrames.clear();
        }
    }

    public boolean hasResizeFrames()
    {
        return mResizeFrames.size() > 0;
    }

    public boolean isWidgetBeingResized()
    {
        return mCurrentResizeFrame != null;
    }

    public void addResizeFrame(ItemInfo itemInfo, LauncherAppWidgetHostView widget, CellLayout cellLayout)
    {
        AppWidgetResizeFrame resizeFrame = new AppWidgetResizeFrame(getContext(), itemInfo, widget, cellLayout, this);
        LayoutParams lp = new LayoutParams(-1, -1);
        lp.customPosition = true;
        addView(resizeFrame, lp);
        mResizeFrames.add(resizeFrame);
        resizeFrame.snapToWidget(false);
    }

    public void animateViewIntoPosition(DragView dragView, View child)
    {
        animateViewIntoPosition(dragView, child, null);
    }

    public void animateViewIntoPosition(DragView dragView, int pos[], float scale, Runnable onFinishRunnable)
    {
        Rect r = new Rect();
        getViewRectRelativeToSelf(dragView, r);
        int fromX = r.left;
        int fromY = r.top;
        animateViewIntoPosition(((View) (dragView)), fromX, fromY, pos[0], pos[1], scale, onFinishRunnable, true, -1);
    }

    public void animateViewIntoPosition(DragView dragView, View child, Runnable onFinishAnimationRunnable)
    {
        animateViewIntoPosition(dragView, child, -1, onFinishAnimationRunnable);
    }

    public void animateViewIntoPosition(DragView dragView, final View child, int duration, final Runnable onFinishAnimationRunnable)
    {
        ((CellLayoutChildren)child.getParent()).measureChild(child);
        CellLayout.LayoutParams lp = (CellLayout.LayoutParams)child.getLayoutParams();
        Rect r = new Rect();
        getViewRectRelativeToSelf(dragView, r);
        int coord[] = new int[2];
        coord[0] = lp.x;
        coord[1] = lp.y;
        float scale = getDescendantCoordRelativeToSelf((View)child.getParent(), coord);
        int toX = coord[0];
        int toY = coord[1];
        if(child instanceof TextView)
        {
            TextView tv = (TextView)child;
            Drawable d = tv.getCompoundDrawables()[1];
            toY += Math.round(scale * (float)tv.getPaddingTop());
            toY -= (dragView.getHeight() - Math.round(scale * (float)d.getIntrinsicHeight())) / 2;
            toX -= (dragView.getMeasuredWidth() - Math.round(scale * (float)child.getMeasuredWidth())) / 2;
        } else
        if(child instanceof FolderIcon)
        {
            toY -= HolographicOutlineHelper.MAX_OUTER_BLUR_RADIUS / 2;
            toX -= (dragView.getMeasuredWidth() - Math.round(scale * (float)child.getMeasuredWidth())) / 2;
        } else
        {
            toY -= Math.round(scale * (float)(dragView.getHeight() - child.getMeasuredHeight())) / 2;
            toX -= Math.round(scale * (float)(dragView.getMeasuredWidth() - child.getMeasuredWidth())) / 2;
        }
        int fromX = r.left;
        int fromY = r.top;
        child.setVisibility(4);
        child.setAlpha(0.0F);
        Runnable onCompleteRunnable = new Runnable() {

            public void run()
            {
                child.setVisibility(0);
                ObjectAnimator oa = ObjectAnimator.ofFloat(child, "alpha", new float[] {
                    0.0F, 1.0F
                });
                oa.setDuration(60L);
                oa.addListener(new AnimatorListenerAdapter() {

                    public void onAnimationEnd(Animator animation)
                    {
                        if(onFinishAnimationRunnable != null)
                            onFinishAnimationRunnable.run();
                    }

                    final _cls1 this$1;
                    private final Runnable val$onFinishAnimationRunnable;

                    
                    {
                        this$1 = _cls1.this;
                        onFinishAnimationRunnable = runnable;
                        super();
                    }
                }
);
                oa.start();
            }

            final DragLayer this$0;
            private final View val$child;
            private final Runnable val$onFinishAnimationRunnable;

            
            {
                this$0 = DragLayer.this;
                child = view;
                onFinishAnimationRunnable = runnable;
                super();
            }
        }
;
        animateViewIntoPosition(((View) (dragView)), fromX, fromY, toX, toY, scale, onCompleteRunnable, true, duration);
    }

    private void animateViewIntoPosition(View view, int fromX, int fromY, int toX, int toY, float finalScale, Runnable onCompleteRunnable, 
            boolean fadeOut, int duration)
    {
        Rect from = new Rect(fromX, fromY, fromX + view.getMeasuredWidth(), fromY + view.getMeasuredHeight());
        Rect to = new Rect(toX, toY, toX + view.getMeasuredWidth(), toY + view.getMeasuredHeight());
        animateView(view, from, to, 1.0F, finalScale, duration, null, null, onCompleteRunnable, true);
    }

    public void animateView(final View view, final Rect from, final Rect to, final float finalAlpha, final float finalScale, int duration, final Interpolator motionInterpolator, 
            final Interpolator alphaInterpolator, final Runnable onCompleteRunnable, final boolean fadeOut)
    {
        float dist = (float)Math.sqrt(Math.pow(to.left - from.left, 2D) + Math.pow(to.top - from.top, 2D));
        Resources res = getResources();
        float maxDist = res.getInteger(0x7f09001e);
        if(duration < 0)
        {
            duration = res.getInteger(0x7f09001c);
            if(dist < maxDist)
                duration = (int)((float)duration * mCubicEaseOutInterpolator.getInterpolation(dist / maxDist));
        }
        if(mDropAnim != null)
            mDropAnim.cancel();
        if(mFadeOutAnim != null)
            mFadeOutAnim.cancel();
        mDropView = view;
        final float initialAlpha = view.getAlpha();
        mDropAnim = new ValueAnimator();
        if(alphaInterpolator == null || motionInterpolator == null)
            mDropAnim.setInterpolator(mCubicEaseOutInterpolator);
        mDropAnim.setDuration(duration);
        mDropAnim.setFloatValues(new float[] {
            0.0F, 1.0F
        });
        mDropAnim.removeAllUpdateListeners();
        mDropAnim.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

            public void onAnimationUpdate(ValueAnimator animation)
            {
                float percent = ((Float)animation.getAnimatedValue()).floatValue();
                int width = view.getMeasuredWidth();
                int height = view.getMeasuredHeight();
                invalidate(mDropViewPos[0], mDropViewPos[1], mDropViewPos[0] + width, mDropViewPos[1] + height);
                float alphaPercent = alphaInterpolator != null ? alphaInterpolator.getInterpolation(percent) : percent;
                float motionPercent = motionInterpolator != null ? motionInterpolator.getInterpolation(percent) : percent;
                mDropViewPos[0] = from.left + Math.round((float)(to.left - from.left) * motionPercent);
                mDropViewPos[1] = from.top + Math.round((float)(to.top - from.top) * motionPercent);
                mDropViewScale = percent * finalScale + (1.0F - percent);
                mDropViewAlpha = alphaPercent * finalAlpha + (1.0F - alphaPercent) * initialAlpha;
                invalidate(mDropViewPos[0], mDropViewPos[1], mDropViewPos[0] + width, mDropViewPos[1] + height);
            }

            final DragLayer this$0;
            private final View val$view;
            private final Interpolator val$alphaInterpolator;
            private final Interpolator val$motionInterpolator;
            private final Rect val$from;
            private final Rect val$to;
            private final float val$finalScale;
            private final float val$finalAlpha;
            private final float val$initialAlpha;

            
            {
                this$0 = DragLayer.this;
                view = view1;
                alphaInterpolator = interpolator;
                motionInterpolator = interpolator1;
                from = rect;
                to = rect1;
                finalScale = f;
                finalAlpha = f1;
                initialAlpha = f2;
                super();
            }
        }
);
        mDropAnim.addListener(new AnimatorListenerAdapter() {

            public void onAnimationEnd(Animator animation)
            {
                if(onCompleteRunnable != null)
                    onCompleteRunnable.run();
                if(fadeOut)
                    fadeOutDragView();
                else
                    mDropView = null;
            }

            final DragLayer this$0;
            private final Runnable val$onCompleteRunnable;
            private final boolean val$fadeOut;

            
            {
                this$0 = DragLayer.this;
                onCompleteRunnable = runnable;
                fadeOut = flag;
                super();
            }
        }
);
        mDropAnim.start();
    }

    private void fadeOutDragView()
    {
        mFadeOutAnim = new ValueAnimator();
        mFadeOutAnim.setDuration(150L);
        mFadeOutAnim.setFloatValues(new float[] {
            0.0F, 1.0F
        });
        mFadeOutAnim.removeAllUpdateListeners();
        mFadeOutAnim.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

            public void onAnimationUpdate(ValueAnimator animation)
            {
                float percent = ((Float)animation.getAnimatedValue()).floatValue();
                mDropViewAlpha = 1.0F - percent;
                int width = mDropView.getMeasuredWidth();
                int height = mDropView.getMeasuredHeight();
                invalidate(mDropViewPos[0], mDropViewPos[1], mDropViewPos[0] + width, mDropViewPos[1] + height);
            }

            final DragLayer this$0;

            
            {
                this$0 = DragLayer.this;
                super();
            }
        }
);
        mFadeOutAnim.addListener(new AnimatorListenerAdapter() {

            public void onAnimationEnd(Animator animation)
            {
                mDropView = null;
            }

            final DragLayer this$0;

            
            {
                this$0 = DragLayer.this;
                super();
            }
        }
);
        mFadeOutAnim.start();
    }

    protected void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        if(mDropView != null)
        {
            canvas.save(1);
            int xPos = mDropViewPos[0] - mDropView.getScrollX();
            int yPos = mDropViewPos[1] - mDropView.getScrollY();
            int width = mDropView.getMeasuredWidth();
            int height = mDropView.getMeasuredHeight();
            canvas.translate(xPos, yPos);
            canvas.translate(((1.0F - mDropViewScale) * (float)width) / 2.0F, ((1.0F - mDropViewScale) * (float)height) / 2.0F);
            canvas.scale(mDropViewScale, mDropViewScale);
            mDropView.setAlpha(mDropViewAlpha);
            mDropView.draw(canvas);
            canvas.restore();
        }
    }

    private DragController mDragController;
    private int mTmpXY[];
    private int mXDown;
    private int mYDown;
    private Launcher mLauncher;
    private final ArrayList mResizeFrames = new ArrayList();
    private AppWidgetResizeFrame mCurrentResizeFrame;
    private ValueAnimator mDropAnim;
    private ValueAnimator mFadeOutAnim;
    private TimeInterpolator mCubicEaseOutInterpolator;
    private View mDropView;
    private int mDropViewPos[];
    private float mDropViewScale;
    private float mDropViewAlpha;






}
