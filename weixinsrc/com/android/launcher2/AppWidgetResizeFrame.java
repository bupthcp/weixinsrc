// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AppWidgetResizeFrame.java

package com.android.launcher2;

import android.animation.*;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;

// Referenced classes of package com.android.launcher2:
//            Launcher, LauncherAppWidgetHostView, DragLayer, Workspace, 
//            CellLayout, LauncherModel, ItemInfo

public class AppWidgetResizeFrame extends FrameLayout
{

    public AppWidgetResizeFrame(Context context, ItemInfo itemInfo, LauncherAppWidgetHostView widgetView, CellLayout cellLayout, DragLayer dragLayer)
    {
        super(context);
        mExpandability = new int[4];
        mLauncher = (Launcher)context;
        mItemInfo = itemInfo;
        mCellLayout = cellLayout;
        mWidgetView = widgetView;
        mResizeMode = widgetView.getAppWidgetInfo().resizeMode;
        mDragLayer = dragLayer;
        mWorkspace = (Workspace)dragLayer.findViewById(0x7f06001a);
        AppWidgetProviderInfo info = widgetView.getAppWidgetInfo();
        int result[] = mLauncher.getMinResizeSpanForWidget(info, null);
        mMinHSpan = result[0];
        mMinVSpan = result[1];
        setBackgroundResource(0x7f0200b8);
        setPadding(0, 0, 0, 0);
        mLeftHandle = new ImageView(context);
        mLeftHandle.setImageResource(0x7f0200ba);
        android.widget.FrameLayout.LayoutParams lp = new android.widget.FrameLayout.LayoutParams(-2, -2, 19);
        addView(mLeftHandle, lp);
        mRightHandle = new ImageView(context);
        mRightHandle.setImageResource(0x7f0200bb);
        lp = new android.widget.FrameLayout.LayoutParams(-2, -2, 21);
        addView(mRightHandle, lp);
        mTopHandle = new ImageView(context);
        mTopHandle.setImageResource(0x7f0200bc);
        lp = new android.widget.FrameLayout.LayoutParams(-2, -2, 49);
        addView(mTopHandle, lp);
        mBottomHandle = new ImageView(context);
        mBottomHandle.setImageResource(0x7f0200b9);
        lp = new android.widget.FrameLayout.LayoutParams(-2, -2, 81);
        addView(mBottomHandle, lp);
        Launcher.Padding p = mLauncher.getPaddingForWidget(widgetView.getAppWidgetInfo().provider);
        mWidgetPaddingLeft = p.left;
        mWidgetPaddingTop = p.top;
        mWidgetPaddingRight = p.right;
        mWidgetPaddingBottom = p.bottom;
        if(mResizeMode == 1)
        {
            mTopHandle.setVisibility(8);
            mBottomHandle.setVisibility(8);
        } else
        if(mResizeMode == 2)
        {
            mLeftHandle.setVisibility(8);
            mRightHandle.setVisibility(8);
        }
        float density = mLauncher.getResources().getDisplayMetrics().density;
        mBackgroundPadding = (int)Math.ceil(density * 24F);
        mTouchTargetWidth = 2 * mBackgroundPadding;
    }

    public boolean beginResizeIfPointInRegion(int x, int y)
    {
        boolean horizontalActive = (mResizeMode & 1) != 0;
        boolean verticalActive = (mResizeMode & 2) != 0;
        mLeftBorderActive = x < mTouchTargetWidth && horizontalActive;
        mRightBorderActive = x > getWidth() - mTouchTargetWidth && horizontalActive;
        mTopBorderActive = y < mTouchTargetWidth && verticalActive;
        mBottomBorderActive = y > getHeight() - mTouchTargetWidth && verticalActive;
        boolean anyBordersActive = mLeftBorderActive || mRightBorderActive || mTopBorderActive || mBottomBorderActive;
        mBaselineWidth = getMeasuredWidth();
        mBaselineHeight = getMeasuredHeight();
        mBaselineX = getLeft();
        mBaselineY = getTop();
        mRunningHInc = 0;
        mRunningVInc = 0;
        if(anyBordersActive)
        {
            mLeftHandle.setAlpha(mLeftBorderActive ? 1.0F : 0.0F);
            mRightHandle.setAlpha(mRightBorderActive ? 1.0F : 0.0F);
            mTopHandle.setAlpha(mTopBorderActive ? 1.0F : 0.0F);
            mBottomHandle.setAlpha(mBottomBorderActive ? 1.0F : 0.0F);
        }
        mCellLayout.getExpandabilityArrayForView(mWidgetView, mExpandability);
        return anyBordersActive;
    }

    public void updateDeltas(int deltaX, int deltaY)
    {
        if(mLeftBorderActive)
        {
            mDeltaX = Math.max(-mBaselineX, deltaX);
            mDeltaX = Math.min(mBaselineWidth - 2 * mTouchTargetWidth, mDeltaX);
        } else
        if(mRightBorderActive)
        {
            mDeltaX = Math.min(mDragLayer.getWidth() - (mBaselineX + mBaselineWidth), deltaX);
            mDeltaX = Math.max(-mBaselineWidth + 2 * mTouchTargetWidth, mDeltaX);
        }
        if(mTopBorderActive)
        {
            mDeltaY = Math.max(-mBaselineY, deltaY);
            mDeltaY = Math.min(mBaselineHeight - 2 * mTouchTargetWidth, mDeltaY);
        } else
        if(mBottomBorderActive)
        {
            mDeltaY = Math.min(mDragLayer.getHeight() - (mBaselineY + mBaselineHeight), deltaY);
            mDeltaY = Math.max(-mBaselineHeight + 2 * mTouchTargetWidth, mDeltaY);
        }
    }

    public void visualizeResizeForDelta(int deltaX, int deltaY)
    {
        updateDeltas(deltaX, deltaY);
        DragLayer.LayoutParams lp = (DragLayer.LayoutParams)getLayoutParams();
        if(mLeftBorderActive)
        {
            lp.x = mBaselineX + mDeltaX;
            lp.width = mBaselineWidth - mDeltaX;
        } else
        if(mRightBorderActive)
            lp.width = mBaselineWidth + mDeltaX;
        if(mTopBorderActive)
        {
            lp.y = mBaselineY + mDeltaY;
            lp.height = mBaselineHeight - mDeltaY;
        } else
        if(mBottomBorderActive)
            lp.height = mBaselineHeight + mDeltaY;
        resizeWidgetIfNeeded();
        requestLayout();
    }

    private void resizeWidgetIfNeeded()
    {
        int xThreshold = mCellLayout.getCellWidth() + mCellLayout.getWidthGap();
        int yThreshold = mCellLayout.getCellHeight() + mCellLayout.getHeightGap();
        float hSpanIncF = (1.0F * (float)mDeltaX) / (float)xThreshold - (float)mRunningHInc;
        float vSpanIncF = (1.0F * (float)mDeltaY) / (float)yThreshold - (float)mRunningVInc;
        int hSpanInc = 0;
        int vSpanInc = 0;
        int cellXInc = 0;
        int cellYInc = 0;
        if(Math.abs(hSpanIncF) > 0.66F)
            hSpanInc = Math.round(hSpanIncF);
        if(Math.abs(vSpanIncF) > 0.66F)
            vSpanInc = Math.round(vSpanIncF);
        if(hSpanInc == 0 && vSpanInc == 0)
            return;
        mCellLayout.markCellsAsUnoccupiedForView(mWidgetView);
        CellLayout.LayoutParams lp = (CellLayout.LayoutParams)mWidgetView.getLayoutParams();
        if(mLeftBorderActive)
        {
            cellXInc = Math.max(-mExpandability[0], hSpanInc);
            cellXInc = Math.min(lp.cellHSpan - mMinHSpan, cellXInc);
            hSpanInc *= -1;
            hSpanInc = Math.min(mExpandability[0], hSpanInc);
            hSpanInc = Math.max(-(lp.cellHSpan - mMinHSpan), hSpanInc);
            mRunningHInc -= hSpanInc;
        } else
        if(mRightBorderActive)
        {
            hSpanInc = Math.min(mExpandability[2], hSpanInc);
            hSpanInc = Math.max(-(lp.cellHSpan - mMinHSpan), hSpanInc);
            mRunningHInc += hSpanInc;
        }
        if(mTopBorderActive)
        {
            cellYInc = Math.max(-mExpandability[1], vSpanInc);
            cellYInc = Math.min(lp.cellVSpan - mMinVSpan, cellYInc);
            vSpanInc *= -1;
            vSpanInc = Math.min(mExpandability[1], vSpanInc);
            vSpanInc = Math.max(-(lp.cellVSpan - mMinVSpan), vSpanInc);
            mRunningVInc -= vSpanInc;
        } else
        if(mBottomBorderActive)
        {
            vSpanInc = Math.min(mExpandability[3], vSpanInc);
            vSpanInc = Math.max(-(lp.cellVSpan - mMinVSpan), vSpanInc);
            mRunningVInc += vSpanInc;
        }
        if(mLeftBorderActive || mRightBorderActive)
        {
            lp.cellHSpan += hSpanInc;
            lp.cellX += cellXInc;
        }
        if(mTopBorderActive || mBottomBorderActive)
        {
            lp.cellVSpan += vSpanInc;
            lp.cellY += cellYInc;
        }
        mCellLayout.getExpandabilityArrayForView(mWidgetView, mExpandability);
        mCellLayout.markCellsAsOccupiedForView(mWidgetView);
        mWidgetView.requestLayout();
    }

    public void commitResizeForDelta(int deltaX, int deltaY)
    {
        visualizeResizeForDelta(deltaX, deltaY);
        CellLayout.LayoutParams lp = (CellLayout.LayoutParams)mWidgetView.getLayoutParams();
        LauncherModel.resizeItemInDatabase(getContext(), mItemInfo, lp.cellX, lp.cellY, lp.cellHSpan, lp.cellVSpan);
        mWidgetView.requestLayout();
        post(new Runnable() {

            public void run()
            {
                snapToWidget(true);
            }

            final AppWidgetResizeFrame this$0;

            
            {
                this$0 = AppWidgetResizeFrame.this;
                super();
            }
        }
);
    }

    public void snapToWidget(boolean animate)
    {
        DragLayer.LayoutParams lp = (DragLayer.LayoutParams)getLayoutParams();
        int xOffset = (mCellLayout.getLeft() + mCellLayout.getPaddingLeft()) - mWorkspace.getScrollX();
        int yOffset = (mCellLayout.getTop() + mCellLayout.getPaddingTop()) - mWorkspace.getScrollY();
        int newWidth = (mWidgetView.getWidth() + 2 * mBackgroundPadding) - mWidgetPaddingLeft - mWidgetPaddingRight;
        int newHeight = (mWidgetView.getHeight() + 2 * mBackgroundPadding) - mWidgetPaddingTop - mWidgetPaddingBottom;
        int newX = (mWidgetView.getLeft() - mBackgroundPadding) + xOffset + mWidgetPaddingLeft;
        int newY = (mWidgetView.getTop() - mBackgroundPadding) + yOffset + mWidgetPaddingTop;
        if(newY < 0)
        {
            newHeight -= -newY;
            newY = 0;
        }
        if(newY + newHeight > mDragLayer.getHeight())
            newHeight -= (newY + newHeight) - mDragLayer.getHeight();
        if(!animate)
        {
            lp.width = newWidth;
            lp.height = newHeight;
            lp.x = newX;
            lp.y = newY;
            mLeftHandle.setAlpha(1.0F);
            mRightHandle.setAlpha(1.0F);
            mTopHandle.setAlpha(1.0F);
            mBottomHandle.setAlpha(1.0F);
            requestLayout();
        } else
        {
            PropertyValuesHolder width = PropertyValuesHolder.ofInt("width", new int[] {
                lp.width, newWidth
            });
            PropertyValuesHolder height = PropertyValuesHolder.ofInt("height", new int[] {
                lp.height, newHeight
            });
            PropertyValuesHolder x = PropertyValuesHolder.ofInt("x", new int[] {
                lp.x, newX
            });
            PropertyValuesHolder y = PropertyValuesHolder.ofInt("y", new int[] {
                lp.y, newY
            });
            ObjectAnimator oa = ObjectAnimator.ofPropertyValuesHolder(lp, new PropertyValuesHolder[] {
                width, height, x, y
            });
            ObjectAnimator leftOa = ObjectAnimator.ofFloat(mLeftHandle, "alpha", new float[] {
                1.0F
            });
            ObjectAnimator rightOa = ObjectAnimator.ofFloat(mRightHandle, "alpha", new float[] {
                1.0F
            });
            ObjectAnimator topOa = ObjectAnimator.ofFloat(mTopHandle, "alpha", new float[] {
                1.0F
            });
            ObjectAnimator bottomOa = ObjectAnimator.ofFloat(mBottomHandle, "alpha", new float[] {
                1.0F
            });
            oa.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

                public void onAnimationUpdate(ValueAnimator animation)
                {
                    requestLayout();
                }

                final AppWidgetResizeFrame this$0;

            
            {
                this$0 = AppWidgetResizeFrame.this;
                super();
            }
            }
);
            AnimatorSet set = new AnimatorSet();
            if(mResizeMode == 2)
                set.playTogether(new Animator[] {
                    oa, topOa, bottomOa
                });
            else
            if(mResizeMode == 1)
                set.playTogether(new Animator[] {
                    oa, leftOa, rightOa
                });
            else
                set.playTogether(new Animator[] {
                    oa, leftOa, rightOa, topOa, bottomOa
                });
            set.setDuration(150L);
            set.start();
        }
    }

    private ItemInfo mItemInfo;
    private LauncherAppWidgetHostView mWidgetView;
    private CellLayout mCellLayout;
    private DragLayer mDragLayer;
    private Workspace mWorkspace;
    private ImageView mLeftHandle;
    private ImageView mRightHandle;
    private ImageView mTopHandle;
    private ImageView mBottomHandle;
    private boolean mLeftBorderActive;
    private boolean mRightBorderActive;
    private boolean mTopBorderActive;
    private boolean mBottomBorderActive;
    private int mWidgetPaddingLeft;
    private int mWidgetPaddingRight;
    private int mWidgetPaddingTop;
    private int mWidgetPaddingBottom;
    private int mBaselineWidth;
    private int mBaselineHeight;
    private int mBaselineX;
    private int mBaselineY;
    private int mResizeMode;
    private int mRunningHInc;
    private int mRunningVInc;
    private int mMinHSpan;
    private int mMinVSpan;
    private int mDeltaX;
    private int mDeltaY;
    private int mBackgroundPadding;
    private int mTouchTargetWidth;
    private int mExpandability[];
    final int SNAP_DURATION = 150;
    final int BACKGROUND_PADDING = 24;
    final float DIMMED_HANDLE_ALPHA = 0.0F;
    final float RESIZE_THRESHOLD = 0.66F;
    public static final int LEFT = 0;
    public static final int TOP = 1;
    public static final int RIGHT = 2;
    public static final int BOTTOM = 3;
    private Launcher mLauncher;
}
