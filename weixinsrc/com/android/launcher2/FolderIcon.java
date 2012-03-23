// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   FolderIcon.java

package com.android.launcher2;

import android.animation.*;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.*;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.*;
import java.util.ArrayList;

// Referenced classes of package com.android.launcher2:
//            Workspace, BubbleTextView, FolderInfo, Folder, 
//            Launcher, ItemInfo, ShortcutInfo, LauncherModel, 
//            CellLayout, DragLayer, ApplicationInfo, DropTarget, 
//            IconCache

public class FolderIcon extends LinearLayout
    implements FolderInfo.FolderListener
{
    public static class FolderRingAnimator
    {

        public void animateToAcceptState()
        {
            if(mNeutralAnimator != null)
                mNeutralAnimator.cancel();
            mAcceptAnimator = ValueAnimator.ofFloat(new float[] {
                0.0F, 1.0F
            });
            mAcceptAnimator.setDuration(100L);
            mAcceptAnimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

                public void onAnimationUpdate(ValueAnimator animation)
                {
                    float percent = ((Float)animation.getAnimatedValue()).floatValue();
                    mOuterRingSize = (1.0F + percent * 0.3F) * (float)FolderRingAnimator.sPreviewSize;
                    mInnerRingSize = (1.0F + percent * 0.15F) * (float)FolderRingAnimator.sPreviewSize;
                    if(mCellLayout != null)
                        mCellLayout.invalidate();
                }

                final FolderRingAnimator this$1;

                
                {
                    this$1 = FolderRingAnimator.this;
                    super();
                }
            }
);
            mAcceptAnimator.addListener(new AnimatorListenerAdapter() {

                public void onAnimationStart(Animator animation)
                {
                    if(mFolderIcon != null)
                        mFolderIcon.mPreviewBackground.setVisibility(4);
                }

                final FolderRingAnimator this$1;

                
                {
                    this$1 = FolderRingAnimator.this;
                    super();
                }
            }
);
            mAcceptAnimator.start();
        }

        public void animateToNaturalState()
        {
            if(mAcceptAnimator != null)
                mAcceptAnimator.cancel();
            mNeutralAnimator = ValueAnimator.ofFloat(new float[] {
                0.0F, 1.0F
            });
            mNeutralAnimator.setDuration(100L);
            mNeutralAnimator.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

                public void onAnimationUpdate(ValueAnimator animation)
                {
                    float percent = ((Float)animation.getAnimatedValue()).floatValue();
                    mOuterRingSize = (1.0F + (1.0F - percent) * 0.3F) * (float)FolderRingAnimator.sPreviewSize;
                    mInnerRingSize = (1.0F + (1.0F - percent) * 0.15F) * (float)FolderRingAnimator.sPreviewSize;
                    if(mCellLayout != null)
                        mCellLayout.invalidate();
                }

                final FolderRingAnimator this$1;

                
                {
                    this$1 = FolderRingAnimator.this;
                    super();
                }
            }
);
            mNeutralAnimator.addListener(new AnimatorListenerAdapter() {

                public void onAnimationEnd(Animator animation)
                {
                    if(mCellLayout != null)
                        mCellLayout.hideFolderAccept(FolderRingAnimator.this);
                    if(mFolderIcon != null)
                        mFolderIcon.mPreviewBackground.setVisibility(0);
                }

                final FolderRingAnimator this$1;

                
                {
                    this$1 = FolderRingAnimator.this;
                    super();
                }
            }
);
            mNeutralAnimator.start();
        }

        public void getCell(int loc[])
        {
            loc[0] = mCellX;
            loc[1] = mCellY;
        }

        public void setCell(int x, int y)
        {
            mCellX = x;
            mCellY = y;
        }

        public void setCellLayout(CellLayout layout)
        {
            mCellLayout = layout;
        }

        public float getOuterRingSize()
        {
            return mOuterRingSize;
        }

        public float getInnerRingSize()
        {
            return mInnerRingSize;
        }

        public int mCellX;
        public int mCellY;
        private CellLayout mCellLayout;
        public float mOuterRingSize;
        public float mInnerRingSize;
        public FolderIcon mFolderIcon;
        public Drawable mOuterRingDrawable;
        public Drawable mInnerRingDrawable;
        public static Drawable sSharedOuterRingDrawable = null;
        public static Drawable sSharedInnerRingDrawable = null;
        public static int sPreviewSize = -1;
        public static int sPreviewPadding = -1;
        private ValueAnimator mAcceptAnimator;
        private ValueAnimator mNeutralAnimator;



        public FolderRingAnimator(Launcher launcher, FolderIcon folderIcon)
        {
            mFolderIcon = null;
            mOuterRingDrawable = null;
            mInnerRingDrawable = null;
            mFolderIcon = folderIcon;
            Resources res = launcher.getResources();
            mOuterRingDrawable = res.getDrawable(0x7f020046);
            mInnerRingDrawable = res.getDrawable(0x7f020044);
            if(FolderIcon.sStaticValuesDirty)
            {
                sPreviewSize = res.getDimensionPixelSize(0x7f0a0035);
                sPreviewPadding = res.getDimensionPixelSize(0x7f0a0036);
                sSharedOuterRingDrawable = res.getDrawable(0x7f020046);
                sSharedInnerRingDrawable = res.getDrawable(0x7f020044);
                FolderIcon.sSharedFolderLeaveBehind = res.getDrawable(0x7f020047);
                FolderIcon.sStaticValuesDirty = false;
            }
        }
    }

    class PreviewItemDrawingParams
    {

        float transX;
        float transY;
        float scale;
        int overlayAlpha;
        Drawable drawable;
        final FolderIcon this$0;

        PreviewItemDrawingParams(float transX, float transY, float scale, int overlayAlpha)
        {
            this$0 = FolderIcon.this;
            super();
            this.transX = transX;
            this.transY = transY;
            this.scale = scale;
            this.overlayAlpha = overlayAlpha;
        }
    }


    public FolderIcon(Context context, AttributeSet attrs)
    {
        super(context, attrs);
        mFolderRingAnimator = null;
        mTotalWidth = -1;
        mAnimating = false;
        mParams = new PreviewItemDrawingParams(0.0F, 0.0F, 0.0F, 0);
        mAnimParams = new PreviewItemDrawingParams(0.0F, 0.0F, 0.0F, 0);
    }

    public FolderIcon(Context context)
    {
        super(context);
        mFolderRingAnimator = null;
        mTotalWidth = -1;
        mAnimating = false;
        mParams = new PreviewItemDrawingParams(0.0F, 0.0F, 0.0F, 0);
        mAnimParams = new PreviewItemDrawingParams(0.0F, 0.0F, 0.0F, 0);
    }

    public boolean isDropEnabled()
    {
        ViewGroup cellLayoutChildren = (ViewGroup)getParent();
        ViewGroup cellLayout = (ViewGroup)cellLayoutChildren.getParent();
        Workspace workspace = (Workspace)cellLayout.getParent();
        return !workspace.isSmall();
    }

    static FolderIcon fromXml(int resId, Launcher launcher, ViewGroup group, FolderInfo folderInfo, IconCache iconCache)
    {
        FolderIcon icon = (FolderIcon)LayoutInflater.from(launcher).inflate(resId, group, false);
        icon.mFolderName = (BubbleTextView)icon.findViewById(0x7f060015);
        icon.mFolderName.setText(folderInfo.title);
        icon.mPreviewBackground = (ImageView)icon.findViewById(0x7f060014);
        icon.mPreviewBackground.setContentDescription(folderInfo.title);
        icon.setTag(folderInfo);
        icon.setOnClickListener(launcher);
        icon.mInfo = folderInfo;
        icon.mLauncher = launcher;
        Folder folder = Folder.fromXml(launcher);
        folder.setDragController(launcher.getDragController());
        folder.setFolderIcon(icon);
        folder.bind(folderInfo);
        icon.mFolder = folder;
        Resources res = launcher.getResources();
        icon.mFolderRingAnimator = new FolderRingAnimator(launcher, icon);
        folderInfo.addListener(icon);
        return icon;
    }

    protected Parcelable onSaveInstanceState()
    {
        sStaticValuesDirty = true;
        return super.onSaveInstanceState();
    }

    private boolean willAcceptItem(ItemInfo item)
    {
        int itemType = item.itemType;
        return (itemType == 0 || itemType == 1) && !mFolder.isFull() && item != mInfo && !mInfo.opened;
    }

    public boolean acceptDrop(Object dragInfo)
    {
        ItemInfo item = (ItemInfo)dragInfo;
        return willAcceptItem(item);
    }

    public void addItem(ShortcutInfo item)
    {
        mInfo.add(item);
        LauncherModel.addOrMoveItemInDatabase(mLauncher, item, mInfo.id, 0, item.cellX, item.cellY);
    }

    public void onDragEnter(Object dragInfo)
    {
        if(!willAcceptItem((ItemInfo)dragInfo))
        {
            return;
        } else
        {
            CellLayout.LayoutParams lp = (CellLayout.LayoutParams)getLayoutParams();
            CellLayout layout = (CellLayout)getParent().getParent();
            mFolderRingAnimator.setCell(lp.cellX, lp.cellY);
            mFolderRingAnimator.setCellLayout(layout);
            mFolderRingAnimator.animateToAcceptState();
            layout.showFolderAccept(mFolderRingAnimator);
            return;
        }
    }

    public void onDragOver(Object obj)
    {
    }

    public void performCreateAnimation(final ShortcutInfo destInfo, View destView, ShortcutInfo srcInfo, View srcView, Rect dstRect, float scaleRelativeToDragLayer, Runnable postAnimationRunnable)
    {
        Drawable animateDrawable = ((TextView)destView).getCompoundDrawables()[1];
        computePreviewDrawingParams(animateDrawable.getIntrinsicWidth(), destView.getMeasuredWidth());
        onDrop(srcInfo, srcView, dstRect, scaleRelativeToDragLayer, 1, postAnimationRunnable);
        animateFirstItem(animateDrawable, 350);
        postDelayed(new Runnable() {

            public void run()
            {
                addItem(destInfo);
            }

            final FolderIcon this$0;
            private final ShortcutInfo val$destInfo;

            
            {
                this$0 = FolderIcon.this;
                destInfo = shortcutinfo;
                super();
            }
        }
, 350L);
    }

    public void onDragExit(Object dragInfo)
    {
        if(!willAcceptItem((ItemInfo)dragInfo))
        {
            return;
        } else
        {
            mFolderRingAnimator.animateToNaturalState();
            return;
        }
    }

    private void onDrop(final ShortcutInfo item, View animateView, Rect finalRect, float scaleRelativeToDragLayer, int index, Runnable postAnimationRunnable)
    {
        item.cellX = -1;
        item.cellY = -1;
        if(animateView != null)
        {
            DragLayer dragLayer = mLauncher.getDragLayer();
            Rect from = new Rect();
            dragLayer.getViewRectRelativeToSelf(animateView, from);
            Rect to = finalRect;
            if(to == null)
            {
                to = new Rect();
                Workspace workspace = mLauncher.getWorkspace();
                workspace.setFinalTransitionTransform((CellLayout)getParent().getParent());
                float scaleX = getScaleX();
                float scaleY = getScaleY();
                setScaleX(1.0F);
                setScaleY(1.0F);
                scaleRelativeToDragLayer = dragLayer.getDescendantRectRelativeToSelf(this, to);
                setScaleX(scaleX);
                setScaleY(scaleY);
                workspace.resetTransitionTransform((CellLayout)getParent().getParent());
            }
            int center[] = new int[2];
            float scale = getLocalCenterForIndex(index, center);
            center[0] = Math.round(scaleRelativeToDragLayer * (float)center[0]);
            center[1] = Math.round(scaleRelativeToDragLayer * (float)center[1]);
            to.offset(center[0] - animateView.getMeasuredWidth() / 2, center[1] - animateView.getMeasuredHeight() / 2);
            float finalAlpha = index >= 3 ? 0.0F : 0.5F;
            dragLayer.animateView(animateView, from, to, finalAlpha, scale * scaleRelativeToDragLayer, 400, new DecelerateInterpolator(2.0F), new AccelerateInterpolator(2.0F), postAnimationRunnable, false);
            postDelayed(new Runnable() {

                public void run()
                {
                    addItem(item);
                }

                final FolderIcon this$0;
                private final ShortcutInfo val$item;

            
            {
                this$0 = FolderIcon.this;
                item = shortcutinfo;
                super();
            }
            }
, 400L);
        } else
        {
            addItem(item);
        }
    }

    public void onDrop(DropTarget.DragObject d)
    {
        ShortcutInfo item;
        if(d.dragInfo instanceof ApplicationInfo)
            item = ((ApplicationInfo)d.dragInfo).makeShortcut();
        else
            item = (ShortcutInfo)d.dragInfo;
        mFolder.notifyDrop();
        onDrop(item, ((View) (d.dragView)), null, 1.0F, mInfo.contents.size(), d.postAnimationRunnable);
    }

    public DropTarget getDropTargetDelegate(DropTarget.DragObject d)
    {
        return null;
    }

    private void computePreviewDrawingParams(int drawableSize, int totalSize)
    {
        if(mIntrinsicIconSize != drawableSize || mTotalWidth != totalSize)
        {
            mIntrinsicIconSize = drawableSize;
            mTotalWidth = totalSize;
            int previewSize = FolderRingAnimator.sPreviewSize;
            int previewPadding = FolderRingAnimator.sPreviewPadding;
            mAvailableSpaceInPreview = previewSize - 2 * previewPadding;
            int adjustedAvailableSpace = (int)((float)(mAvailableSpaceInPreview / 2) * 1.8F);
            int unscaledHeight = (int)((float)mIntrinsicIconSize * 1.24F);
            mBaselineIconScale = (1.0F * (float)adjustedAvailableSpace) / (float)unscaledHeight;
            mBaselineIconSize = (int)((float)mIntrinsicIconSize * mBaselineIconScale);
            mMaxPerspectiveShift = (float)mBaselineIconSize * 0.24F;
            mPreviewOffsetX = (mTotalWidth - mAvailableSpaceInPreview) / 2;
            mPreviewOffsetY = previewPadding;
        }
    }

    private void computePreviewDrawingParams(Drawable d)
    {
        computePreviewDrawingParams(d.getIntrinsicWidth(), getMeasuredWidth());
    }

    private float getLocalCenterForIndex(int index, int center[])
    {
        mParams = computePreviewItemDrawingParams(Math.min(3, index), mParams);
        mParams.transX += mPreviewOffsetX;
        mParams.transY += mPreviewOffsetY;
        float offsetX = mParams.transX + (mParams.scale * (float)mIntrinsicIconSize) / 2.0F;
        float offsetY = mParams.transY + (mParams.scale * (float)mIntrinsicIconSize) / 2.0F;
        center[0] = Math.round(offsetX);
        center[1] = Math.round(offsetY);
        return mParams.scale;
    }

    private PreviewItemDrawingParams computePreviewItemDrawingParams(int index, PreviewItemDrawingParams params)
    {
        index = 3 - index - 1;
        float r = ((float)index * 1.0F) / 2.0F;
        float scale = 1.0F - 0.35F * (1.0F - r);
        float offset = (1.0F - r) * mMaxPerspectiveShift;
        float scaledSize = scale * (float)mBaselineIconSize;
        float scaleOffsetCorrection = (1.0F - scale) * (float)mBaselineIconSize;
        float transY = (float)mAvailableSpaceInPreview - (offset + scaledSize + scaleOffsetCorrection);
        float transX = offset + scaleOffsetCorrection;
        float totalScale = mBaselineIconScale * scale;
        int overlayAlpha = (int)(80F * (1.0F - r));
        if(params == null)
        {
            params = new PreviewItemDrawingParams(transX, transY, totalScale, overlayAlpha);
        } else
        {
            params.transX = transX;
            params.transY = transY;
            params.scale = totalScale;
            params.overlayAlpha = overlayAlpha;
        }
        return params;
    }

    private void drawPreviewItem(Canvas canvas, PreviewItemDrawingParams params)
    {
        canvas.save();
        canvas.translate(params.transX + (float)mPreviewOffsetX, params.transY + (float)mPreviewOffsetY);
        canvas.scale(params.scale, params.scale);
        Drawable d = params.drawable;
        if(d != null)
        {
            d.setBounds(0, 0, mIntrinsicIconSize, mIntrinsicIconSize);
            d.setFilterBitmap(true);
            d.setColorFilter(Color.argb(params.overlayAlpha, 0, 0, 0), android.graphics.PorterDuff.Mode.SRC_ATOP);
            d.draw(canvas);
            d.clearColorFilter();
            d.setFilterBitmap(false);
        }
        canvas.restore();
    }

    protected void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        if(mFolder == null)
            return;
        if(mFolder.getItemCount() == 0 && !mAnimating)
            return;
        ArrayList items = mFolder.getItemsInReadingOrder(false);
        if(mAnimating)
        {
            computePreviewDrawingParams(mAnimParams.drawable);
        } else
        {
            TextView v = (TextView)items.get(0);
            Drawable d = v.getCompoundDrawables()[1];
            computePreviewDrawingParams(d);
        }
        int nItemsInPreview = Math.min(items.size(), 3);
        if(!mAnimating)
        {
            for(int i = nItemsInPreview - 1; i >= 0; i--)
            {
                TextView v = (TextView)items.get(i);
                Drawable d = v.getCompoundDrawables()[1];
                mParams = computePreviewItemDrawingParams(i, mParams);
                mParams.drawable = d;
                drawPreviewItem(canvas, mParams);
            }

        } else
        {
            drawPreviewItem(canvas, mAnimParams);
        }
    }

    private void animateFirstItem(Drawable d, int duration)
    {
        computePreviewDrawingParams(d);
        final PreviewItemDrawingParams finalParams = computePreviewItemDrawingParams(0, null);
        float scale0 = 1.0F;
        final float transX0 = (mAvailableSpaceInPreview - d.getIntrinsicWidth()) / 2;
        final float transY0 = (mAvailableSpaceInPreview - d.getIntrinsicHeight()) / 2;
        mAnimParams.drawable = d;
        ValueAnimator va = ValueAnimator.ofFloat(new float[] {
            0.0F, 1.0F
        });
        va.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

            public void onAnimationUpdate(ValueAnimator animation)
            {
                float progress = ((Float)animation.getAnimatedValue()).floatValue();
                mAnimParams.transX = transX0 + progress * (finalParams.transX - transX0);
                mAnimParams.transY = transY0 + progress * (finalParams.transY - transY0);
                mAnimParams.scale = 1.0F + progress * (finalParams.scale - 1.0F);
                invalidate();
            }

            final FolderIcon this$0;
            private final float val$transX0;
            private final PreviewItemDrawingParams val$finalParams;
            private final float val$transY0;

            
            {
                this$0 = FolderIcon.this;
                transX0 = f;
                finalParams = previewitemdrawingparams;
                transY0 = f1;
                super();
            }
        }
);
        va.addListener(new AnimatorListenerAdapter() {

            public void onAnimationStart(Animator animation)
            {
                mAnimating = true;
            }

            public void onAnimationEnd(Animator animation)
            {
                mAnimating = false;
            }

            final FolderIcon this$0;

            
            {
                this$0 = FolderIcon.this;
                super();
            }
        }
);
        va.setDuration(duration);
        va.start();
    }

    public void setTextVisible(boolean visible)
    {
        if(visible)
            mFolderName.setVisibility(0);
        else
            mFolderName.setVisibility(4);
    }

    public boolean getTextVisible()
    {
        return mFolderName.getVisibility() == 0;
    }

    public void onItemsChanged()
    {
        invalidate();
        requestLayout();
    }

    public void onAdd(ShortcutInfo item)
    {
        invalidate();
        requestLayout();
    }

    public void onRemove(ShortcutInfo item)
    {
        invalidate();
        requestLayout();
    }

    public void onTitleChanged(CharSequence title)
    {
        mFolderName.setText(title.toString());
        mPreviewBackground.setContentDescription(title.toString());
    }

    private Launcher mLauncher;
    Folder mFolder;
    FolderInfo mInfo;
    private static boolean sStaticValuesDirty = true;
    private static final int NUM_ITEMS_IN_PREVIEW = 3;
    private static final int CONSUMPTION_ANIMATION_DURATION = 100;
    private static final int DROP_IN_ANIMATION_DURATION = 400;
    private static final int INITIAL_ITEM_ANIMATION_DURATION = 350;
    private static final float INNER_RING_GROWTH_FACTOR = 0.15F;
    private static final float OUTER_RING_GROWTH_FACTOR = 0.3F;
    private static final float PERSPECTIVE_SHIFT_FACTOR = 0.24F;
    private static final float PERSPECTIVE_SCALE_FACTOR = 0.35F;
    public static Drawable sSharedFolderLeaveBehind = null;
    private ImageView mPreviewBackground;
    private BubbleTextView mFolderName;
    FolderRingAnimator mFolderRingAnimator;
    private int mIntrinsicIconSize;
    private float mBaselineIconScale;
    private int mBaselineIconSize;
    private int mAvailableSpaceInPreview;
    private int mTotalWidth;
    private int mPreviewOffsetX;
    private int mPreviewOffsetY;
    private float mMaxPerspectiveShift;
    boolean mAnimating;
    private PreviewItemDrawingParams mParams;
    private PreviewItemDrawingParams mAnimParams;





}
