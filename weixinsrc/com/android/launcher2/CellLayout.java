// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CellLayout.java

package com.android.launcher2;

import android.animation.*;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.util.AttributeSet;
import android.view.*;
import android.view.animation.*;
import com.android.launcher.R;
import java.util.*;

// Referenced classes of package com.android.launcher2:
//            InterruptibleInOutAnimator, LauncherModel, CellLayoutChildren, BubbleTextView, 
//            FolderIcon, ItemInfo, LauncherAppWidgetInfo, PendingAddWidgetInfo

public class CellLayout extends ViewGroup
{
    static final class CellInfo
    {

        public String toString()
        {
            return (new StringBuilder("Cell[view=")).append(cell != null ? ((Object) (cell.getClass())) : "null").append(", x=").append(cellX).append(", y=").append(cellY).append("]").toString();
        }

        View cell;
        int cellX;
        int cellY;
        int spanX;
        int spanY;
        int screen;
        long container;

        CellInfo()
        {
            cellX = -1;
            cellY = -1;
        }
    }

    public static class CellLayoutAnimationController extends LayoutAnimationController
    {

        protected long getDelayForView(View view)
        {
            return (long)(int)(Math.random() * 150D);
        }

        public CellLayoutAnimationController(Animation animation, float delay)
        {
            super(animation, delay);
        }
    }

    public static class LayoutParams extends android.view.ViewGroup.MarginLayoutParams
    {

        public void setup(int cellWidth, int cellHeight, int widthGap, int heightGap)
        {
            if(isLockedToGrid)
            {
                int myCellHSpan = cellHSpan;
                int myCellVSpan = cellVSpan;
                int myCellX = cellX;
                int myCellY = cellY;
                width = (myCellHSpan * cellWidth + (myCellHSpan - 1) * widthGap) - leftMargin - rightMargin;
                height = (myCellVSpan * cellHeight + (myCellVSpan - 1) * heightGap) - topMargin - bottomMargin;
                x = myCellX * (cellWidth + widthGap) + leftMargin;
                y = myCellY * (cellHeight + heightGap) + topMargin;
            }
        }

        public String toString()
        {
            return (new StringBuilder("(")).append(cellX).append(", ").append(cellY).append(")").toString();
        }

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

        public int cellX;
        public int cellY;
        public int cellHSpan;
        public int cellVSpan;
        public boolean isLockedToGrid;
        int x;
        int y;
        boolean dropped;

        public LayoutParams(Context c, AttributeSet attrs)
        {
            super(c, attrs);
            isLockedToGrid = true;
            cellHSpan = 1;
            cellVSpan = 1;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams source)
        {
            super(source);
            isLockedToGrid = true;
            cellHSpan = 1;
            cellVSpan = 1;
        }

        public LayoutParams(LayoutParams source)
        {
            super(source);
            isLockedToGrid = true;
            cellX = source.cellX;
            cellY = source.cellY;
            cellHSpan = source.cellHSpan;
            cellVSpan = source.cellVSpan;
        }

        public LayoutParams(int cellX, int cellY, int cellHSpan, int cellVSpan)
        {
            super(-1, -1);
            isLockedToGrid = true;
            this.cellX = cellX;
            this.cellY = cellY;
            this.cellHSpan = cellHSpan;
            this.cellVSpan = cellVSpan;
        }
    }


    public CellLayout(Context context)
    {
        this(context, null);
    }

    public CellLayout(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public CellLayout(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mRect = new Rect();
        mCellInfo = new CellInfo();
        mTmpXY = new int[2];
        mTmpPoint = new int[2];
        mTmpPointF = new PointF();
        mTempLocation = new int[2];
        mLastDownOnOccupiedCell = false;
        mFolderOuterRings = new ArrayList();
        mForegroundAlpha = 0;
        mBackgroundAlphaMultiplier = 1.0F;
        mAcceptsDrops = true;
        mIsDragOverlapping = false;
        mIsDragOccuring = false;
        mIsDefaultDropTarget = false;
        mDragCenter = new Point();
        mDragOutlines = new Point[4];
        mDragOutlineAlphas = new float[mDragOutlines.length];
        mDragOutlineAnims = new InterruptibleInOutAnimator[mDragOutlines.length];
        mDragOutlineCurrent = 0;
        mDragOutlinePaint = new Paint();
        mCrosshairsDrawable = null;
        mCrosshairsAnimator = null;
        mCrosshairsVisibility = 0.0F;
        mReorderAnimators = new HashMap();
        mDragCell = new int[2];
        mDragging = false;
        setWillNotDraw(false);
        TypedArray a = context.obtainStyledAttributes(attrs, com.android.launcher.R.styleable.CellLayout, defStyle, 0);
        mOriginalCellWidth = mCellWidth = a.getDimensionPixelSize(0, 10);
        mOriginalCellHeight = mCellHeight = a.getDimensionPixelSize(1, 10);
        mWidthGap = mOriginalWidthGap = a.getDimensionPixelSize(2, 0);
        mHeightGap = mOriginalHeightGap = a.getDimensionPixelSize(3, 0);
        mMaxGap = a.getDimensionPixelSize(4, 0);
        mCountX = LauncherModel.getCellCountX();
        mCountY = LauncherModel.getCellCountY();
        mOccupied = new boolean[mCountX][mCountY];
        a.recycle();
        setAlwaysDrawnWithCacheEnabled(false);
        Resources res = getResources();
        mNormalBackground = res.getDrawable(0x7f020025);
        mActiveBackground = res.getDrawable(0x7f020026);
        mActiveGlowBackground = res.getDrawable(0x7f020026);
        mNormalBackgroundMini = res.getDrawable(0x7f020027);
        mNormalGlowBackgroundMini = res.getDrawable(0x7f020028);
        mActiveBackgroundMini = res.getDrawable(0x7f020028);
        mActiveGlowBackgroundMini = res.getDrawable(0x7f020028);
        mOverScrollLeft = res.getDrawable(0x7f02003e);
        mOverScrollRight = res.getDrawable(0x7f02003f);
        mForegroundPadding = res.getDimensionPixelSize(0x7f0a0014);
        mNormalBackground.setFilterBitmap(true);
        mActiveBackground.setFilterBitmap(true);
        mActiveGlowBackground.setFilterBitmap(true);
        mNormalBackgroundMini.setFilterBitmap(true);
        mNormalGlowBackgroundMini.setFilterBitmap(true);
        mActiveBackgroundMini.setFilterBitmap(true);
        mActiveGlowBackgroundMini.setFilterBitmap(true);
        mCrosshairsDrawable = res.getDrawable(0x7f02001d);
        mEaseOutInterpolator = new DecelerateInterpolator(2.5F);
        int animDuration = res.getInteger(0x7f090018);
        mCrosshairsAnimator = new InterruptibleInOutAnimator(animDuration, 0.0F, 1.0F);
        mCrosshairsAnimator.getAnimator().addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

            public void onAnimationUpdate(ValueAnimator animation)
            {
                mCrosshairsVisibility = ((Float)animation.getAnimatedValue()).floatValue();
                invalidate();
            }

            final CellLayout this$0;

            
            {
                this$0 = CellLayout.this;
                super();
            }
        }
);
        mCrosshairsAnimator.getAnimator().setInterpolator(mEaseOutInterpolator);
        mDragCell[0] = mDragCell[1] = -1;
        for(int i = 0; i < mDragOutlines.length; i++)
            mDragOutlines[i] = new Point(-1, -1);

        int duration = res.getInteger(0x7f09001a);
        float fromAlphaValue = 0.0F;
        float toAlphaValue = res.getInteger(0x7f09001b);
        Arrays.fill(mDragOutlineAlphas, 0.0F);
        for(int i = 0; i < mDragOutlineAnims.length; i++)
        {
            final InterruptibleInOutAnimator anim = new InterruptibleInOutAnimator(duration, 0.0F, toAlphaValue);
            anim.getAnimator().setInterpolator(mEaseOutInterpolator);
            final int thisIndex = i;
            anim.getAnimator().addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

                public void onAnimationUpdate(ValueAnimator animation)
                {
                    Bitmap outline = (Bitmap)anim.getTag();
                    if(outline == null)
                    {
                        animation.cancel();
                    } else
                    {
                        mDragOutlineAlphas[thisIndex] = ((Float)animation.getAnimatedValue()).floatValue();
                        int left = mDragOutlines[thisIndex].x;
                        int top = mDragOutlines[thisIndex].y;
                        invalidate(left, top, left + outline.getWidth(), top + outline.getHeight());
                    }
                }

                final CellLayout this$0;
                private final InterruptibleInOutAnimator val$anim;
                private final int val$thisIndex;

            
            {
                this$0 = CellLayout.this;
                anim = interruptibleinoutanimator;
                thisIndex = i;
                super();
            }
            }
);
            anim.getAnimator().addListener(new AnimatorListenerAdapter() {

                public void onAnimationEnd(Animator animation)
                {
                    if(((Float)((ValueAnimator)animation).getAnimatedValue()).floatValue() == 0.0F)
                        anim.setTag(null);
                }

                final CellLayout this$0;
                private final InterruptibleInOutAnimator val$anim;

            
            {
                this$0 = CellLayout.this;
                anim = interruptibleinoutanimator;
                super();
            }
            }
);
            mDragOutlineAnims[i] = anim;
        }

        mBackgroundRect = new Rect();
        mForegroundRect = new Rect();
        mGlowBackgroundRect = new Rect();
        setHoverScale(1.0F);
        setHoverAlpha(1.0F);
        mChildren = new CellLayoutChildren(context);
        mChildren.setCellDimensions(mCellWidth, mCellHeight, mWidthGap, mHeightGap);
        addView(mChildren);
    }

    static int widthInPortrait(Resources r, int numCells)
    {
        int cellWidth = r.getDimensionPixelSize(0x7f0a0005);
        int minGap = Math.min(r.getDimensionPixelSize(0x7f0a0007), r.getDimensionPixelSize(0x7f0a0008));
        return minGap * (numCells - 1) + cellWidth * numCells;
    }

    static int heightInLandscape(Resources r, int numCells)
    {
        int cellHeight = r.getDimensionPixelSize(0x7f0a0006);
        int minGap = Math.min(r.getDimensionPixelSize(0x7f0a0007), r.getDimensionPixelSize(0x7f0a0008));
        return minGap * (numCells - 1) + cellHeight * numCells;
    }

    public void enableHardwareLayers()
    {
        mChildren.enableHardwareLayers();
    }

    public void setGridSize(int x, int y)
    {
        mCountX = x;
        mCountY = y;
        mOccupied = new boolean[mCountX][mCountY];
        requestLayout();
    }

    private void invalidateBubbleTextView(BubbleTextView icon)
    {
        int padding = icon.getPressedOrFocusedBackgroundPadding();
        invalidate((icon.getLeft() + getPaddingLeft()) - padding, (icon.getTop() + getPaddingTop()) - padding, icon.getRight() + getPaddingLeft() + padding, icon.getBottom() + getPaddingTop() + padding);
    }

    void setOverScrollAmount(float r, boolean left)
    {
        if(left && mOverScrollForegroundDrawable != mOverScrollLeft)
            mOverScrollForegroundDrawable = mOverScrollLeft;
        else
        if(!left && mOverScrollForegroundDrawable != mOverScrollRight)
            mOverScrollForegroundDrawable = mOverScrollRight;
        mForegroundAlpha = Math.round(r * 255F);
        mOverScrollForegroundDrawable.setAlpha(mForegroundAlpha);
        invalidate();
    }

    void setPressedOrFocusedIcon(BubbleTextView icon)
    {
        BubbleTextView oldIcon = mPressedOrFocusedIcon;
        mPressedOrFocusedIcon = icon;
        if(oldIcon != null)
            invalidateBubbleTextView(oldIcon);
        if(mPressedOrFocusedIcon != null)
            invalidateBubbleTextView(mPressedOrFocusedIcon);
    }

    public CellLayoutChildren getChildrenLayout()
    {
        if(getChildCount() > 0)
            return (CellLayoutChildren)getChildAt(0);
        else
            return null;
    }

    public void setIsDefaultDropTarget(boolean isDefaultDropTarget)
    {
        if(mIsDefaultDropTarget != isDefaultDropTarget)
        {
            mIsDefaultDropTarget = isDefaultDropTarget;
            invalidate();
        }
    }

    void setIsDragOccuring(boolean isDragOccuring)
    {
        if(mIsDragOccuring != isDragOccuring)
        {
            mIsDragOccuring = isDragOccuring;
            invalidate();
        }
    }

    void setIsDragOverlapping(boolean isDragOverlapping)
    {
        if(mIsDragOverlapping != isDragOverlapping)
        {
            mIsDragOverlapping = isDragOverlapping;
            invalidate();
        }
    }

    boolean getIsDragOverlapping()
    {
        return mIsDragOverlapping;
    }

    private void updateGlowRect()
    {
        float marginFraction = (mGlowBackgroundScale - 1.0F) / 2.0F;
        int marginX = (int)(marginFraction * (float)(mBackgroundRect.right - mBackgroundRect.left));
        int marginY = (int)(marginFraction * (float)(mBackgroundRect.bottom - mBackgroundRect.top));
        mGlowBackgroundRect.set(mBackgroundRect.left - marginX, mBackgroundRect.top - marginY, mBackgroundRect.right + marginX, mBackgroundRect.bottom + marginY);
        invalidate();
    }

    public void setHoverScale(float scaleFactor)
    {
        if(scaleFactor != mGlowBackgroundScale)
        {
            mGlowBackgroundScale = scaleFactor;
            updateGlowRect();
            if(getParent() != null)
                ((View)getParent()).invalidate();
        }
    }

    public float getHoverScale()
    {
        return mGlowBackgroundScale;
    }

    public float getHoverAlpha()
    {
        return mGlowBackgroundAlpha;
    }

    public void setHoverAlpha(float alpha)
    {
        mGlowBackgroundAlpha = alpha;
        invalidate();
    }

    void animateDrop()
    {
        Resources res = getResources();
        float onDropScale = (float)res.getInteger(0x7f090006) / 100F;
        ObjectAnimator scaleUp = ObjectAnimator.ofFloat(this, "hoverScale", new float[] {
            onDropScale
        });
        scaleUp.setDuration(res.getInteger(0x7f090007));
        ObjectAnimator scaleDown = ObjectAnimator.ofFloat(this, "hoverScale", new float[] {
            1.0F
        });
        scaleDown.setDuration(res.getInteger(0x7f090008));
        ObjectAnimator alphaFadeOut = ObjectAnimator.ofFloat(this, "hoverAlpha", new float[] {
            0.0F
        });
        alphaFadeOut.setStartDelay(res.getInteger(0x7f090009));
        alphaFadeOut.setDuration(res.getInteger(0x7f09000a));
        AnimatorSet bouncer = new AnimatorSet();
        bouncer.play(scaleUp).before(scaleDown);
        bouncer.play(scaleUp).with(alphaFadeOut);
        bouncer.addListener(new AnimatorListenerAdapter() {

            public void onAnimationStart(Animator animation)
            {
                setIsDragOverlapping(true);
            }

            public void onAnimationEnd(Animator animation)
            {
                setIsDragOverlapping(false);
                setHoverScale(1.0F);
                setHoverAlpha(1.0F);
            }

            final CellLayout this$0;

            
            {
                this$0 = CellLayout.this;
                super();
            }
        }
);
        bouncer.start();
    }

    protected void onDraw(Canvas canvas)
    {
        if(mBackgroundAlpha > 0.0F)
        {
            boolean mini = getScaleX() < 0.5F;
            Drawable bg;
            if(mIsDragOverlapping)
                bg = mini ? mActiveBackgroundMini : mActiveGlowBackground;
            else
            if(mIsDragOccuring && mAcceptsDrops)
                bg = mini ? mActiveBackgroundMini : mActiveBackground;
            else
            if(mIsDefaultDropTarget && mini)
                bg = mNormalGlowBackgroundMini;
            else
                bg = mini ? mNormalBackgroundMini : mNormalBackground;
            bg.setAlpha((int)(mBackgroundAlpha * mBackgroundAlphaMultiplier * 255F));
            bg.setBounds(mBackgroundRect);
            bg.draw(canvas);
            if(mini && mIsDragOverlapping)
            {
                boolean modifiedClipRect = false;
                if(mGlowBackgroundScale > 1.0F)
                {
                    float marginFraction = (mGlowBackgroundScale - 1.0F) / 2.0F;
                    Rect clipRect = canvas.getClipBounds();
                    int marginX = (int)(marginFraction * (float)(clipRect.right - clipRect.left));
                    int marginY = (int)(marginFraction * (float)(clipRect.bottom - clipRect.top));
                    canvas.save(2);
                    canvas.clipRect(-marginX, -marginY, getWidth() + marginX, getHeight() + marginY, android.graphics.Region.Op.REPLACE);
                    modifiedClipRect = true;
                }
                mActiveGlowBackgroundMini.setAlpha((int)(mBackgroundAlpha * mGlowBackgroundAlpha * 255F));
                mActiveGlowBackgroundMini.setBounds(mGlowBackgroundRect);
                mActiveGlowBackgroundMini.draw(canvas);
                if(modifiedClipRect)
                    canvas.restore();
            }
        }
        if(mCrosshairsVisibility > 0.0F)
        {
            int countX = mCountX;
            int countY = mCountY;
            float MAX_ALPHA = 0.4F;
            int MAX_VISIBLE_DISTANCE = 600;
            float DISTANCE_MULTIPLIER = 0.002F;
            Drawable d = mCrosshairsDrawable;
            int width = d.getIntrinsicWidth();
            int height = d.getIntrinsicHeight();
            int x = getPaddingLeft() - mWidthGap / 2 - width / 2;
            for(int col = 0; col <= countX; col++)
            {
                int y = getPaddingTop() - mHeightGap / 2 - height / 2;
                for(int row = 0; row <= countY; row++)
                {
                    mTmpPointF.set(x - mDragCenter.x, y - mDragCenter.y);
                    float dist = mTmpPointF.length();
                    float alpha = Math.min(0.4F, 0.002F * (600F - dist));
                    if(alpha > 0.0F)
                    {
                        d.setBounds(x, y, x + width, y + height);
                        d.setAlpha((int)(alpha * 255F * mCrosshairsVisibility));
                        d.draw(canvas);
                    }
                    y += mCellHeight + mHeightGap;
                }

                x += mCellWidth + mWidthGap;
            }

        }
        Paint paint = mDragOutlinePaint;
        for(int i = 0; i < mDragOutlines.length; i++)
        {
            float alpha = mDragOutlineAlphas[i];
            if(alpha > 0.0F)
            {
                Point p = mDragOutlines[i];
                Bitmap b = (Bitmap)mDragOutlineAnims[i].getTag();
                paint.setAlpha((int)(alpha + 0.5F));
                canvas.drawBitmap(b, p.x, p.y, paint);
            }
        }

        if(mPressedOrFocusedIcon != null)
        {
            int padding = mPressedOrFocusedIcon.getPressedOrFocusedBackgroundPadding();
            Bitmap b = mPressedOrFocusedIcon.getPressedOrFocusedBackground();
            if(b != null)
                canvas.drawBitmap(b, (mPressedOrFocusedIcon.getLeft() + getPaddingLeft()) - padding, (mPressedOrFocusedIcon.getTop() + getPaddingTop()) - padding, null);
        }
        for(int i = 0; i < mFolderOuterRings.size(); i++)
        {
            FolderIcon.FolderRingAnimator fra = (FolderIcon.FolderRingAnimator)mFolderOuterRings.get(i);
            Drawable d = FolderIcon.FolderRingAnimator.sSharedOuterRingDrawable;
            int width = (int)fra.getOuterRingSize();
            int height = width;
            cellToPoint(fra.mCellX, fra.mCellY, mTempLocation);
            int centerX = mTempLocation[0] + mCellWidth / 2;
            int centerY = mTempLocation[1] + FolderIcon.FolderRingAnimator.sPreviewSize / 2;
            canvas.save();
            canvas.translate(centerX - width / 2, centerY - height / 2);
            d.setBounds(0, 0, width, height);
            d.draw(canvas);
            canvas.restore();
            d = FolderIcon.FolderRingAnimator.sSharedInnerRingDrawable;
            width = (int)fra.getInnerRingSize();
            height = width;
            cellToPoint(fra.mCellX, fra.mCellY, mTempLocation);
            centerX = mTempLocation[0] + mCellWidth / 2;
            centerY = mTempLocation[1] + FolderIcon.FolderRingAnimator.sPreviewSize / 2;
            canvas.save();
            canvas.translate(centerX - width / 2, centerY - width / 2);
            d.setBounds(0, 0, width, height);
            d.draw(canvas);
            canvas.restore();
        }

        if(mFolderLeaveBehindCell[0] >= 0 && mFolderLeaveBehindCell[1] >= 0)
        {
            Drawable d = FolderIcon.sSharedFolderLeaveBehind;
            int width = d.getIntrinsicWidth();
            int height = d.getIntrinsicHeight();
            cellToPoint(mFolderLeaveBehindCell[0], mFolderLeaveBehindCell[1], mTempLocation);
            int centerX = mTempLocation[0] + mCellWidth / 2;
            int centerY = mTempLocation[1] + FolderIcon.FolderRingAnimator.sPreviewSize / 2;
            canvas.save();
            canvas.translate(centerX - width / 2, centerY - width / 2);
            d.setBounds(0, 0, width, height);
            d.draw(canvas);
            canvas.restore();
        }
    }

    protected void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        if(mForegroundAlpha > 0)
        {
            mOverScrollForegroundDrawable.setBounds(mForegroundRect);
            Paint p = ((NinePatchDrawable)mOverScrollForegroundDrawable).getPaint();
            p.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.ADD));
            mOverScrollForegroundDrawable.draw(canvas);
            p.setXfermode(null);
        }
    }

    public void showFolderAccept(FolderIcon.FolderRingAnimator fra)
    {
        mFolderOuterRings.add(fra);
    }

    public void hideFolderAccept(FolderIcon.FolderRingAnimator fra)
    {
        if(mFolderOuterRings.contains(fra))
            mFolderOuterRings.remove(fra);
        invalidate();
    }

    public void setFolderLeaveBehindCell(int x, int y)
    {
        mFolderLeaveBehindCell[0] = x;
        mFolderLeaveBehindCell[1] = y;
        invalidate();
    }

    public void clearFolderLeaveBehind()
    {
        mFolderLeaveBehindCell[0] = -1;
        mFolderLeaveBehindCell[1] = -1;
        invalidate();
    }

    public boolean shouldDelayChildPressedState()
    {
        return false;
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

    public void setOnInterceptTouchListener(android.view.View.OnTouchListener listener)
    {
        mInterceptTouchListener = listener;
    }

    int getCountX()
    {
        return mCountX;
    }

    int getCountY()
    {
        return mCountY;
    }

    public boolean addViewToCellLayout(View child, int index, int childId, LayoutParams params, boolean markCells)
    {
        LayoutParams lp = params;
        if(lp.cellX >= 0 && lp.cellX <= mCountX - 1 && lp.cellY >= 0 && lp.cellY <= mCountY - 1)
        {
            if(lp.cellHSpan < 0)
                lp.cellHSpan = mCountX;
            if(lp.cellVSpan < 0)
                lp.cellVSpan = mCountY;
            child.setId(childId);
            mChildren.addView(child, index, lp);
            if(markCells)
                markCellsAsOccupiedForView(child);
            return true;
        } else
        {
            return false;
        }
    }

    public void setAcceptsDrops(boolean acceptsDrops)
    {
        if(mAcceptsDrops != acceptsDrops)
        {
            mAcceptsDrops = acceptsDrops;
            invalidate();
        }
    }

    public void removeAllViews()
    {
        clearOccupiedCells();
        mChildren.removeAllViews();
    }

    public void removeAllViewsInLayout()
    {
        if(mChildren.getChildCount() > 0)
        {
            clearOccupiedCells();
            mChildren.removeAllViewsInLayout();
        }
    }

    public void removeViewWithoutMarkingCells(View view)
    {
        mChildren.removeView(view);
    }

    public void removeView(View view)
    {
        markCellsAsUnoccupiedForView(view);
        mChildren.removeView(view);
    }

    public void removeViewAt(int index)
    {
        markCellsAsUnoccupiedForView(mChildren.getChildAt(index));
        mChildren.removeViewAt(index);
    }

    public void removeViewInLayout(View view)
    {
        markCellsAsUnoccupiedForView(view);
        mChildren.removeViewInLayout(view);
    }

    public void removeViews(int start, int count)
    {
        for(int i = start; i < start + count; i++)
            markCellsAsUnoccupiedForView(mChildren.getChildAt(i));

        mChildren.removeViews(start, count);
    }

    public void removeViewsInLayout(int start, int count)
    {
        for(int i = start; i < start + count; i++)
            markCellsAsUnoccupiedForView(mChildren.getChildAt(i));

        mChildren.removeViewsInLayout(start, count);
    }

    public void drawChildren(Canvas canvas)
    {
        mChildren.draw(canvas);
    }

    void buildChildrenLayer()
    {
        mChildren.buildLayer();
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        mCellInfo.screen = ((ViewGroup)getParent()).indexOfChild(this);
    }

    public void setTagToCellInfoForPoint(int touchX, int touchY)
    {
        CellInfo cellInfo = mCellInfo;
        Rect frame = mRect;
        int x = touchX + mScrollX;
        int y = touchY + mScrollY;
        int count = mChildren.getChildCount();
        boolean found = false;
        for(int i = count - 1; i >= 0; i--)
        {
            View child = mChildren.getChildAt(i);
            LayoutParams lp = (LayoutParams)child.getLayoutParams();
            if(child.getVisibility() != 0 && child.getAnimation() == null || !lp.isLockedToGrid)
                continue;
            child.getHitRect(frame);
            frame.offset(mPaddingLeft, mPaddingTop);
            if(!frame.contains(x, y))
                continue;
            cellInfo.cell = child;
            cellInfo.cellX = lp.cellX;
            cellInfo.cellY = lp.cellY;
            cellInfo.spanX = lp.cellHSpan;
            cellInfo.spanY = lp.cellVSpan;
            found = true;
            break;
        }

        mLastDownOnOccupiedCell = found;
        if(!found)
        {
            int cellXY[] = mTmpXY;
            pointToCellExact(x, y, cellXY);
            cellInfo.cell = null;
            cellInfo.cellX = cellXY[0];
            cellInfo.cellY = cellXY[1];
            cellInfo.spanX = 1;
            cellInfo.spanY = 1;
        }
        setTag(cellInfo);
    }

    public boolean onInterceptTouchEvent(MotionEvent ev)
    {
        int action = ev.getAction();
        if(action == 0)
            clearTagCellInfo();
        if(mInterceptTouchListener != null && mInterceptTouchListener.onTouch(this, ev))
            return true;
        if(action == 0)
            setTagToCellInfoForPoint((int)ev.getX(), (int)ev.getY());
        return false;
    }

    private void clearTagCellInfo()
    {
        CellInfo cellInfo = mCellInfo;
        cellInfo.cell = null;
        cellInfo.cellX = -1;
        cellInfo.cellY = -1;
        cellInfo.spanX = 0;
        cellInfo.spanY = 0;
        setTag(cellInfo);
    }

    public CellInfo getTag()
    {
        return (CellInfo)super.getTag();
    }

    void pointToCellExact(int x, int y, int result[])
    {
        int hStartPadding = getPaddingLeft();
        int vStartPadding = getPaddingTop();
        result[0] = (x - hStartPadding) / (mCellWidth + mWidthGap);
        result[1] = (y - vStartPadding) / (mCellHeight + mHeightGap);
        int xAxis = mCountX;
        int yAxis = mCountY;
        if(result[0] < 0)
            result[0] = 0;
        if(result[0] >= xAxis)
            result[0] = xAxis - 1;
        if(result[1] < 0)
            result[1] = 0;
        if(result[1] >= yAxis)
            result[1] = yAxis - 1;
    }

    void pointToCellRounded(int x, int y, int result[])
    {
        pointToCellExact(x + mCellWidth / 2, y + mCellHeight / 2, result);
    }

    void cellToPoint(int cellX, int cellY, int result[])
    {
        int hStartPadding = getPaddingLeft();
        int vStartPadding = getPaddingTop();
        result[0] = hStartPadding + cellX * (mCellWidth + mWidthGap);
        result[1] = vStartPadding + cellY * (mCellHeight + mHeightGap);
    }

    void cellToCenterPoint(int cellX, int cellY, int result[])
    {
        int hStartPadding = getPaddingLeft();
        int vStartPadding = getPaddingTop();
        result[0] = hStartPadding + cellX * (mCellWidth + mWidthGap) + mCellWidth / 2;
        result[1] = vStartPadding + cellY * (mCellHeight + mHeightGap) + mCellHeight / 2;
    }

    int getCellWidth()
    {
        return mCellWidth;
    }

    int getCellHeight()
    {
        return mCellHeight;
    }

    int getWidthGap()
    {
        return mWidthGap;
    }

    int getHeightGap()
    {
        return mHeightGap;
    }

    Rect getContentRect(Rect r)
    {
        if(r == null)
            r = new Rect();
        int left = getPaddingLeft();
        int top = getPaddingTop();
        int right = (left + getWidth()) - mPaddingLeft - mPaddingRight;
        int bottom = (top + getHeight()) - mPaddingTop - mPaddingBottom;
        r.set(left, top, right, bottom);
        return r;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
    {
        int widthSpecMode = android.view.View.MeasureSpec.getMode(widthMeasureSpec);
        int widthSpecSize = android.view.View.MeasureSpec.getSize(widthMeasureSpec);
        int heightSpecMode = android.view.View.MeasureSpec.getMode(heightMeasureSpec);
        int heightSpecSize = android.view.View.MeasureSpec.getSize(heightMeasureSpec);
        if(widthSpecMode == 0 || heightSpecMode == 0)
            throw new RuntimeException("CellLayout cannot have UNSPECIFIED dimensions");
        int numWidthGaps = mCountX - 1;
        int numHeightGaps = mCountY - 1;
        if(mOriginalWidthGap < 0 || mOriginalHeightGap < 0)
        {
            int hSpace = widthSpecSize - mPaddingLeft - mPaddingRight;
            int vSpace = heightSpecSize - mPaddingTop - mPaddingBottom;
            int hFreeSpace = hSpace - mCountX * mOriginalCellWidth;
            int vFreeSpace = vSpace - mCountY * mOriginalCellHeight;
            mWidthGap = Math.min(mMaxGap, numWidthGaps <= 0 ? 0 : hFreeSpace / numWidthGaps);
            mHeightGap = Math.min(mMaxGap, numHeightGaps <= 0 ? 0 : vFreeSpace / numHeightGaps);
            mChildren.setCellDimensions(mCellWidth, mCellHeight, mWidthGap, mHeightGap);
        } else
        {
            mWidthGap = mOriginalWidthGap;
            mHeightGap = mOriginalHeightGap;
        }
        int newWidth = widthSpecSize;
        int newHeight = heightSpecSize;
        if(widthSpecMode == 0x80000000)
        {
            newWidth = mPaddingLeft + mPaddingRight + mCountX * mCellWidth + (mCountX - 1) * mWidthGap;
            newHeight = mPaddingTop + mPaddingBottom + mCountY * mCellHeight + (mCountY - 1) * mHeightGap;
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

    protected void onLayout(boolean changed, int l, int t, int r, int b)
    {
        int count = getChildCount();
        for(int i = 0; i < count; i++)
        {
            View child = getChildAt(i);
            child.layout(mPaddingLeft, mPaddingTop, r - l - mPaddingRight, b - t - mPaddingBottom);
        }

    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh)
    {
        super.onSizeChanged(w, h, oldw, oldh);
        mBackgroundRect.set(0, 0, w, h);
        mForegroundRect.set(mForegroundPadding, mForegroundPadding, w - 2 * mForegroundPadding, h - 2 * mForegroundPadding);
        updateGlowRect();
    }

    protected void setChildrenDrawingCacheEnabled(boolean enabled)
    {
        mChildren.setChildrenDrawingCacheEnabled(enabled);
    }

    protected void setChildrenDrawnWithCacheEnabled(boolean enabled)
    {
        mChildren.setChildrenDrawnWithCacheEnabled(enabled);
    }

    public float getBackgroundAlpha()
    {
        return mBackgroundAlpha;
    }

    public void setFastBackgroundAlpha(float alpha)
    {
        mBackgroundAlpha = alpha;
    }

    public void setBackgroundAlphaMultiplier(float multiplier)
    {
        mBackgroundAlphaMultiplier = multiplier;
    }

    public float getBackgroundAlphaMultiplier()
    {
        return mBackgroundAlphaMultiplier;
    }

    public void setBackgroundAlpha(float alpha)
    {
        mBackgroundAlpha = alpha;
        invalidate();
    }

    protected boolean onSetAlpha(int alpha)
    {
        return true;
    }

    public void setAlpha(float alpha)
    {
        setChildrenAlpha(alpha);
        super.setAlpha(alpha);
    }

    public void setFastAlpha(float alpha)
    {
        setFastChildrenAlpha(alpha);
        super.setFastAlpha(alpha);
    }

    private void setChildrenAlpha(float alpha)
    {
        int childCount = getChildCount();
        for(int i = 0; i < childCount; i++)
            getChildAt(i).setAlpha(alpha);

    }

    private void setFastChildrenAlpha(float alpha)
    {
        int childCount = getChildCount();
        for(int i = 0; i < childCount; i++)
            getChildAt(i).setFastAlpha(alpha);

    }

    public View getChildAt(int x, int y)
    {
        return mChildren.getChildAt(x, y);
    }

    public boolean animateChildToPosition(final View child, int cellX, int cellY, int duration, int delay)
    {
        CellLayoutChildren clc = getChildrenLayout();
        if(clc.indexOfChild(child) != -1 && !mOccupied[cellX][cellY])
        {
            final LayoutParams lp = (LayoutParams)child.getLayoutParams();
            ItemInfo info = (ItemInfo)child.getTag();
            if(mReorderAnimators.containsKey(lp))
            {
                ((ObjectAnimator)mReorderAnimators.get(lp)).cancel();
                mReorderAnimators.remove(lp);
            }
            int oldX = lp.x;
            int oldY = lp.y;
            mOccupied[lp.cellX][lp.cellY] = false;
            mOccupied[cellX][cellY] = true;
            lp.isLockedToGrid = true;
            lp.cellX = info.cellX = cellX;
            lp.cellY = info.cellY = cellY;
            clc.setupLp(lp);
            lp.isLockedToGrid = false;
            int newX = lp.x;
            int newY = lp.y;
            lp.x = oldX;
            lp.y = oldY;
            child.requestLayout();
            PropertyValuesHolder x = PropertyValuesHolder.ofInt("x", new int[] {
                oldX, newX
            });
            PropertyValuesHolder y = PropertyValuesHolder.ofInt("y", new int[] {
                oldY, newY
            });
            ObjectAnimator oa = ObjectAnimator.ofPropertyValuesHolder(lp, new PropertyValuesHolder[] {
                x, y
            });
            oa.setDuration(duration);
            mReorderAnimators.put(lp, oa);
            oa.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

                public void onAnimationUpdate(ValueAnimator animation)
                {
                    child.requestLayout();
                }

                final CellLayout this$0;
                private final View val$child;

            
            {
                this$0 = CellLayout.this;
                child = view;
                super();
            }
            }
);
            oa.addListener(new AnimatorListenerAdapter() {

                public void onAnimationEnd(Animator animation)
                {
                    if(!cancelled)
                        lp.isLockedToGrid = true;
                    if(mReorderAnimators.containsKey(lp))
                        mReorderAnimators.remove(lp);
                }

                public void onAnimationCancel(Animator animation)
                {
                    cancelled = true;
                }

                boolean cancelled;
                final CellLayout this$0;
                private final LayoutParams val$lp;

            
            {
                this$0 = CellLayout.this;
                lp = layoutparams;
                super();
                cancelled = false;
            }
            }
);
            oa.setStartDelay(delay);
            oa.start();
            return true;
        } else
        {
            return false;
        }
    }

    void estimateDropCell(int originX, int originY, int spanX, int spanY, int result[])
    {
        int countX = mCountX;
        int countY = mCountY;
        pointToCellRounded(originX, originY, result);
        int rightOverhang = (result[0] + spanX) - countX;
        if(rightOverhang > 0)
            result[0] -= rightOverhang;
        result[0] = Math.max(0, result[0]);
        int bottomOverhang = (result[1] + spanY) - countY;
        if(bottomOverhang > 0)
            result[1] -= bottomOverhang;
        result[1] = Math.max(0, result[1]);
    }

    void visualizeDropLocation(View v, Bitmap dragOutline, int originX, int originY, int spanX, int spanY, Point dragOffset, 
            Rect dragRegion)
    {
        int oldDragCellX = mDragCell[0];
        int oldDragCellY = mDragCell[1];
        int nearest[] = findNearestVacantArea(originX, originY, spanX, spanY, v, mDragCell);
        if(v != null && dragOffset == null)
            mDragCenter.set(originX + v.getWidth() / 2, originY + v.getHeight() / 2);
        else
            mDragCenter.set(originX, originY);
        if(dragOutline == null && v == null)
        {
            if(mCrosshairsDrawable != null)
                invalidate();
            return;
        }
        if(nearest != null && (nearest[0] != oldDragCellX || nearest[1] != oldDragCellY))
        {
            int topLeft[] = mTmpPoint;
            cellToPoint(nearest[0], nearest[1], topLeft);
            int left = topLeft[0];
            int top = topLeft[1];
            if(v != null && dragOffset == null)
            {
                android.view.ViewGroup.MarginLayoutParams lp = (android.view.ViewGroup.MarginLayoutParams)v.getLayoutParams();
                left += lp.leftMargin;
                top += lp.topMargin;
                top += (v.getHeight() - dragOutline.getHeight()) / 2;
                left += ((mCellWidth * spanX + (spanX - 1) * mWidthGap) - dragOutline.getWidth()) / 2;
            } else
            if(dragOffset != null && dragRegion != null)
            {
                left += dragOffset.x + ((mCellWidth * spanX + (spanX - 1) * mWidthGap) - dragRegion.width()) / 2;
                top += dragOffset.y;
            } else
            {
                left += ((mCellWidth * spanX + (spanX - 1) * mWidthGap) - dragOutline.getWidth()) / 2;
                top += ((mCellHeight * spanY + (spanY - 1) * mHeightGap) - dragOutline.getHeight()) / 2;
            }
            int oldIndex = mDragOutlineCurrent;
            mDragOutlineAnims[oldIndex].animateOut();
            mDragOutlineCurrent = (oldIndex + 1) % mDragOutlines.length;
            mDragOutlines[mDragOutlineCurrent].set(left, top);
            mDragOutlineAnims[mDragOutlineCurrent].setTag(dragOutline);
            mDragOutlineAnims[mDragOutlineCurrent].animateIn();
        }
        if(mCrosshairsDrawable != null)
            invalidate();
    }

    public void clearDragOutlines()
    {
        int oldIndex = mDragOutlineCurrent;
        mDragOutlineAnims[oldIndex].animateOut();
        mDragCell[0] = -1;
        mDragCell[1] = -1;
    }

    int[] findNearestVacantArea(int pixelX, int pixelY, int spanX, int spanY, int result[])
    {
        return findNearestVacantArea(pixelX, pixelY, spanX, spanY, null, result);
    }

    int[] findNearestArea(int pixelX, int pixelY, int spanX, int spanY, View ignoreView, boolean ignoreOccupied, int result[])
    {
        markCellsAsUnoccupiedForView(ignoreView);
        pixelX = (int)((float)pixelX - (float)((mCellWidth + mWidthGap) * (spanX - 1)) / 2.0F);
        pixelY = (int)((float)pixelY - (float)((mCellHeight + mHeightGap) * (spanY - 1)) / 2.0F);
        int bestXY[] = result == null ? new int[2] : result;
        double bestDistance = 1.7976931348623157E+308D;
        int countX = mCountX;
        int countY = mCountY;
        boolean occupied[][] = mOccupied;
        for(int y = 0; y < countY - (spanY - 1); y++)
        {
label0:
            for(int x = 0; x < countX - (spanX - 1); x++)
            {
                if(ignoreOccupied)
                {
                    for(int i = 0; i < spanX; i++)
                    {
                        for(int j = 0; j < spanY; j++)
                        {
                            if(!occupied[x + i][y + j])
                                continue;
                            x += i;
                            continue label0;
                        }

                    }

                }
                int cellXY[] = mTmpXY;
                cellToCenterPoint(x, y, cellXY);
                double distance = Math.sqrt(Math.pow(cellXY[0] - pixelX, 2D) + Math.pow(cellXY[1] - pixelY, 2D));
                if(distance <= bestDistance)
                {
                    bestDistance = distance;
                    bestXY[0] = x;
                    bestXY[1] = y;
                }
            }

        }

        markCellsAsOccupiedForView(ignoreView);
        if(bestDistance == 1.7976931348623157E+308D)
        {
            bestXY[0] = -1;
            bestXY[1] = -1;
        }
        return bestXY;
    }

    int[] findNearestVacantArea(int pixelX, int pixelY, int spanX, int spanY, View ignoreView, int result[])
    {
        return findNearestArea(pixelX, pixelY, spanX, spanY, ignoreView, true, result);
    }

    int[] findNearestArea(int pixelX, int pixelY, int spanX, int spanY, int result[])
    {
        return findNearestArea(pixelX, pixelY, spanX, spanY, null, false, result);
    }

    boolean existsEmptyCell()
    {
        return findCellForSpan(null, 1, 1);
    }

    boolean findCellForSpan(int cellXY[], int spanX, int spanY)
    {
        return findCellForSpanThatIntersectsIgnoring(cellXY, spanX, spanY, -1, -1, null);
    }

    boolean findCellForSpanIgnoring(int cellXY[], int spanX, int spanY, View ignoreView)
    {
        return findCellForSpanThatIntersectsIgnoring(cellXY, spanX, spanY, -1, -1, ignoreView);
    }

    boolean findCellForSpanThatIntersects(int cellXY[], int spanX, int spanY, int intersectX, int intersectY)
    {
        return findCellForSpanThatIntersectsIgnoring(cellXY, spanX, spanY, intersectX, intersectY, null);
    }

    boolean findCellForSpanThatIntersectsIgnoring(int cellXY[], int spanX, int spanY, int intersectX, int intersectY, View ignoreView)
    {
        markCellsAsUnoccupiedForView(ignoreView);
        boolean foundCell = false;
        do
        {
            int startX = 0;
            if(intersectX >= 0)
                startX = Math.max(startX, intersectX - (spanX - 1));
            int endX = mCountX - (spanX - 1);
            if(intersectX >= 0)
                endX = Math.min(endX, intersectX + (spanX - 1) + (spanX != 1 ? 0 : 1));
            int startY = 0;
            if(intersectY >= 0)
                startY = Math.max(startY, intersectY - (spanY - 1));
            int endY = mCountY - (spanY - 1);
            if(intersectY >= 0)
                endY = Math.min(endY, intersectY + (spanY - 1) + (spanY != 1 ? 0 : 1));
            for(int y = startY; y < endY && !foundCell; y++)
            {
label0:
                for(int x = startX; x < endX; x++)
                {
                    for(int i = 0; i < spanX; i++)
                    {
                        for(int j = 0; j < spanY; j++)
                        {
                            if(!mOccupied[x + i][y + j])
                                continue;
                            x += i;
                            continue label0;
                        }

                    }

                    if(cellXY != null)
                    {
                        cellXY[0] = x;
                        cellXY[1] = y;
                    }
                    foundCell = true;
                    break;
                }

            }

            if(intersectX != -1 || intersectY != -1)
            {
                intersectX = -1;
                intersectY = -1;
            } else
            {
                markCellsAsOccupiedForView(ignoreView);
                return foundCell;
            }
        } while(true);
    }

    void onDragEnter()
    {
        if(!mDragging && mCrosshairsAnimator != null)
            mCrosshairsAnimator.animateIn();
        mDragging = true;
    }

    void onDragExit()
    {
        if(mDragging)
        {
            mDragging = false;
            if(mCrosshairsAnimator != null)
                mCrosshairsAnimator.animateOut();
        }
        mDragCell[0] = -1;
        mDragCell[1] = -1;
        mDragOutlineAnims[mDragOutlineCurrent].animateOut();
        mDragOutlineCurrent = (mDragOutlineCurrent + 1) % mDragOutlineAnims.length;
        setIsDragOverlapping(false);
    }

    void onDropChild(View child)
    {
        if(child != null)
        {
            LayoutParams lp = (LayoutParams)child.getLayoutParams();
            lp.dropped = true;
            child.requestLayout();
        }
    }

    public void cellToRect(int cellX, int cellY, int cellHSpan, int cellVSpan, RectF resultRect)
    {
        int cellWidth = mCellWidth;
        int cellHeight = mCellHeight;
        int widthGap = mWidthGap;
        int heightGap = mHeightGap;
        int hStartPadding = getPaddingLeft();
        int vStartPadding = getPaddingTop();
        int width = cellHSpan * cellWidth + (cellHSpan - 1) * widthGap;
        int height = cellVSpan * cellHeight + (cellVSpan - 1) * heightGap;
        int x = hStartPadding + cellX * (cellWidth + widthGap);
        int y = vStartPadding + cellY * (cellHeight + heightGap);
        resultRect.set(x, y, x + width, y + height);
    }

    public int[] rectToCell(int width, int height, int result[])
    {
        return rectToCell(getResources(), width, height, result);
    }

    public static int[] rectToCell(Resources resources, int width, int height, int result[])
    {
        int actualWidth = resources.getDimensionPixelSize(0x7f0a0005);
        int actualHeight = resources.getDimensionPixelSize(0x7f0a0006);
        int smallerSize = Math.min(actualWidth, actualHeight);
        int spanX = (int)Math.ceil((float)width / (float)smallerSize);
        int spanY = (int)Math.ceil((float)height / (float)smallerSize);
        if(result == null)
        {
            return (new int[] {
                spanX, spanY
            });
        } else
        {
            result[0] = spanX;
            result[1] = spanY;
            return result;
        }
    }

    public int[] cellSpansToSize(int hSpans, int vSpans)
    {
        int size[] = new int[2];
        size[0] = hSpans * mCellWidth + (hSpans - 1) * mWidthGap;
        size[1] = vSpans * mCellHeight + (vSpans - 1) * mHeightGap;
        return size;
    }

    public void calculateSpans(ItemInfo info)
    {
        int minWidth;
        int minHeight;
        if(info instanceof LauncherAppWidgetInfo)
        {
            minWidth = ((LauncherAppWidgetInfo)info).minWidth;
            minHeight = ((LauncherAppWidgetInfo)info).minHeight;
        } else
        if(info instanceof PendingAddWidgetInfo)
        {
            minWidth = ((PendingAddWidgetInfo)info).minWidth;
            minHeight = ((PendingAddWidgetInfo)info).minHeight;
        } else
        {
            info.spanX = info.spanY = 1;
            return;
        }
        int spans[] = rectToCell(minWidth, minHeight, null);
        info.spanX = spans[0];
        info.spanY = spans[1];
    }

    public boolean getVacantCell(int vacant[], int spanX, int spanY)
    {
        return findVacantCell(vacant, spanX, spanY, mCountX, mCountY, mOccupied);
    }

    static boolean findVacantCell(int vacant[], int spanX, int spanY, int xCount, int yCount, boolean occupied[][])
    {
        for(int y = 0; y < yCount; y++)
        {
            for(int x = 0; x < xCount; x++)
            {
                boolean available = !occupied[x][y];
label0:
                for(int i = x; i < (x + spanX) - 1 && x < xCount; i++)
                {
                    for(int j = y; j < (y + spanY) - 1 && y < yCount; j++)
                    {
                        available = available && !occupied[i][j];
                        if(!available)
                            break label0;
                    }

                }

                if(available)
                {
                    vacant[0] = x;
                    vacant[1] = y;
                    return true;
                }
            }

        }

        return false;
    }

    private void clearOccupiedCells()
    {
        for(int x = 0; x < mCountX; x++)
        {
            for(int y = 0; y < mCountY; y++)
                mOccupied[x][y] = false;

        }

    }

    public void getExpandabilityArrayForView(View view, int expandability[])
    {
        LayoutParams lp = (LayoutParams)view.getLayoutParams();
        expandability[0] = 0;
        for(int x = lp.cellX - 1; x >= 0; x--)
        {
            boolean flag = false;
            for(int y = lp.cellY; y < lp.cellY + lp.cellVSpan; y++)
                if(mOccupied[x][y])
                    flag = true;

            if(flag)
                break;
            expandability[0]++;
        }

        expandability[1] = 0;
        for(int y = lp.cellY - 1; y >= 0; y--)
        {
            boolean flag = false;
            for(int x = lp.cellX; x < lp.cellX + lp.cellHSpan; x++)
                if(mOccupied[x][y])
                    flag = true;

            if(flag)
                break;
            expandability[1]++;
        }

        expandability[2] = 0;
        for(int x = lp.cellX + lp.cellHSpan; x < mCountX; x++)
        {
            boolean flag = false;
            for(int y = lp.cellY; y < lp.cellY + lp.cellVSpan; y++)
                if(mOccupied[x][y])
                    flag = true;

            if(flag)
                break;
            expandability[2]++;
        }

        expandability[3] = 0;
        for(int y = lp.cellY + lp.cellVSpan; y < mCountY; y++)
        {
            boolean flag = false;
            for(int x = lp.cellX; x < lp.cellX + lp.cellHSpan; x++)
                if(mOccupied[x][y])
                    flag = true;

            if(flag)
                break;
            expandability[3]++;
        }

    }

    public void onMove(View view, int newCellX, int newCellY)
    {
        LayoutParams lp = (LayoutParams)view.getLayoutParams();
        markCellsAsUnoccupiedForView(view);
        markCellsForView(newCellX, newCellY, lp.cellHSpan, lp.cellVSpan, true);
    }

    public void markCellsAsOccupiedForView(View view)
    {
        if(view == null || view.getParent() != mChildren)
        {
            return;
        } else
        {
            LayoutParams lp = (LayoutParams)view.getLayoutParams();
            markCellsForView(lp.cellX, lp.cellY, lp.cellHSpan, lp.cellVSpan, true);
            return;
        }
    }

    public void markCellsAsUnoccupiedForView(View view)
    {
        if(view == null || view.getParent() != mChildren)
        {
            return;
        } else
        {
            LayoutParams lp = (LayoutParams)view.getLayoutParams();
            markCellsForView(lp.cellX, lp.cellY, lp.cellHSpan, lp.cellVSpan, false);
            return;
        }
    }

    private void markCellsForView(int cellX, int cellY, int spanX, int spanY, boolean value)
    {
        for(int x = cellX; x < cellX + spanX && x < mCountX; x++)
        {
            for(int y = cellY; y < cellY + spanY && y < mCountY; y++)
                mOccupied[x][y] = value;

        }

    }

    public int getDesiredWidth()
    {
        return mPaddingLeft + mPaddingRight + mCountX * mCellWidth + Math.max(mCountX - 1, 0) * mWidthGap;
    }

    public int getDesiredHeight()
    {
        return mPaddingTop + mPaddingBottom + mCountY * mCellHeight + Math.max(mCountY - 1, 0) * mHeightGap;
    }

    public boolean isOccupied(int x, int y)
    {
        if(x < mCountX && y < mCountY)
            return mOccupied[x][y];
        else
            throw new RuntimeException("Position exceeds the bound of this CellLayout");
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

    public boolean lastDownOnOccupiedCell()
    {
        return mLastDownOnOccupiedCell;
    }

    public volatile Object getTag()
    {
        return getTag();
    }

    static final String TAG = "CellLayout";
    private int mOriginalCellWidth;
    private int mOriginalCellHeight;
    private int mCellWidth;
    private int mCellHeight;
    private int mCountX;
    private int mCountY;
    private int mOriginalWidthGap;
    private int mOriginalHeightGap;
    private int mWidthGap;
    private int mHeightGap;
    private int mMaxGap;
    private final Rect mRect;
    private final CellInfo mCellInfo;
    private final int mTmpXY[];
    private final int mTmpPoint[];
    private final PointF mTmpPointF;
    int mTempLocation[];
    boolean mOccupied[][];
    private boolean mLastDownOnOccupiedCell;
    private android.view.View.OnTouchListener mInterceptTouchListener;
    private ArrayList mFolderOuterRings;
    private int mFolderLeaveBehindCell[] = {
        -1, -1
    };
    private int mForegroundAlpha;
    private float mBackgroundAlpha;
    private float mBackgroundAlphaMultiplier;
    private Drawable mNormalBackground;
    private Drawable mActiveBackground;
    private Drawable mActiveGlowBackground;
    private Drawable mNormalBackgroundMini;
    private Drawable mNormalGlowBackgroundMini;
    private Drawable mActiveBackgroundMini;
    private Drawable mActiveGlowBackgroundMini;
    private Drawable mOverScrollForegroundDrawable;
    private Drawable mOverScrollLeft;
    private Drawable mOverScrollRight;
    private Rect mBackgroundRect;
    private Rect mForegroundRect;
    private Rect mGlowBackgroundRect;
    private float mGlowBackgroundScale;
    private float mGlowBackgroundAlpha;
    private int mForegroundPadding;
    private boolean mAcceptsDrops;
    private boolean mIsDragOverlapping;
    private boolean mIsDragOccuring;
    private boolean mIsDefaultDropTarget;
    private final Point mDragCenter;
    private Point mDragOutlines[];
    private float mDragOutlineAlphas[];
    private InterruptibleInOutAnimator mDragOutlineAnims[];
    private int mDragOutlineCurrent;
    private final Paint mDragOutlinePaint;
    private BubbleTextView mPressedOrFocusedIcon;
    private Drawable mCrosshairsDrawable;
    private InterruptibleInOutAnimator mCrosshairsAnimator;
    private float mCrosshairsVisibility;
    private HashMap mReorderAnimators;
    private final int mDragCell[];
    private boolean mDragging;
    private TimeInterpolator mEaseOutInterpolator;
    private CellLayoutChildren mChildren;




}
