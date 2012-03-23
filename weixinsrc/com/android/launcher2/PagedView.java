// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PagedView.java

package com.android.launcher2;

import android.animation.*;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.*;
import android.view.accessibility.*;
import android.view.animation.Interpolator;
import android.widget.*;
import com.android.launcher.R;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.android.launcher2:
//            Page, LauncherApplication

public abstract class PagedView extends ViewGroup
{
    public static interface PageSwitchListener
    {

        public abstract void onPageSwitch(View view, int i);
    }

    public static class SavedState extends android.view.View.BaseSavedState
    {

        public void writeToParcel(Parcel out, int flags)
        {
            super.writeToParcel(out, flags);
            out.writeInt(currentPage);
        }

        int currentPage;
        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public SavedState createFromParcel(Parcel in)
            {
                return new SavedState(in, null);
            }

            public SavedState[] newArray(int size)
            {
                return new SavedState[size];
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        }
;


        SavedState(Parcelable superState)
        {
            super(superState);
            currentPage = -1;
        }

        private SavedState(Parcel in)
        {
            super(in);
            currentPage = -1;
            currentPage = in.readInt();
        }

        SavedState(Parcel parcel, SavedState savedstate)
        {
            this(parcel);
        }
    }

    private static class ScrollInterpolator
        implements Interpolator
    {

        public float getInterpolation(float t)
        {
            t--;
            return t * t * t * t * t + 1.0F;
        }

        public ScrollInterpolator()
        {
        }
    }


    public PagedView(Context context)
    {
        this(context, null);
    }

    public PagedView(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public PagedView(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mSnapVelocity = 500;
        mFirstLayout = true;
        mNextPage = -1;
        mLastScreenCenter = -1;
        mTouchState = 0;
        mAllowLongPress = true;
        mCellCountX = 0;
        mCellCountY = 0;
        mAllowOverScroll = true;
        mLayoutScale = 1.0F;
        mActivePointerId = -1;
        mDirtyPageAlpha = true;
        mContentIsRefreshable = true;
        mFadeInAdjacentScreens = true;
        mUsePagingTouchSlop = true;
        mDeferScrollUpdate = false;
        mIsPageMoving = false;
        mIsDataReady = false;
        mHasScrollIndicator = true;
        mChoiceMode = 0;
        TypedArray a = context.obtainStyledAttributes(attrs, com.android.launcher.R.styleable.PagedView, defStyle, 0);
        mPageSpacing = a.getDimensionPixelSize(8, 0);
        mPageLayoutPaddingTop = a.getDimensionPixelSize(4, 0);
        mPageLayoutPaddingBottom = a.getDimensionPixelSize(5, 0);
        mPageLayoutPaddingLeft = a.getDimensionPixelSize(6, 0);
        mPageLayoutPaddingRight = a.getDimensionPixelSize(7, 0);
        mPageLayoutWidthGap = a.getDimensionPixelSize(2, 0);
        mPageLayoutHeightGap = a.getDimensionPixelSize(3, 0);
        mScrollIndicatorPaddingLeft = a.getDimensionPixelSize(9, 0);
        mScrollIndicatorPaddingRight = a.getDimensionPixelSize(10, 0);
        a.recycle();
        setHapticFeedbackEnabled(false);
        init();
    }

    protected void init()
    {
        mDirtyPageContent = new ArrayList();
        mDirtyPageContent.ensureCapacity(32);
        mScroller = new Scroller(getContext(), new ScrollInterpolator());
        mCurrentPage = 0;
        mCenterPagesVertically = true;
        ViewConfiguration configuration = ViewConfiguration.get(getContext());
        mTouchSlop = configuration.getScaledTouchSlop();
        mPagingTouchSlop = configuration.getScaledPagingTouchSlop();
        mMaximumVelocity = configuration.getScaledMaximumFlingVelocity();
        mDensity = getResources().getDisplayMetrics().density;
    }

    public void setPageSwitchListener(PageSwitchListener pageSwitchListener)
    {
        mPageSwitchListener = pageSwitchListener;
        if(mPageSwitchListener != null)
            mPageSwitchListener.onPageSwitch(getPageAt(mCurrentPage), mCurrentPage);
    }

    protected void setDataIsReady()
    {
        mIsDataReady = true;
    }

    protected boolean isDataReady()
    {
        return mIsDataReady;
    }

    int getCurrentPage()
    {
        return mCurrentPage;
    }

    int getPageCount()
    {
        return getChildCount();
    }

    View getPageAt(int index)
    {
        return getChildAt(index);
    }

    protected int indexToPage(int index)
    {
        return index;
    }

    protected void updateCurrentPageScroll()
    {
        int newX = getChildOffset(mCurrentPage) - getRelativeChildOffset(mCurrentPage);
        scrollTo(newX, 0);
        mScroller.setFinalX(newX);
    }

    void setCurrentPage(int currentPage)
    {
        if(!mScroller.isFinished())
            mScroller.abortAnimation();
        if(getChildCount() == 0)
        {
            return;
        } else
        {
            mCurrentPage = Math.max(0, Math.min(currentPage, getPageCount() - 1));
            updateCurrentPageScroll();
            updateScrollingIndicator();
            notifyPageSwitchListener();
            invalidate();
            return;
        }
    }

    protected void notifyPageSwitchListener()
    {
        if(mPageSwitchListener != null)
            mPageSwitchListener.onPageSwitch(getPageAt(mCurrentPage), mCurrentPage);
    }

    protected void pageBeginMoving()
    {
        if(!mIsPageMoving)
        {
            mIsPageMoving = true;
            onPageBeginMoving();
        }
    }

    protected void pageEndMoving()
    {
        if(mIsPageMoving)
        {
            mIsPageMoving = false;
            onPageEndMoving();
        }
    }

    protected boolean isPageMoving()
    {
        return mIsPageMoving;
    }

    protected void onPageBeginMoving()
    {
        showScrollingIndicator(false);
    }

    protected void onPageEndMoving()
    {
        hideScrollingIndicator(false);
    }

    public void setOnLongClickListener(android.view.View.OnLongClickListener l)
    {
        mLongClickListener = l;
        int count = getPageCount();
        for(int i = 0; i < count; i++)
            getPageAt(i).setOnLongClickListener(l);

    }

    public void scrollBy(int x, int y)
    {
        scrollTo(mUnboundedScrollX + x, mScrollY + y);
    }

    public void scrollTo(int x, int y)
    {
        mUnboundedScrollX = x;
        if(x < 0)
        {
            super.scrollTo(0, y);
            if(mAllowOverScroll)
                overScroll(x);
        } else
        if(x > mMaxScrollX)
        {
            super.scrollTo(mMaxScrollX, y);
            if(mAllowOverScroll)
                overScroll(x - mMaxScrollX);
        } else
        {
            super.scrollTo(x, y);
        }
        mTouchX = x;
        mSmoothingTime = (float)System.nanoTime() / 1E+009F;
    }

    protected boolean computeScrollHelper()
    {
        if(mScroller.computeScrollOffset())
        {
            if(mScrollX != mScroller.getCurrX() || mScrollY != mScroller.getCurrY())
            {
                mDirtyPageAlpha = true;
                scrollTo(mScroller.getCurrX(), mScroller.getCurrY());
            }
            invalidate();
            return true;
        }
        if(mNextPage != -1)
        {
            mDirtyPageAlpha = true;
            mCurrentPage = Math.max(0, Math.min(mNextPage, getPageCount() - 1));
            mNextPage = -1;
            notifyPageSwitchListener();
            if(mDeferLoadAssociatedPagesUntilScrollCompletes)
            {
                loadAssociatedPages(mCurrentPage);
                mDeferLoadAssociatedPagesUntilScrollCompletes = false;
            }
            if(mTouchState == 0)
                pageEndMoving();
            if(AccessibilityManager.getInstance(getContext()).isEnabled())
            {
                AccessibilityEvent ev = AccessibilityEvent.obtain(4096);
                ev.getText().add(getCurrentPageDescription());
                sendAccessibilityEventUnchecked(ev);
            }
            return true;
        } else
        {
            return false;
        }
    }

    public void computeScroll()
    {
        computeScrollHelper();
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
    {
        if(!mIsDataReady)
        {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        int widthMode = android.view.View.MeasureSpec.getMode(widthMeasureSpec);
        int widthSize = android.view.View.MeasureSpec.getSize(widthMeasureSpec);
        if(widthMode != 0x40000000)
            throw new IllegalStateException("Workspace can only be used in EXACTLY mode.");
        int heightMode = android.view.View.MeasureSpec.getMode(heightMeasureSpec);
        int heightSize = android.view.View.MeasureSpec.getSize(heightMeasureSpec);
        int maxChildHeight = 0;
        int verticalPadding = mPaddingTop + mPaddingBottom;
        int horizontalPadding = mPaddingLeft + mPaddingRight;
        int childCount = getChildCount();
        for(int i = 0; i < childCount; i++)
        {
            View child = getPageAt(i);
            android.view.ViewGroup.LayoutParams lp = child.getLayoutParams();
            int childWidthMode;
            if(lp.width == -2)
                childWidthMode = 0x80000000;
            else
                childWidthMode = 0x40000000;
            int childHeightMode;
            if(lp.height == -2)
                childHeightMode = 0x80000000;
            else
                childHeightMode = 0x40000000;
            int childWidthMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(widthSize - horizontalPadding, childWidthMode);
            int childHeightMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(heightSize - verticalPadding, childHeightMode);
            child.measure(childWidthMeasureSpec, childHeightMeasureSpec);
            maxChildHeight = Math.max(maxChildHeight, child.getMeasuredHeight());
        }

        if(heightMode == 0x80000000)
            heightSize = maxChildHeight + verticalPadding;
        updateScrollingIndicatorPosition();
        setMeasuredDimension(widthSize, heightSize);
        if(childCount > 0)
            mMaxScrollX = getChildOffset(childCount - 1) - getRelativeChildOffset(childCount - 1);
        else
            mMaxScrollX = 0;
    }

    protected void scrollToNewPageWithoutMovingPages(int newCurrentPage)
    {
        int newX = getChildOffset(newCurrentPage) - getRelativeChildOffset(newCurrentPage);
        int delta = newX - mScrollX;
        int pageCount = getChildCount();
        for(int i = 0; i < pageCount; i++)
        {
            View page = getPageAt(i);
            page.setX(page.getX() + (float)delta);
        }

        setCurrentPage(newCurrentPage);
    }

    public void setLayoutScale(float childrenScale)
    {
        mLayoutScale = childrenScale;
        int childCount = getChildCount();
        float childrenX[] = new float[childCount];
        float childrenY[] = new float[childCount];
        for(int i = 0; i < childCount; i++)
        {
            View child = getPageAt(i);
            childrenX[i] = child.getX();
            childrenY[i] = child.getY();
        }

        int widthSpec = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0x40000000);
        int heightSpec = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0x40000000);
        requestLayout();
        measure(widthSpec, heightSpec);
        layout(mLeft, mTop, mRight, mBottom);
        for(int i = 0; i < childCount; i++)
        {
            View child = getPageAt(i);
            child.setX(childrenX[i]);
            child.setY(childrenY[i]);
        }

        scrollToNewPageWithoutMovingPages(mCurrentPage);
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom)
    {
        if(!mIsDataReady)
            return;
        int verticalPadding = mPaddingTop + mPaddingBottom;
        int childCount = getChildCount();
        int childLeft = 0;
        if(childCount > 0)
        {
            childLeft = getRelativeChildOffset(0);
            if(mPageSpacing < 0)
                mPageSpacing = (right - left - getChildAt(0).getMeasuredWidth()) / 2;
        }
        for(int i = 0; i < childCount; i++)
        {
            View child = getPageAt(i);
            if(child.getVisibility() != 8)
            {
                int childWidth = getScaledMeasuredWidth(child);
                int childHeight = child.getMeasuredHeight();
                int childTop = mPaddingTop;
                if(mCenterPagesVertically)
                    childTop += (getMeasuredHeight() - verticalPadding - childHeight) / 2;
                child.layout(childLeft, childTop, childLeft + child.getMeasuredWidth(), childTop + childHeight);
                childLeft += childWidth + mPageSpacing;
            }
        }

        if(mFirstLayout && mCurrentPage >= 0 && mCurrentPage < getChildCount())
        {
            setHorizontalScrollBarEnabled(false);
            int newX = getChildOffset(mCurrentPage) - getRelativeChildOffset(mCurrentPage);
            scrollTo(newX, 0);
            mScroller.setFinalX(newX);
            setHorizontalScrollBarEnabled(true);
            mFirstLayout = false;
        }
        if(mFirstLayout && mCurrentPage >= 0 && mCurrentPage < getChildCount())
            mFirstLayout = false;
    }

    protected void forceUpdateAdjacentPagesAlpha()
    {
        mDirtyPageAlpha = true;
        updateAdjacentPagesAlpha();
    }

    protected void updateAdjacentPagesAlpha()
    {
        if(mFadeInAdjacentScreens && (mDirtyPageAlpha || mTouchState == 1 || !mScroller.isFinished()))
        {
            int screenWidth = getMeasuredWidth() - mPaddingLeft - mPaddingRight;
            int halfScreenSize = screenWidth / 2;
            int screenCenter = mScrollX + halfScreenSize + mPaddingLeft;
            int childCount = getChildCount();
            for(int i = 0; i < childCount; i++)
            {
                View layout = getPageAt(i);
                int childWidth = getScaledMeasuredWidth(layout);
                int halfChildWidth = childWidth / 2;
                int childCenter = getChildOffset(i) + halfChildWidth;
                if(childWidth <= 0)
                {
                    childWidth = screenWidth;
                    childCenter = i * childWidth + childWidth / 2;
                }
                int d = halfChildWidth;
                int distanceFromScreenCenter = childCenter - screenCenter;
                if(distanceFromScreenCenter > 0)
                {
                    if(i <= 0)
                        continue;
                    d += getScaledMeasuredWidth(getPageAt(i - 1)) / 2;
                } else
                {
                    if(i >= childCount - 1)
                        continue;
                    d += getScaledMeasuredWidth(getPageAt(i + 1)) / 2;
                }
                d += mPageSpacing;
                d = Math.max(1, d);
                float dimAlpha = (float)Math.abs(distanceFromScreenCenter) / (float)d;
                dimAlpha = Math.max(0.0F, Math.min(1.0F, dimAlpha * dimAlpha));
                float alpha = 1.0F - dimAlpha;
                if(alpha < 0.0001F)
                    alpha = 0.0F;
                else
                if(alpha > 0.9999F)
                    alpha = 1.0F;
                layout.setAlpha(alpha);
            }

            mDirtyPageAlpha = false;
        }
    }

    protected void screenScrolled(int screenCenter)
    {
        updateScrollingIndicator();
    }

    protected void dispatchDraw(Canvas canvas)
    {
        int halfScreenSize = getMeasuredWidth() / 2;
        int screenCenter = mScrollX + halfScreenSize;
        if(screenCenter != mLastScreenCenter)
        {
            screenScrolled(screenCenter);
            updateAdjacentPagesAlpha();
            mLastScreenCenter = screenCenter;
        }
        int pageCount = getChildCount();
        if(pageCount > 0)
        {
            int pageWidth = getScaledMeasuredWidth(getPageAt(0));
            int screenWidth = getMeasuredWidth();
            int x = getScaledRelativeChildOffset(0) + pageWidth;
            int leftScreen = 0;
            int rightScreen = 0;
            for(; x <= mScrollX && leftScreen < pageCount - 1; x += getScaledMeasuredWidth(getPageAt(leftScreen)) + mPageSpacing)
                leftScreen++;

            for(rightScreen = leftScreen; x < mScrollX + screenWidth && rightScreen < pageCount - 1; x += getScaledMeasuredWidth(getPageAt(rightScreen)) + mPageSpacing)
                rightScreen++;

            rightScreen = Math.min(getChildCount() - 1, rightScreen);
            long drawingTime = getDrawingTime();
            canvas.save();
            canvas.clipRect(mScrollX, mScrollY, (mScrollX + mRight) - mLeft, (mScrollY + mBottom) - mTop);
            for(int i = rightScreen; i >= leftScreen; i--)
                drawChild(canvas, getPageAt(i), drawingTime);

            canvas.restore();
        }
    }

    public boolean requestChildRectangleOnScreen(View child, Rect rectangle, boolean immediate)
    {
        int page = indexToPage(indexOfChild(child));
        if(page != mCurrentPage || !mScroller.isFinished())
        {
            snapToPage(page);
            return true;
        } else
        {
            return false;
        }
    }

    protected boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect)
    {
        int focusablePage;
        if(mNextPage != -1)
            focusablePage = mNextPage;
        else
            focusablePage = mCurrentPage;
        View v = getPageAt(focusablePage);
        if(v != null)
            return v.requestFocus(direction, previouslyFocusedRect);
        else
            return false;
    }

    public boolean dispatchUnhandledMove(View focused, int direction)
    {
        if(direction == 17)
        {
            if(getCurrentPage() > 0)
            {
                snapToPage(getCurrentPage() - 1);
                return true;
            }
        } else
        if(direction == 66 && getCurrentPage() < getPageCount() - 1)
        {
            snapToPage(getCurrentPage() + 1);
            return true;
        }
        return super.dispatchUnhandledMove(focused, direction);
    }

    public void addFocusables(ArrayList views, int direction, int focusableMode)
    {
        if(mCurrentPage >= 0 && mCurrentPage < getPageCount())
            getPageAt(mCurrentPage).addFocusables(views, direction);
        if(direction == 17)
        {
            if(mCurrentPage > 0)
                getPageAt(mCurrentPage - 1).addFocusables(views, direction);
        } else
        if(direction == 66 && mCurrentPage < getPageCount() - 1)
            getPageAt(mCurrentPage + 1).addFocusables(views, direction);
    }

    public void focusableViewAvailable(View focused)
    {
        View current = getPageAt(mCurrentPage);
        View v = focused;
        do
        {
            if(v == current)
            {
                super.focusableViewAvailable(focused);
                return;
            }
            if(v == this)
                return;
            android.view.ViewParent parent = v.getParent();
            if(parent instanceof View)
                v = (View)v.getParent();
            else
                return;
        } while(true);
    }

    public void requestDisallowInterceptTouchEvent(boolean disallowIntercept)
    {
        if(disallowIntercept)
        {
            View currentPage = getPageAt(mCurrentPage);
            currentPage.cancelLongPress();
        }
        super.requestDisallowInterceptTouchEvent(disallowIntercept);
    }

    protected boolean hitsPreviousPage(float x, float y)
    {
        return x < (float)(getRelativeChildOffset(mCurrentPage) - mPageSpacing);
    }

    protected boolean hitsNextPage(float x, float y)
    {
        return x > (float)((getMeasuredWidth() - getRelativeChildOffset(mCurrentPage)) + mPageSpacing);
    }

    public boolean onInterceptTouchEvent(MotionEvent ev)
    {
        acquireVelocityTrackerAndAddMovement(ev);
        if(getChildCount() <= 0)
            return super.onInterceptTouchEvent(ev);
        int action = ev.getAction();
        if(action == 2 && mTouchState == 1)
            return true;
        switch(action & 0xff)
        {
        case 4: // '\004'
        case 5: // '\005'
        default:
            break;

        case 2: // '\002'
            if(mActivePointerId != -1)
            {
                determineScrollingStart(ev);
                break;
            }
            // fall through

        case 0: // '\0'
            float x = ev.getX();
            float y = ev.getY();
            mDownMotionX = x;
            mLastMotionX = x;
            mLastMotionY = y;
            mLastMotionXRemainder = 0.0F;
            mTotalMotionX = 0.0F;
            mActivePointerId = ev.getPointerId(0);
            mAllowLongPress = true;
            int xDist = Math.abs(mScroller.getFinalX() - mScroller.getCurrX());
            boolean finishedScrolling = mScroller.isFinished() || xDist < mTouchSlop;
            if(finishedScrolling)
            {
                mTouchState = 0;
                mScroller.abortAnimation();
            } else
            {
                mTouchState = 1;
            }
            if(mTouchState != 2 && mTouchState != 3 && getChildCount() > 0)
                if(hitsPreviousPage(x, y))
                    mTouchState = 2;
                else
                if(hitsNextPage(x, y))
                    mTouchState = 3;
            break;

        case 1: // '\001'
        case 3: // '\003'
            mTouchState = 0;
            mAllowLongPress = false;
            mActivePointerId = -1;
            releaseVelocityTracker();
            break;

        case 6: // '\006'
            onSecondaryPointerUp(ev);
            releaseVelocityTracker();
            break;
        }
        return mTouchState != 0;
    }

    protected void animateClickFeedback(View v, final Runnable r)
    {
        ObjectAnimator anim = (ObjectAnimator)AnimatorInflater.loadAnimator(mContext, 0x7f040002);
        anim.setTarget(v);
        anim.addListener(new AnimatorListenerAdapter() {

            public void onAnimationRepeat(Animator animation)
            {
                r.run();
            }

            final PagedView this$0;
            private final Runnable val$r;

            
            {
                this$0 = PagedView.this;
                r = runnable;
                super();
            }
        }
);
        anim.start();
    }

    protected void determineScrollingStart(MotionEvent ev)
    {
        determineScrollingStart(ev, 1.0F);
    }

    protected void determineScrollingStart(MotionEvent ev, float touchSlopScale)
    {
        int pointerIndex = ev.findPointerIndex(mActivePointerId);
        if(pointerIndex == -1)
            return;
        float x = ev.getX(pointerIndex);
        float y = ev.getY(pointerIndex);
        int xDiff = (int)Math.abs(x - mLastMotionX);
        int yDiff = (int)Math.abs(y - mLastMotionY);
        int touchSlop = Math.round(touchSlopScale * (float)mTouchSlop);
        boolean xPaged = xDiff > mPagingTouchSlop;
        boolean xMoved = xDiff > touchSlop;
        boolean yMoved = yDiff > touchSlop;
        if(xMoved || xPaged || yMoved)
        {
            if(mUsePagingTouchSlop ? xPaged : xMoved)
            {
                mTouchState = 1;
                mTotalMotionX += Math.abs(mLastMotionX - x);
                mLastMotionX = x;
                mLastMotionXRemainder = 0.0F;
                mTouchX = mScrollX;
                mSmoothingTime = (float)System.nanoTime() / 1E+009F;
                pageBeginMoving();
            }
            cancelCurrentPageLongPress();
        }
    }

    protected void cancelCurrentPageLongPress()
    {
        if(mAllowLongPress)
        {
            mAllowLongPress = false;
            View currentPage = getPageAt(mCurrentPage);
            if(currentPage != null)
                currentPage.cancelLongPress();
        }
    }

    protected float getScrollProgress(int screenCenter, View v, int page)
    {
        int halfScreenSize = getMeasuredWidth() / 2;
        int totalDistance = getScaledMeasuredWidth(v) + mPageSpacing;
        int delta = screenCenter - ((getChildOffset(page) - getRelativeChildOffset(page)) + halfScreenSize);
        float scrollProgress = (float)delta / ((float)totalDistance * 1.0F);
        scrollProgress = Math.min(scrollProgress, 1.0F);
        scrollProgress = Math.max(scrollProgress, -1F);
        return scrollProgress;
    }

    private float overScrollInfluenceCurve(float f)
    {
        f--;
        return f * f * f + 1.0F;
    }

    protected void acceleratedOverScroll(float amount)
    {
        int screenSize = getMeasuredWidth();
        float f = 2.0F * (amount / (float)screenSize);
        if(f == 0.0F)
            return;
        if(Math.abs(f) >= 1.0F)
            f /= Math.abs(f);
        int overScrollAmount = Math.round(f * (float)screenSize);
        if(amount < 0.0F)
            mScrollX = overScrollAmount;
        else
            mScrollX = mMaxScrollX + overScrollAmount;
        invalidate();
    }

    protected void dampedOverScroll(float amount)
    {
        int screenSize = getMeasuredWidth();
        float f = amount / (float)screenSize;
        if(f == 0.0F)
            return;
        f = (f / Math.abs(f)) * overScrollInfluenceCurve(Math.abs(f));
        if(Math.abs(f) >= 1.0F)
            f /= Math.abs(f);
        int overScrollAmount = Math.round(0.14F * f * (float)screenSize);
        if(amount < 0.0F)
            mScrollX = overScrollAmount;
        else
            mScrollX = mMaxScrollX + overScrollAmount;
        invalidate();
    }

    protected void overScroll(float amount)
    {
        dampedOverScroll(amount);
    }

    protected float maxOverScroll()
    {
        float f = 1.0F;
        f = (f / Math.abs(f)) * overScrollInfluenceCurve(Math.abs(f));
        return 0.14F * f;
    }

    public boolean onTouchEvent(MotionEvent ev)
    {
        if(getChildCount() <= 0)
            return super.onTouchEvent(ev);
        acquireVelocityTrackerAndAddMovement(ev);
        int action = ev.getAction();
        switch(action & 0xff)
        {
        case 4: // '\004'
        case 5: // '\005'
        default:
            break;

        case 0: // '\0'
            if(!mScroller.isFinished())
                mScroller.abortAnimation();
            mDownMotionX = mLastMotionX = ev.getX();
            mLastMotionXRemainder = 0.0F;
            mTotalMotionX = 0.0F;
            mActivePointerId = ev.getPointerId(0);
            if(mTouchState == 1)
                pageBeginMoving();
            break;

        case 2: // '\002'
            if(mTouchState == 1)
            {
                int pointerIndex = ev.findPointerIndex(mActivePointerId);
                float x = ev.getX(pointerIndex);
                float deltaX = (mLastMotionX + mLastMotionXRemainder) - x;
                mTotalMotionX += Math.abs(deltaX);
                if(Math.abs(deltaX) >= 1.0F)
                {
                    mTouchX += deltaX;
                    mSmoothingTime = (float)System.nanoTime() / 1E+009F;
                    if(!mDeferScrollUpdate)
                        scrollBy((int)deltaX, 0);
                    else
                        invalidate();
                    mLastMotionX = x;
                    mLastMotionXRemainder = deltaX - (float)(int)deltaX;
                } else
                {
                    awakenScrollBars();
                }
            } else
            {
                determineScrollingStart(ev);
            }
            break;

        case 1: // '\001'
            if(mTouchState == 1)
            {
                int activePointerId = mActivePointerId;
                int pointerIndex = ev.findPointerIndex(activePointerId);
                float x = ev.getX(pointerIndex);
                VelocityTracker velocityTracker = mVelocityTracker;
                velocityTracker.computeCurrentVelocity(1000, mMaximumVelocity);
                int velocityX = (int)velocityTracker.getXVelocity(activePointerId);
                int deltaX = (int)(x - mDownMotionX);
                boolean isSignificantMove = Math.abs(deltaX) > 200;
                int snapVelocity = mSnapVelocity;
                mTotalMotionX += Math.abs((mLastMotionX + mLastMotionXRemainder) - x);
                boolean returnToOriginalPage = false;
                int pageWidth = getScaledMeasuredWidth(getPageAt(mCurrentPage));
                if((float)Math.abs(deltaX) > (float)pageWidth * 0.33F && Math.signum(velocityX) != Math.signum(deltaX))
                    returnToOriginalPage = true;
                boolean isFling = mTotalMotionX > 25F && Math.abs(velocityX) > snapVelocity;
                if((isSignificantMove && deltaX > 0 && !isFling || isFling && velocityX > 0) && mCurrentPage > 0)
                {
                    int finalPage = returnToOriginalPage ? mCurrentPage : mCurrentPage - 1;
                    snapToPageWithVelocity(finalPage, velocityX);
                } else
                if((isSignificantMove && deltaX < 0 && !isFling || isFling && velocityX < 0) && mCurrentPage < getChildCount() - 1)
                {
                    int finalPage = returnToOriginalPage ? mCurrentPage : mCurrentPage + 1;
                    snapToPageWithVelocity(finalPage, velocityX);
                } else
                {
                    snapToDestination();
                }
            } else
            if(mTouchState == 2)
            {
                int nextPage = Math.max(0, mCurrentPage - 1);
                if(nextPage != mCurrentPage)
                    snapToPage(nextPage);
                else
                    snapToDestination();
            } else
            if(mTouchState == 3)
            {
                int nextPage = Math.min(getChildCount() - 1, mCurrentPage + 1);
                if(nextPage != mCurrentPage)
                    snapToPage(nextPage);
                else
                    snapToDestination();
            } else
            {
                onUnhandledTap(ev);
            }
            mTouchState = 0;
            mActivePointerId = -1;
            releaseVelocityTracker();
            break;

        case 3: // '\003'
            if(mTouchState == 1)
                snapToDestination();
            mTouchState = 0;
            mActivePointerId = -1;
            releaseVelocityTracker();
            break;

        case 6: // '\006'
            onSecondaryPointerUp(ev);
            break;
        }
        return true;
    }

    public boolean onGenericMotionEvent(MotionEvent event)
    {
        if((event.getSource() & 2) != 0)
            switch(event.getAction())
            {
            case 8: // '\b'
                float vscroll;
                float hscroll;
                if((event.getMetaState() & 1) != 0)
                {
                    vscroll = 0.0F;
                    hscroll = event.getAxisValue(9);
                } else
                {
                    vscroll = -event.getAxisValue(9);
                    hscroll = event.getAxisValue(10);
                }
                if(hscroll != 0.0F || vscroll != 0.0F)
                {
                    if(hscroll > 0.0F || vscroll > 0.0F)
                        scrollRight();
                    else
                        scrollLeft();
                    return true;
                }
                break;
            }
        return super.onGenericMotionEvent(event);
    }

    private void acquireVelocityTrackerAndAddMovement(MotionEvent ev)
    {
        if(mVelocityTracker == null)
            mVelocityTracker = VelocityTracker.obtain();
        mVelocityTracker.addMovement(ev);
    }

    private void releaseVelocityTracker()
    {
        if(mVelocityTracker != null)
        {
            mVelocityTracker.recycle();
            mVelocityTracker = null;
        }
    }

    private void onSecondaryPointerUp(MotionEvent ev)
    {
        int pointerIndex = (ev.getAction() & 0xff00) >> 8;
        int pointerId = ev.getPointerId(pointerIndex);
        if(pointerId == mActivePointerId)
        {
            int newPointerIndex = pointerIndex != 0 ? 0 : 1;
            mLastMotionX = mDownMotionX = ev.getX(newPointerIndex);
            mLastMotionY = ev.getY(newPointerIndex);
            mLastMotionXRemainder = 0.0F;
            mActivePointerId = ev.getPointerId(newPointerIndex);
            if(mVelocityTracker != null)
                mVelocityTracker.clear();
        }
    }

    protected void onUnhandledTap(MotionEvent motionevent)
    {
    }

    public void requestChildFocus(View child, View focused)
    {
        super.requestChildFocus(child, focused);
        int page = indexToPage(indexOfChild(child));
        if(page >= 0 && page != getCurrentPage() && !isInTouchMode())
            snapToPage(page);
    }

    protected int getChildIndexForRelativeOffset(int relativeOffset)
    {
        int childCount = getChildCount();
        for(int i = 0; i < childCount; i++)
        {
            int left = getRelativeChildOffset(i);
            int right = left + getScaledMeasuredWidth(getPageAt(i));
            if(left <= relativeOffset && relativeOffset <= right)
                return i;
        }

        return -1;
    }

    protected void setMinimumWidthOverride(int minimumWidth)
    {
        mMinimumWidth = minimumWidth;
    }

    protected void resetMinimumWidthOverride()
    {
        mMinimumWidth = 0;
    }

    protected int getChildWidth(int index)
    {
        int measuredWidth = getPageAt(index).getMeasuredWidth();
        int minWidth = mMinimumWidth;
        return minWidth <= measuredWidth ? measuredWidth : minWidth;
    }

    protected int getRelativeChildOffset(int index)
    {
        int padding = mPaddingLeft + mPaddingRight;
        return mPaddingLeft + (getMeasuredWidth() - padding - getChildWidth(index)) / 2;
    }

    protected int getScaledRelativeChildOffset(int index)
    {
        int padding = mPaddingLeft + mPaddingRight;
        return mPaddingLeft + (getMeasuredWidth() - padding - getScaledMeasuredWidth(getPageAt(index))) / 2;
    }

    protected int getChildOffset(int index)
    {
        if(getChildCount() == 0)
            return 0;
        int offset = getRelativeChildOffset(0);
        for(int i = 0; i < index; i++)
            offset += getScaledMeasuredWidth(getPageAt(i)) + mPageSpacing;

        return offset;
    }

    protected int getScaledMeasuredWidth(View child)
    {
        int measuredWidth = child.getMeasuredWidth();
        int minWidth = mMinimumWidth;
        int maxWidth = minWidth <= measuredWidth ? measuredWidth : minWidth;
        return (int)((float)maxWidth * mLayoutScale + 0.5F);
    }

    int getPageNearestToCenterOfScreen()
    {
        int minDistanceFromScreenCenter = 0x7fffffff;
        int minDistanceFromScreenCenterIndex = -1;
        int screenCenter = mScrollX + getMeasuredWidth() / 2;
        int childCount = getChildCount();
        for(int i = 0; i < childCount; i++)
        {
            View layout = getPageAt(i);
            int childWidth = getScaledMeasuredWidth(layout);
            int halfChildWidth = childWidth / 2;
            int childCenter = getChildOffset(i) + halfChildWidth;
            int distanceFromScreenCenter = Math.abs(childCenter - screenCenter);
            if(distanceFromScreenCenter < minDistanceFromScreenCenter)
            {
                minDistanceFromScreenCenter = distanceFromScreenCenter;
                minDistanceFromScreenCenterIndex = i;
            }
        }

        return minDistanceFromScreenCenterIndex;
    }

    protected void snapToDestination()
    {
        snapToPage(getPageNearestToCenterOfScreen(), 550);
    }

    float distanceInfluenceForSnapDuration(float f)
    {
        f -= 0.5F;
        f = (float)((double)f * 0.4712389167638204D);
        return (float)Math.sin(f);
    }

    protected void snapToPageWithVelocity(int whichPage, int velocity)
    {
        whichPage = Math.max(0, Math.min(whichPage, getChildCount() - 1));
        int halfScreenSize = getMeasuredWidth() / 2;
        int newX = getChildOffset(whichPage) - getRelativeChildOffset(whichPage);
        int delta = newX - mUnboundedScrollX;
        int duration = 0;
        if(Math.abs(velocity) < 250)
        {
            snapToPage(whichPage, 550);
            return;
        } else
        {
            float distanceRatio = Math.min(1.0F, (1.0F * (float)Math.abs(delta)) / (float)(2 * halfScreenSize));
            float distance = (float)halfScreenSize + (float)halfScreenSize * distanceInfluenceForSnapDuration(distanceRatio);
            velocity = Math.abs(velocity);
            velocity = Math.max(2200, velocity);
            duration = 4 * Math.round(1000F * Math.abs(distance / (float)velocity));
            snapToPage(whichPage, delta, duration);
            return;
        }
    }

    protected void snapToPage(int whichPage)
    {
        snapToPage(whichPage, 550);
    }

    protected void snapToPage(int whichPage, int duration)
    {
        whichPage = Math.max(0, Math.min(whichPage, getPageCount() - 1));
        int newX = getChildOffset(whichPage) - getRelativeChildOffset(whichPage);
        int sX = mUnboundedScrollX;
        int delta = newX - sX;
        snapToPage(whichPage, delta, duration);
    }

    protected void snapToPage(int whichPage, int delta, int duration)
    {
        mNextPage = whichPage;
        View focusedChild = getFocusedChild();
        if(focusedChild != null && whichPage != mCurrentPage && focusedChild == getPageAt(mCurrentPage))
            focusedChild.clearFocus();
        pageBeginMoving();
        awakenScrollBars(duration);
        if(duration == 0)
            duration = Math.abs(delta);
        if(!mScroller.isFinished())
            mScroller.abortAnimation();
        mScroller.startScroll(mUnboundedScrollX, 0, delta, 0, duration);
        if(mDeferScrollUpdate)
            loadAssociatedPages(mNextPage);
        else
            mDeferLoadAssociatedPagesUntilScrollCompletes = true;
        notifyPageSwitchListener();
        invalidate();
    }

    public void scrollLeft()
    {
        if(mScroller.isFinished())
        {
            if(mCurrentPage > 0)
                snapToPage(mCurrentPage - 1);
        } else
        if(mNextPage > 0)
            snapToPage(mNextPage - 1);
    }

    public void scrollRight()
    {
        if(mScroller.isFinished())
        {
            if(mCurrentPage < getChildCount() - 1)
                snapToPage(mCurrentPage + 1);
        } else
        if(mNextPage < getChildCount() - 1)
            snapToPage(mNextPage + 1);
    }

    public int getPageForView(View v)
    {
        int result = -1;
        if(v != null)
        {
            android.view.ViewParent vp = v.getParent();
            int count = getChildCount();
            for(int i = 0; i < count; i++)
                if(vp == getPageAt(i))
                    return i;

        }
        return result;
    }

    public boolean allowLongPress()
    {
        return mAllowLongPress;
    }

    public void setAllowLongPress(boolean allowLongPress)
    {
        mAllowLongPress = allowLongPress;
    }

    protected void loadAssociatedPages(int page)
    {
        loadAssociatedPages(page, false);
    }

    protected void loadAssociatedPages(int page, boolean immediateAndOnly)
    {
        if(mContentIsRefreshable)
        {
            int count = getChildCount();
            if(page < count)
            {
                int lowerPageBound = getAssociatedLowerPageBound(page);
                int upperPageBound = getAssociatedUpperPageBound(page);
                for(int i = 0; i < count; i++)
                    if(i == page || !immediateAndOnly)
                    {
                        Page layout = (Page)getPageAt(i);
                        int childCount = layout.getPageChildCount();
                        if(lowerPageBound <= i && i <= upperPageBound)
                        {
                            if(((Boolean)mDirtyPageContent.get(i)).booleanValue())
                            {
                                syncPageItems(i, i == page && immediateAndOnly);
                                mDirtyPageContent.set(i, Boolean.valueOf(false));
                            }
                        } else
                        {
                            if(childCount > 0)
                                layout.removeAllViewsOnPage();
                            mDirtyPageContent.set(i, Boolean.valueOf(true));
                        }
                    }

            }
        }
    }

    protected int getAssociatedLowerPageBound(int page)
    {
        return Math.max(0, page - 1);
    }

    protected int getAssociatedUpperPageBound(int page)
    {
        int count = getChildCount();
        return Math.min(page + 1, count - 1);
    }

    protected void startChoiceMode(int mode, android.view.ActionMode.Callback callback)
    {
        if(isChoiceMode(0))
        {
            mChoiceMode = mode;
            mActionMode = startActionMode(callback);
        }
    }

    public void endChoiceMode()
    {
        if(!isChoiceMode(0))
        {
            mChoiceMode = 0;
            resetCheckedGrandchildren();
            if(mActionMode != null)
                mActionMode.finish();
            mActionMode = null;
        }
    }

    protected boolean isChoiceMode(int mode)
    {
        return mChoiceMode == mode;
    }

    protected ArrayList getCheckedGrandchildren()
    {
        ArrayList checked = new ArrayList();
        int childCount = getChildCount();
        for(int i = 0; i < childCount; i++)
        {
            Page layout = (Page)getPageAt(i);
            int grandChildCount = layout.getPageChildCount();
            for(int j = 0; j < grandChildCount; j++)
            {
                View v = layout.getChildOnPageAt(j);
                if((v instanceof Checkable) && ((Checkable)v).isChecked())
                    checked.add((Checkable)v);
            }

        }

        return checked;
    }

    protected Checkable getSingleCheckedGrandchild()
    {
        if(mChoiceMode != 2)
        {
            int childCount = getChildCount();
            for(int i = 0; i < childCount; i++)
            {
                Page layout = (Page)getPageAt(i);
                int grandChildCount = layout.getPageChildCount();
                for(int j = 0; j < grandChildCount; j++)
                {
                    View v = layout.getChildOnPageAt(j);
                    if((v instanceof Checkable) && ((Checkable)v).isChecked())
                        return (Checkable)v;
                }

            }

        }
        return null;
    }

    protected void resetCheckedGrandchildren()
    {
        ArrayList checked = getCheckedGrandchildren();
        for(int i = 0; i < checked.size(); i++)
        {
            Checkable c = (Checkable)checked.get(i);
            c.setChecked(false);
        }

    }

    public abstract void syncPages();

    public abstract void syncPageItems(int i, boolean flag);

    protected void invalidatePageData()
    {
        invalidatePageData(-1, false);
    }

    protected void invalidatePageData(int currentPage)
    {
        invalidatePageData(currentPage, false);
    }

    protected void invalidatePageData(int currentPage, boolean immediateAndOnly)
    {
        if(!mIsDataReady)
            return;
        if(mContentIsRefreshable)
        {
            mScroller.forceFinished(true);
            mNextPage = -1;
            syncPages();
            measure(android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0x40000000));
            if(currentPage > -1)
                setCurrentPage(Math.min(getPageCount() - 1, currentPage));
            int count = getChildCount();
            mDirtyPageContent.clear();
            for(int i = 0; i < count; i++)
                mDirtyPageContent.add(Boolean.valueOf(true));

            loadAssociatedPages(mCurrentPage, immediateAndOnly);
            mDirtyPageAlpha = true;
            updateAdjacentPagesAlpha();
            requestLayout();
        }
    }

    private ImageView getScrollingIndicator()
    {
        if(mHasScrollIndicator && mScrollIndicator == null)
        {
            ViewGroup parent = (ViewGroup)getParent();
            mScrollIndicator = (ImageView)parent.findViewById(0x7f06000a);
            mHasScrollIndicator = mScrollIndicator != null;
            if(mHasScrollIndicator)
                mScrollIndicator.setVisibility(0);
        }
        return mScrollIndicator;
    }

    protected boolean isScrollingIndicatorEnabled()
    {
        return !LauncherApplication.isScreenLarge();
    }

    protected void flashScrollingIndicator()
    {
        removeCallbacks(hideScrollingIndicatorRunnable);
        showScrollingIndicator(false);
        postDelayed(hideScrollingIndicatorRunnable, 650L);
    }

    protected void showScrollingIndicator(boolean immediately)
    {
        if(getChildCount() <= 1)
            return;
        if(!isScrollingIndicatorEnabled())
            return;
        getScrollingIndicator();
        if(mScrollIndicator != null)
        {
            updateScrollingIndicatorPosition();
            mScrollIndicator.setVisibility(0);
            if(mScrollIndicatorAnimator != null)
                mScrollIndicatorAnimator.cancel();
            if(immediately)
            {
                mScrollIndicator.setAlpha(1.0F);
            } else
            {
                mScrollIndicatorAnimator = ObjectAnimator.ofFloat(mScrollIndicator, "alpha", new float[] {
                    1.0F
                });
                mScrollIndicatorAnimator.setDuration(150L);
                mScrollIndicatorAnimator.start();
            }
        }
    }

    protected void hideScrollingIndicator(boolean immediately)
    {
        if(getChildCount() <= 1)
            return;
        if(!isScrollingIndicatorEnabled())
            return;
        getScrollingIndicator();
        if(mScrollIndicator != null)
        {
            updateScrollingIndicatorPosition();
            if(mScrollIndicatorAnimator != null)
                mScrollIndicatorAnimator.cancel();
            if(immediately)
            {
                mScrollIndicator.setVisibility(8);
                mScrollIndicator.setAlpha(0.0F);
            } else
            {
                mScrollIndicatorAnimator = ObjectAnimator.ofFloat(mScrollIndicator, "alpha", new float[] {
                    0.0F
                });
                mScrollIndicatorAnimator.setDuration(650L);
                mScrollIndicatorAnimator.addListener(new AnimatorListenerAdapter() {

                    public void onAnimationCancel(Animator animation)
                    {
                        cancelled = true;
                    }

                    public void onAnimationEnd(Animator animation)
                    {
                        if(!cancelled)
                            mScrollIndicator.setVisibility(8);
                    }

                    private boolean cancelled;
                    final PagedView this$0;

            
            {
                this$0 = PagedView.this;
                super();
                cancelled = false;
            }
                }
);
                mScrollIndicatorAnimator.start();
            }
        }
    }

    protected boolean hasElasticScrollIndicator()
    {
        return true;
    }

    private void updateScrollingIndicator()
    {
        if(getChildCount() <= 1)
            return;
        if(!isScrollingIndicatorEnabled())
            return;
        getScrollingIndicator();
        if(mScrollIndicator != null)
            updateScrollingIndicatorPosition();
    }

    private void updateScrollingIndicatorPosition()
    {
        if(!isScrollingIndicatorEnabled())
            return;
        if(mScrollIndicator == null)
            return;
        int numPages = getChildCount();
        int pageWidth = getMeasuredWidth();
        int lastChildIndex = Math.max(0, getChildCount() - 1);
        int maxScrollX = getChildOffset(lastChildIndex) - getRelativeChildOffset(lastChildIndex);
        int trackWidth = pageWidth - mScrollIndicatorPaddingLeft - mScrollIndicatorPaddingRight;
        int indicatorWidth = mScrollIndicator.getMeasuredWidth() - mScrollIndicator.getPaddingLeft() - mScrollIndicator.getPaddingRight();
        float offset = Math.max(0.0F, Math.min(1.0F, (float)getScrollX() / (float)maxScrollX));
        int indicatorSpace = trackWidth / numPages;
        int indicatorPos = (int)(offset * (float)(trackWidth - indicatorSpace)) + mScrollIndicatorPaddingLeft;
        if(hasElasticScrollIndicator())
        {
            if(mScrollIndicator.getMeasuredWidth() != indicatorSpace)
            {
                mScrollIndicator.getLayoutParams().width = indicatorSpace;
                mScrollIndicator.requestLayout();
            }
        } else
        {
            int indicatorCenterOffset = indicatorSpace / 2 - indicatorWidth / 2;
            indicatorPos += indicatorCenterOffset;
        }
        mScrollIndicator.setTranslationX(indicatorPos);
        mScrollIndicator.invalidate();
    }

    public void showScrollIndicatorTrack()
    {
    }

    public void hideScrollIndicatorTrack()
    {
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info)
    {
        super.onInitializeAccessibilityNodeInfo(info);
        info.setScrollable(true);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent event)
    {
        super.onInitializeAccessibilityEvent(event);
        event.setScrollable(true);
        if(event.getEventType() == 4096)
        {
            event.setFromIndex(mCurrentPage);
            event.setToIndex(mCurrentPage);
            event.setItemCount(getChildCount());
        }
    }

    protected String getCurrentPageDescription()
    {
        int page = mNextPage == -1 ? mCurrentPage : mNextPage;
        return String.format(mContext.getString(0x7f0c0044), new Object[] {
            Integer.valueOf(page + 1), Integer.valueOf(getChildCount())
        });
    }

    public boolean onHoverEvent(MotionEvent event)
    {
        return true;
    }

    private static final String TAG = "PagedView";
    private static final boolean DEBUG = false;
    protected static final int INVALID_PAGE = -1;
    private static final int MIN_LENGTH_FOR_FLING = 25;
    private static final int MIN_LENGTH_FOR_MOVE = 200;
    private static final int PAGE_SNAP_ANIMATION_DURATION = 550;
    protected static final float NANOTIME_DIV = 1E+009F;
    private static final float OVERSCROLL_ACCELERATE_FACTOR = 2F;
    private static final float OVERSCROLL_DAMP_FACTOR = 0.14F;
    private static final int MINIMUM_SNAP_VELOCITY = 2200;
    private static final int MIN_FLING_VELOCITY = 250;
    private static final float RETURN_TO_ORIGINAL_PAGE_THRESHOLD = 0.33F;
    protected int mSnapVelocity;
    protected float mDensity;
    protected float mSmoothingTime;
    protected float mTouchX;
    protected boolean mFirstLayout;
    protected int mCurrentPage;
    protected int mNextPage;
    protected int mMaxScrollX;
    protected Scroller mScroller;
    private VelocityTracker mVelocityTracker;
    private float mDownMotionX;
    protected float mLastMotionX;
    protected float mLastMotionXRemainder;
    protected float mLastMotionY;
    protected float mTotalMotionX;
    private int mLastScreenCenter;
    protected static final int TOUCH_STATE_REST = 0;
    protected static final int TOUCH_STATE_SCROLLING = 1;
    protected static final int TOUCH_STATE_PREV_PAGE = 2;
    protected static final int TOUCH_STATE_NEXT_PAGE = 3;
    protected static final float ALPHA_QUANTIZE_LEVEL = 0.0001F;
    protected int mTouchState;
    protected android.view.View.OnLongClickListener mLongClickListener;
    protected boolean mAllowLongPress;
    protected int mTouchSlop;
    private int mPagingTouchSlop;
    private int mMaximumVelocity;
    private int mMinimumWidth;
    protected int mPageSpacing;
    protected int mPageLayoutPaddingTop;
    protected int mPageLayoutPaddingBottom;
    protected int mPageLayoutPaddingLeft;
    protected int mPageLayoutPaddingRight;
    protected int mPageLayoutWidthGap;
    protected int mPageLayoutHeightGap;
    protected int mCellCountX;
    protected int mCellCountY;
    protected boolean mCenterPagesVertically;
    protected boolean mAllowOverScroll;
    protected int mUnboundedScrollX;
    protected float mLayoutScale;
    protected static final int INVALID_POINTER = -1;
    protected int mActivePointerId;
    private PageSwitchListener mPageSwitchListener;
    private ArrayList mDirtyPageContent;
    private boolean mDirtyPageAlpha;
    protected static final int CHOICE_MODE_NONE = 0;
    protected static final int CHOICE_MODE_SINGLE = 1;
    protected static final int CHOICE_MODE_MULTIPLE = 2;
    protected int mChoiceMode;
    private ActionMode mActionMode;
    protected boolean mContentIsRefreshable;
    protected boolean mFadeInAdjacentScreens;
    protected boolean mUsePagingTouchSlop;
    protected boolean mDeferScrollUpdate;
    protected boolean mIsPageMoving;
    protected boolean mIsDataReady;
    private ValueAnimator mScrollIndicatorAnimator;
    private ImageView mScrollIndicator;
    private int mScrollIndicatorPaddingLeft;
    private int mScrollIndicatorPaddingRight;
    private boolean mHasScrollIndicator;
    protected static final int sScrollIndicatorFadeInDuration = 150;
    protected static final int sScrollIndicatorFadeOutDuration = 650;
    protected static final int sScrollIndicatorFlashDuration = 650;
    private boolean mDeferLoadAssociatedPagesUntilScrollCompletes;
    Runnable hideScrollingIndicatorRunnable = new Runnable() {

        public void run()
        {
            hideScrollingIndicator(false);
        }

        final PagedView this$0;

            
            {
                this$0 = PagedView.this;
                super();
            }
    }
;

}
