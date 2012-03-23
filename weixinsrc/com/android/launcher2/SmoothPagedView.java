// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SmoothPagedView.java

package com.android.launcher2;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Interpolator;
import android.widget.Scroller;

// Referenced classes of package com.android.launcher2:
//            PagedView

public abstract class SmoothPagedView extends PagedView
{
    private static class WorkspaceOvershootInterpolator
        implements Interpolator
    {

        public void setDistance(int distance)
        {
            mTension = distance <= 0 ? 1.3F : 1.3F / (float)distance;
        }

        public void disableSettle()
        {
            mTension = 0.0F;
        }

        public float getInterpolation(float t)
        {
            t--;
            return t * t * ((mTension + 1.0F) * t + mTension) + 1.0F;
        }

        private static final float DEFAULT_TENSION = 1.3F;
        private float mTension;

        public WorkspaceOvershootInterpolator()
        {
            mTension = 1.3F;
        }
    }


    public SmoothPagedView(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public SmoothPagedView(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mUsePagingTouchSlop = false;
        mDeferScrollUpdate = mScrollMode != 1;
    }

    protected int getScrollMode()
    {
        return 1;
    }

    protected void init()
    {
        super.init();
        mScrollMode = getScrollMode();
        if(mScrollMode == 0)
        {
            mBaseLineFlingVelocity = 2500F;
            mFlingVelocityInfluence = 0.4F;
            mScrollInterpolator = new WorkspaceOvershootInterpolator();
            mScroller = new Scroller(getContext(), mScrollInterpolator);
        }
    }

    protected void snapToDestination()
    {
        if(mScrollMode == 1)
            super.snapToDestination();
        else
            snapToPageWithVelocity(getPageNearestToCenterOfScreen(), 0);
    }

    protected void snapToPageWithVelocity(int whichPage, int velocity)
    {
        if(mScrollMode == 1)
            super.snapToPageWithVelocity(whichPage, velocity);
        else
            snapToPageWithVelocity(whichPage, 0, true);
    }

    private void snapToPageWithVelocity(int whichPage, int velocity, boolean settle)
    {
        whichPage = Math.max(0, Math.min(whichPage, getChildCount() - 1));
        int screenDelta = Math.max(1, Math.abs(whichPage - mCurrentPage));
        int newX = getChildOffset(whichPage) - getRelativeChildOffset(whichPage);
        int delta = newX - mUnboundedScrollX;
        int duration = (screenDelta + 1) * 100;
        if(!mScroller.isFinished())
            mScroller.abortAnimation();
        if(settle)
            ((WorkspaceOvershootInterpolator)mScrollInterpolator).setDistance(screenDelta);
        else
            ((WorkspaceOvershootInterpolator)mScrollInterpolator).disableSettle();
        velocity = Math.abs(velocity);
        if(velocity > 0)
            duration = (int)((float)duration + ((float)duration / ((float)velocity / mBaseLineFlingVelocity)) * mFlingVelocityInfluence);
        else
            duration += 100;
        snapToPage(whichPage, delta, duration);
    }

    protected void snapToPage(int whichPage)
    {
        if(mScrollMode == 1)
            super.snapToPage(whichPage);
        else
            snapToPageWithVelocity(whichPage, 0, false);
    }

    public void computeScroll()
    {
        if(mScrollMode == 1)
        {
            super.computeScroll();
        } else
        {
            boolean scrollComputed = computeScrollHelper();
            if(!scrollComputed && mTouchState == 1)
            {
                float now = (float)System.nanoTime() / 1E+009F;
                float e = (float)Math.exp((now - mSmoothingTime) / SMOOTHING_CONSTANT);
                float dx = mTouchX - (float)mUnboundedScrollX;
                scrollTo(Math.round((float)mUnboundedScrollX + dx * e), mScrollY);
                mSmoothingTime = now;
                if(dx > 1.0F || dx < -1F)
                    invalidate();
            }
        }
    }

    private static final float SMOOTHING_SPEED = 0.75F;
    private static final float SMOOTHING_CONSTANT = (float)(0.016D / Math.log(0.75D));
    private float mBaseLineFlingVelocity;
    private float mFlingVelocityInfluence;
    static final int DEFAULT_MODE = 0;
    static final int X_LARGE_MODE = 1;
    int mScrollMode;
    private Interpolator mScrollInterpolator;

}
