// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Folder.java

package com.android.launcher2;

import android.animation.*;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.Selection;
import android.util.AttributeSet;
import android.view.*;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.android.launcher2:
//            DragSource, DropTarget, Alarm, LauncherApplication, 
//            LauncherModel, Launcher, CellLayout, FolderEditText, 
//            ShortcutInfo, Workspace, FolderInfo, DragLayer, 
//            ItemInfo, FastBitmapDrawable, FolderKeyEventListener, DragView, 
//            FolderIcon, CellLayoutChildren, DragController, ApplicationInfo, 
//            IconCache, OnAlarmListener, Cling

public class Folder extends LinearLayout
    implements DragSource, android.view.View.OnClickListener, android.view.View.OnLongClickListener, DropTarget, FolderInfo.FolderListener, android.widget.TextView.OnEditorActionListener, android.view.View.OnFocusChangeListener
{

    public Folder(Context context, AttributeSet attrs)
    {
        super(context, attrs);
        mState = -1;
        mMode = 1;
        mRearrangeOnClose = false;
        mNewSize = new Rect();
        mIconRect = new Rect();
        mItemsInReadingOrder = new ArrayList();
        mItemsInvalidated = false;
        mSuppressOnAdd = false;
        mTargetCell = new int[2];
        mPreviousTargetCell = new int[2];
        mEmptyCell = new int[2];
        mReorderAlarm = new Alarm();
        mOnExitAlarm = new Alarm();
        mHitRect = new Rect();
        mTempRect = new Rect();
        mDragInProgress = false;
        mDeleteFolderOnDropCompleted = false;
        mSuppressFolderDeletion = false;
        mItemAddedBackToSelfViaIcon = false;
        mIsEditingName = false;
        mActionModeCallback = new android.view.ActionMode.Callback() {

            public boolean onActionItemClicked(ActionMode mode, MenuItem item)
            {
                return false;
            }

            public boolean onCreateActionMode(ActionMode mode, Menu menu)
            {
                return false;
            }

            public void onDestroyActionMode(ActionMode actionmode)
            {
            }

            public boolean onPrepareActionMode(ActionMode mode, Menu menu)
            {
                return false;
            }

            final Folder this$0;

            
            {
                this$0 = Folder.this;
                super();
            }
        }
;
        mReorderAlarmListener = new OnAlarmListener() {

            public void onAlarm(Alarm alarm)
            {
                realTimeReorder(mEmptyCell, mTargetCell);
            }

            final Folder this$0;

            
            {
                this$0 = Folder.this;
                super();
            }
        }
;
        mOnExitAlarmListener = new OnAlarmListener() {

            public void onAlarm(Alarm alarm)
            {
                completeDragExit();
            }

            final Folder this$0;

            
            {
                this$0 = Folder.this;
                super();
            }
        }
;
        setAlwaysDrawnWithCacheEnabled(false);
        mInflater = LayoutInflater.from(context);
        mIconCache = ((LauncherApplication)context.getApplicationContext()).getIconCache();
        mMaxCountX = LauncherModel.getCellCountX();
        mMaxCountY = LauncherModel.getCellCountY();
        mInputMethodManager = (InputMethodManager)mContext.getSystemService("input_method");
        Resources res = getResources();
        mExpandDuration = res.getInteger(0x7f09001d);
        if(sDefaultFolderName == null)
            sDefaultFolderName = res.getString(0x7f0c0002);
        if(sHintText == null)
            sHintText = res.getString(0x7f0c0043);
        mLauncher = (Launcher)context;
        setFocusableInTouchMode(true);
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        mContent = (CellLayout)findViewById(0x7f060032);
        mContent.setGridSize(0, 0);
        mFolderName = (FolderEditText)findViewById(0x7f06002a);
        mFolderName.setFolder(this);
        mFolderName.setOnFocusChangeListener(this);
        int measureSpec = 0;
        mFolderName.measure(measureSpec, measureSpec);
        mFolderNameHeight = mFolderName.getMeasuredHeight();
        mFolderName.setCustomSelectionActionModeCallback(mActionModeCallback);
        mFolderName.setOnEditorActionListener(this);
        mFolderName.setSelectAllOnFocus(true);
        mFolderName.setInputType(mFolderName.getInputType() | 0x80000 | 0x2000);
    }

    public void onClick(View v)
    {
        Object tag = v.getTag();
        if(tag instanceof ShortcutInfo)
        {
            ShortcutInfo item = (ShortcutInfo)tag;
            int pos[] = new int[2];
            v.getLocationOnScreen(pos);
            item.intent.setSourceBounds(new Rect(pos[0], pos[1], pos[0] + v.getWidth(), pos[1] + v.getHeight()));
            mLauncher.startActivitySafely(item.intent, item);
        }
    }

    public boolean onLongClick(View v)
    {
        Object tag = v.getTag();
        if(tag instanceof ShortcutInfo)
        {
            ShortcutInfo item = (ShortcutInfo)tag;
            if(!v.isInTouchMode())
                return false;
            mLauncher.dismissFolderCling(null);
            mLauncher.getWorkspace().onDragStartedWithItem(v);
            mLauncher.getWorkspace().beginDragShared(v, this);
            mIconDrawable = ((TextView)v).getCompoundDrawables()[1];
            mCurrentDragInfo = item;
            mEmptyCell[0] = item.cellX;
            mEmptyCell[1] = item.cellY;
            mCurrentDragView = v;
            mContent.removeView(mCurrentDragView);
            mInfo.remove(mCurrentDragInfo);
            mDragInProgress = true;
            mItemAddedBackToSelfViaIcon = false;
        }
        return true;
    }

    public boolean isEditingName()
    {
        return mIsEditingName;
    }

    public void startEditingFolderName()
    {
        mFolderName.setHint("");
        mIsEditingName = true;
    }

    public void dismissEditingName()
    {
        mInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        doneEditingFolderName(true);
    }

    public void doneEditingFolderName(boolean commit)
    {
        mFolderName.setHint(sHintText);
        mInfo.setTitle(mFolderName.getText().toString());
        LauncherModel.updateItemInDatabase(mLauncher, mInfo);
        requestFocus();
        Selection.setSelection(mFolderName.getText(), 0, 0);
        mIsEditingName = false;
    }

    public boolean onEditorAction(TextView v, int actionId, KeyEvent event)
    {
        if(actionId == 6)
        {
            dismissEditingName();
            return true;
        } else
        {
            return false;
        }
    }

    public View getEditTextRegion()
    {
        return mFolderName;
    }

    public Drawable getDragDrawable()
    {
        return mIconDrawable;
    }

    public boolean onTouchEvent(MotionEvent ev)
    {
        return true;
    }

    public void setDragController(DragController dragController)
    {
        mDragController = dragController;
    }

    void setFolderIcon(FolderIcon icon)
    {
        mFolderIcon = icon;
    }

    FolderInfo getInfo()
    {
        return mInfo;
    }

    void bind(FolderInfo info)
    {
        mInfo = info;
        ArrayList children = info.contents;
        ArrayList overflow = new ArrayList();
        setupContentForNumItems(children.size());
        int count = 0;
        for(int i = 0; i < children.size(); i++)
        {
            ShortcutInfo child = (ShortcutInfo)children.get(i);
            if(!createAndAddShortcut(child))
                overflow.add(child);
            else
                count++;
        }

        setupContentForNumItems(count);
        ShortcutInfo item;
        for(Iterator iterator = overflow.iterator(); iterator.hasNext(); LauncherModel.deleteItemFromDatabase(mLauncher, item))
        {
            item = (ShortcutInfo)iterator.next();
            mInfo.remove(item);
        }

        mItemsInvalidated = true;
        updateTextViewFocus();
        mInfo.addListener(this);
        if(!sDefaultFolderName.contentEquals(mInfo.title))
            mFolderName.setText(mInfo.title);
        else
            mFolderName.setText("");
    }

    static Folder fromXml(Context context)
    {
        return (Folder)LayoutInflater.from(context).inflate(0x7f030013, null);
    }

    private void positionAndSizeAsIcon()
    {
        if(!(getParent() instanceof DragLayer))
            return;
        DragLayer.LayoutParams lp = (DragLayer.LayoutParams)getLayoutParams();
        if(mMode == 1)
        {
            setScaleX(0.8F);
            setScaleY(0.8F);
            setAlpha(0.0F);
        } else
        {
            mLauncher.getDragLayer().getDescendantRectRelativeToSelf(mFolderIcon, mIconRect);
            lp.width = mIconRect.width();
            lp.height = mIconRect.height();
            lp.x = mIconRect.left;
            lp.y = mIconRect.top;
            mContent.setAlpha(0.0F);
        }
        mState = 0;
    }

    public void animateOpen()
    {
        positionAndSizeAsIcon();
        if(!(getParent() instanceof DragLayer))
            return;
        DragLayer.LayoutParams lp = (DragLayer.LayoutParams)getLayoutParams();
        centerAboutIcon();
        ObjectAnimator oa;
        if(mMode == 1)
        {
            PropertyValuesHolder alpha = PropertyValuesHolder.ofFloat("alpha", new float[] {
                1.0F
            });
            PropertyValuesHolder scaleX = PropertyValuesHolder.ofFloat("scaleX", new float[] {
                1.0F
            });
            PropertyValuesHolder scaleY = PropertyValuesHolder.ofFloat("scaleY", new float[] {
                1.0F
            });
            oa = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[] {
                alpha, scaleX, scaleY
            });
        } else
        {
            PropertyValuesHolder width = PropertyValuesHolder.ofInt("width", new int[] {
                mNewSize.width()
            });
            PropertyValuesHolder height = PropertyValuesHolder.ofInt("height", new int[] {
                mNewSize.height()
            });
            PropertyValuesHolder x = PropertyValuesHolder.ofInt("x", new int[] {
                mNewSize.left
            });
            PropertyValuesHolder y = PropertyValuesHolder.ofInt("y", new int[] {
                mNewSize.top
            });
            oa = ObjectAnimator.ofPropertyValuesHolder(lp, new PropertyValuesHolder[] {
                width, height, x, y
            });
            oa.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

                public void onAnimationUpdate(ValueAnimator animation)
                {
                    requestLayout();
                }

                final Folder this$0;

            
            {
                this$0 = Folder.this;
                super();
            }
            }
);
            PropertyValuesHolder alpha = PropertyValuesHolder.ofFloat("alpha", new float[] {
                1.0F
            });
            ObjectAnimator alphaOa = ObjectAnimator.ofPropertyValuesHolder(mContent, new PropertyValuesHolder[] {
                alpha
            });
            alphaOa.setDuration(mExpandDuration);
            alphaOa.setInterpolator(new AccelerateInterpolator(2.0F));
            alphaOa.start();
        }
        oa.addListener(new AnimatorListenerAdapter() {

            public void onAnimationStart(Animator animation)
            {
                mState = 1;
            }

            public void onAnimationEnd(Animator animation)
            {
                mState = 2;
                Cling cling = mLauncher.showFirstRunFoldersCling();
                if(cling != null)
                    cling.bringToFront();
                setFocusOnFirstChild();
            }

            final Folder this$0;

            
            {
                this$0 = Folder.this;
                super();
            }
        }
);
        oa.setDuration(mExpandDuration);
        oa.start();
    }

    private void setFocusOnFirstChild()
    {
        View firstChild = mContent.getChildAt(0, 0);
        if(firstChild != null)
            firstChild.requestFocus();
    }

    public void animateClosed()
    {
        if(!(getParent() instanceof DragLayer))
            return;
        ObjectAnimator oa;
        if(mMode == 1)
        {
            PropertyValuesHolder alpha = PropertyValuesHolder.ofFloat("alpha", new float[] {
                0.0F
            });
            PropertyValuesHolder scaleX = PropertyValuesHolder.ofFloat("scaleX", new float[] {
                0.9F
            });
            PropertyValuesHolder scaleY = PropertyValuesHolder.ofFloat("scaleY", new float[] {
                0.9F
            });
            oa = ObjectAnimator.ofPropertyValuesHolder(this, new PropertyValuesHolder[] {
                alpha, scaleX, scaleY
            });
        } else
        {
            DragLayer.LayoutParams lp = (DragLayer.LayoutParams)getLayoutParams();
            PropertyValuesHolder width = PropertyValuesHolder.ofInt("width", new int[] {
                mIconRect.width()
            });
            PropertyValuesHolder height = PropertyValuesHolder.ofInt("height", new int[] {
                mIconRect.height()
            });
            PropertyValuesHolder x = PropertyValuesHolder.ofInt("x", new int[] {
                mIconRect.left
            });
            PropertyValuesHolder y = PropertyValuesHolder.ofInt("y", new int[] {
                mIconRect.top
            });
            oa = ObjectAnimator.ofPropertyValuesHolder(lp, new PropertyValuesHolder[] {
                width, height, x, y
            });
            oa.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

                public void onAnimationUpdate(ValueAnimator animation)
                {
                    requestLayout();
                }

                final Folder this$0;

            
            {
                this$0 = Folder.this;
                super();
            }
            }
);
            PropertyValuesHolder alpha = PropertyValuesHolder.ofFloat("alpha", new float[] {
                0.0F
            });
            ObjectAnimator alphaOa = ObjectAnimator.ofPropertyValuesHolder(mContent, new PropertyValuesHolder[] {
                alpha
            });
            alphaOa.setDuration(mExpandDuration);
            alphaOa.setInterpolator(new DecelerateInterpolator(2.0F));
            alphaOa.start();
        }
        oa.addListener(new AnimatorListenerAdapter() {

            public void onAnimationEnd(Animator animation)
            {
                onCloseComplete();
                mState = 0;
            }

            public void onAnimationStart(Animator animation)
            {
                mState = 1;
            }

            final Folder this$0;

            
            {
                this$0 = Folder.this;
                super();
            }
        }
);
        oa.setDuration(mExpandDuration);
        oa.start();
    }

    void notifyDataSetChanged()
    {
        mContent.removeAllViewsInLayout();
        bind(mInfo);
    }

    public boolean acceptDrop(DropTarget.DragObject d)
    {
        ItemInfo item = (ItemInfo)d.dragInfo;
        int itemType = item.itemType;
        return (itemType == 0 || itemType == 1) && !isFull();
    }

    protected boolean findAndSetEmptyCells(ShortcutInfo item)
    {
        int emptyCell[] = new int[2];
        if(mContent.findCellForSpan(emptyCell, item.spanX, item.spanY))
        {
            item.cellX = emptyCell[0];
            item.cellY = emptyCell[1];
            return true;
        } else
        {
            return false;
        }
    }

    protected boolean createAndAddShortcut(ShortcutInfo item)
    {
        TextView textView = (TextView)mInflater.inflate(0x7f030002, this, false);
        textView.setCompoundDrawablesWithIntrinsicBounds(null, new FastBitmapDrawable(item.getIcon(mIconCache)), null, null);
        textView.setText(item.title);
        textView.setTag(item);
        textView.setOnClickListener(this);
        textView.setOnLongClickListener(this);
        if((mContent.getChildAt(item.cellX, item.cellY) != null || item.cellX < 0 || item.cellY < 0 || item.cellX >= mContent.getCountX() || item.cellY >= mContent.getCountY()) && !findAndSetEmptyCells(item))
        {
            return false;
        } else
        {
            CellLayout.LayoutParams lp = new CellLayout.LayoutParams(item.cellX, item.cellY, item.spanX, item.spanY);
            boolean insert = false;
            textView.setOnKeyListener(new FolderKeyEventListener());
            mContent.addViewToCellLayout(textView, insert ? 0 : -1, (int)item.id, lp, true);
            return true;
        }
    }

    public void onDragEnter(DropTarget.DragObject d)
    {
        mPreviousTargetCell[0] = -1;
        mPreviousTargetCell[1] = -1;
        mOnExitAlarm.cancelAlarm();
    }

    boolean readingOrderGreaterThan(int v1[], int v2[])
    {
        return v1[1] > v2[1] || v1[1] == v2[1] && v1[0] > v2[0];
    }

    private void realTimeReorder(int empty[], int target[])
    {
        int delay = 0;
        float delayAmount = 30F;
        if(readingOrderGreaterThan(target, empty))
        {
            boolean wrap = empty[0] >= mContent.getCountX() - 1;
            int startY = wrap ? empty[1] + 1 : empty[1];
            for(int y = startY; y <= target[1]; y++)
            {
                int startX = y != empty[1] ? 0 : empty[0] + 1;
                int endX = y >= target[1] ? target[0] : mContent.getCountX() - 1;
                for(int x = startX; x <= endX; x++)
                {
                    View v = mContent.getChildAt(x, y);
                    if(mContent.animateChildToPosition(v, empty[0], empty[1], 230, delay))
                    {
                        empty[0] = x;
                        empty[1] = y;
                        delay = (int)((float)delay + delayAmount);
                        delayAmount = (float)((double)delayAmount * 0.90000000000000002D);
                    }
                }

            }

        } else
        {
            boolean wrap = empty[0] == 0;
            int startY = wrap ? empty[1] - 1 : empty[1];
            for(int y = startY; y >= target[1]; y--)
            {
                int startX = y != empty[1] ? mContent.getCountX() - 1 : empty[0] - 1;
                int endX = y <= target[1] ? target[0] : 0;
                for(int x = startX; x >= endX; x--)
                {
                    View v = mContent.getChildAt(x, y);
                    if(mContent.animateChildToPosition(v, empty[0], empty[1], 230, delay))
                    {
                        empty[0] = x;
                        empty[1] = y;
                        delay = (int)((float)delay + delayAmount);
                        delayAmount = (float)((double)delayAmount * 0.90000000000000002D);
                    }
                }

            }

        }
    }

    public void onDragOver(DropTarget.DragObject d)
    {
        float r[] = getDragViewVisualCenter(d.x, d.y, d.xOffset, d.yOffset, d.dragView, null);
        mTargetCell = mContent.findNearestArea((int)r[0], (int)r[1], 1, 1, mTargetCell);
        if(mTargetCell[0] != mPreviousTargetCell[0] || mTargetCell[1] != mPreviousTargetCell[1])
        {
            mReorderAlarm.cancelAlarm();
            mReorderAlarm.setOnAlarmListener(mReorderAlarmListener);
            mReorderAlarm.setAlarm(150L);
            mPreviousTargetCell[0] = mTargetCell[0];
            mPreviousTargetCell[1] = mTargetCell[1];
        }
    }

    private float[] getDragViewVisualCenter(int x, int y, int xOffset, int yOffset, DragView dragView, float recycle[])
    {
        float res[];
        if(recycle == null)
            res = new float[2];
        else
            res = recycle;
        int left = x - xOffset;
        int top = y - yOffset;
        res[0] = left + dragView.getDragRegion().width() / 2;
        res[1] = top + dragView.getDragRegion().height() / 2;
        return res;
    }

    public void completeDragExit()
    {
        mLauncher.closeFolder();
        mCurrentDragInfo = null;
        mCurrentDragView = null;
        mSuppressOnAdd = false;
        mRearrangeOnClose = true;
    }

    public void onDragExit(DropTarget.DragObject d)
    {
        if(!d.dragComplete)
        {
            mOnExitAlarm.setOnAlarmListener(mOnExitAlarmListener);
            mOnExitAlarm.setAlarm(800L);
        }
        mReorderAlarm.cancelAlarm();
    }

    public void onDropCompleted(View target, DropTarget.DragObject d, boolean success)
    {
        if(success)
        {
            if(mDeleteFolderOnDropCompleted && !mItemAddedBackToSelfViaIcon)
                replaceFolderWithFinalItem();
        } else
        {
            mFolderIcon.onDrop(d);
            if(mOnExitAlarm.alarmPending())
                mSuppressFolderDeletion = true;
        }
        if(target != this && mOnExitAlarm.alarmPending())
        {
            mOnExitAlarm.cancelAlarm();
            completeDragExit();
        }
        mDeleteFolderOnDropCompleted = false;
        mDragInProgress = false;
        mItemAddedBackToSelfViaIcon = false;
        mCurrentDragInfo = null;
        mCurrentDragView = null;
        mSuppressOnAdd = false;
        updateItemLocationsInDatabase();
    }

    private void updateItemLocationsInDatabase()
    {
        ArrayList list = getItemsInReadingOrder();
        for(int i = 0; i < list.size(); i++)
        {
            View v = (View)list.get(i);
            ItemInfo info = (ItemInfo)v.getTag();
            LauncherModel.moveItemInDatabase(mLauncher, info, mInfo.id, 0, info.cellX, info.cellY);
        }

    }

    public void notifyDrop()
    {
        if(mDragInProgress)
            mItemAddedBackToSelfViaIcon = true;
    }

    public boolean isDropEnabled()
    {
        return true;
    }

    public DropTarget getDropTargetDelegate(DropTarget.DragObject d)
    {
        return null;
    }

    private void setupContentDimensions(int count)
    {
        ArrayList list = getItemsInReadingOrder();
        int countX = mContent.getCountX();
        int countY = mContent.getCountY();
        int oldCountX;
        int oldCountY;
        for(boolean done = false; !done; done = countX == oldCountX && countY == oldCountY)
        {
            oldCountX = countX;
            oldCountY = countY;
            if(countX * countY < count)
            {
                if(countX <= countY && countX < mMaxCountX)
                    countX++;
                else
                if(countY < mMaxCountY)
                    countY++;
                if(countY == 0)
                    countY++;
            } else
            if((countY - 1) * countX >= count && countY >= countX)
                countY = Math.max(0, countY - 1);
            else
            if((countX - 1) * countY >= count)
                countX = Math.max(0, countX - 1);
        }

        mContent.setGridSize(countX, countY);
        arrangeChildren(list);
    }

    public boolean isFull()
    {
        return getItemCount() >= mMaxCountX * mMaxCountY;
    }

    private void centerAboutIcon()
    {
        DragLayer.LayoutParams lp = (DragLayer.LayoutParams)getLayoutParams();
        int width = getPaddingLeft() + getPaddingRight() + mContent.getDesiredWidth();
        int height = getPaddingTop() + getPaddingBottom() + mContent.getDesiredHeight() + mFolderNameHeight;
        DragLayer parent = (DragLayer)mLauncher.findViewById(0x7f060017);
        parent.getDescendantRectRelativeToSelf(mFolderIcon, mTempRect);
        int centerX = mTempRect.centerX();
        int centerY = mTempRect.centerY();
        int centeredLeft = centerX - width / 2;
        int centeredTop = centerY - height / 2;
        CellLayout currentPage = mLauncher.getWorkspace().getCurrentDropLayout();
        CellLayoutChildren boundingLayout = currentPage.getChildrenLayout();
        Rect bounds = new Rect();
        parent.getDescendantRectRelativeToSelf(boundingLayout, bounds);
        int left = Math.min(Math.max(bounds.left, centeredLeft), (bounds.left + bounds.width()) - width);
        int top = Math.min(Math.max(bounds.top, centeredTop), (bounds.top + bounds.height()) - height);
        if(width >= bounds.width())
            left = bounds.left + (bounds.width() - width) / 2;
        if(height >= bounds.height())
            top = bounds.top + (bounds.height() - height) / 2;
        int folderPivotX = width / 2 + (centeredLeft - left);
        int folderPivotY = height / 2 + (centeredTop - top);
        setPivotX(folderPivotX);
        setPivotY(folderPivotY);
        int folderIconPivotX = (int)((float)mFolderIcon.getMeasuredWidth() * ((1.0F * (float)folderPivotX) / (float)width));
        int folderIconPivotY = (int)((float)mFolderIcon.getMeasuredHeight() * ((1.0F * (float)folderPivotY) / (float)height));
        mFolderIcon.setPivotX(folderIconPivotX);
        mFolderIcon.setPivotY(folderIconPivotY);
        if(mMode == 1)
        {
            lp.width = width;
            lp.height = height;
            lp.x = left;
            lp.y = top;
        } else
        {
            mNewSize.set(left, top, left + width, top + height);
        }
    }

    private void setupContentForNumItems(int count)
    {
        setupContentDimensions(count);
        DragLayer.LayoutParams lp = (DragLayer.LayoutParams)getLayoutParams();
        if(lp == null)
        {
            lp = new DragLayer.LayoutParams(0, 0);
            lp.customPosition = true;
            setLayoutParams(lp);
        }
        centerAboutIcon();
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
    {
        int width = getPaddingLeft() + getPaddingRight() + mContent.getDesiredWidth();
        int height = getPaddingTop() + getPaddingBottom() + mContent.getDesiredHeight() + mFolderNameHeight;
        int contentWidthSpec = android.view.View.MeasureSpec.makeMeasureSpec(mContent.getDesiredWidth(), 0x40000000);
        int contentHeightSpec = android.view.View.MeasureSpec.makeMeasureSpec(mContent.getDesiredHeight(), 0x40000000);
        mContent.measure(contentWidthSpec, contentHeightSpec);
        mFolderName.measure(contentWidthSpec, android.view.View.MeasureSpec.makeMeasureSpec(mFolderNameHeight, 0x40000000));
        setMeasuredDimension(width, height);
    }

    private void arrangeChildren(ArrayList list)
    {
        int vacant[] = new int[2];
        if(list == null)
            list = getItemsInReadingOrder();
        mContent.removeAllViews();
        for(int i = 0; i < list.size(); i++)
        {
            View v = (View)list.get(i);
            mContent.getVacantCell(vacant, 1, 1);
            CellLayout.LayoutParams lp = (CellLayout.LayoutParams)v.getLayoutParams();
            lp.cellX = vacant[0];
            lp.cellY = vacant[1];
            ItemInfo info = (ItemInfo)v.getTag();
            if(info.cellX != vacant[0] || info.cellY != vacant[1])
            {
                info.cellX = vacant[0];
                info.cellY = vacant[1];
                LauncherModel.addOrMoveItemInDatabase(mLauncher, info, mInfo.id, 0, info.cellX, info.cellY);
            }
            boolean insert = false;
            mContent.addViewToCellLayout(v, insert ? 0 : -1, (int)info.id, lp, true);
        }

        mItemsInvalidated = true;
    }

    public int getItemCount()
    {
        return mContent.getChildrenLayout().getChildCount();
    }

    public View getItemAt(int index)
    {
        return mContent.getChildrenLayout().getChildAt(index);
    }

    private void onCloseComplete()
    {
        DragLayer parent = (DragLayer)getParent();
        parent.removeView(this);
        mDragController.removeDropTarget(this);
        clearFocus();
        mFolderIcon.requestFocus();
        if(mRearrangeOnClose)
        {
            setupContentForNumItems(getItemCount());
            mRearrangeOnClose = false;
        }
        if(getItemCount() <= 1)
            if(!mDragInProgress && !mSuppressFolderDeletion)
                replaceFolderWithFinalItem();
            else
            if(mDragInProgress)
                mDeleteFolderOnDropCompleted = true;
        mSuppressFolderDeletion = false;
    }

    private void replaceFolderWithFinalItem()
    {
        ItemInfo finalItem = null;
        if(getItemCount() == 1)
            finalItem = (ItemInfo)mInfo.contents.get(0);
        CellLayout cellLayout = mLauncher.getCellLayout(mInfo.container, mInfo.screen);
        cellLayout.removeView(mFolderIcon);
        if(mFolderIcon instanceof DropTarget)
            mDragController.removeDropTarget((DropTarget)mFolderIcon);
        mLauncher.removeFolder(mInfo);
        if(finalItem != null)
            LauncherModel.addOrMoveItemInDatabase(mLauncher, finalItem, mInfo.container, mInfo.screen, mInfo.cellX, mInfo.cellY);
        LauncherModel.deleteItemFromDatabase(mLauncher, mInfo);
        if(finalItem != null)
        {
            View child = mLauncher.createShortcut(0x7f030002, cellLayout, (ShortcutInfo)finalItem);
            mLauncher.getWorkspace().addInScreen(child, mInfo.container, mInfo.screen, mInfo.cellX, mInfo.cellY, mInfo.spanX, mInfo.spanY);
        }
    }

    private void updateTextViewFocus()
    {
        View lastChild = getItemAt(getItemCount() - 1);
        getItemAt(getItemCount() - 1);
        if(lastChild != null)
        {
            mFolderName.setNextFocusDownId(lastChild.getId());
            mFolderName.setNextFocusRightId(lastChild.getId());
            mFolderName.setNextFocusLeftId(lastChild.getId());
            mFolderName.setNextFocusUpId(lastChild.getId());
        }
    }

    public void onDrop(DropTarget.DragObject d)
    {
        ShortcutInfo item;
        if(d.dragInfo instanceof ApplicationInfo)
        {
            item = ((ApplicationInfo)d.dragInfo).makeShortcut();
            item.spanX = 1;
            item.spanY = 1;
        } else
        {
            item = (ShortcutInfo)d.dragInfo;
        }
        if(item == mCurrentDragInfo)
        {
            ShortcutInfo si = (ShortcutInfo)mCurrentDragView.getTag();
            CellLayout.LayoutParams lp = (CellLayout.LayoutParams)mCurrentDragView.getLayoutParams();
            si.cellX = lp.cellX = mEmptyCell[0];
            si.cellX = lp.cellY = mEmptyCell[1];
            mContent.addViewToCellLayout(mCurrentDragView, -1, (int)item.id, lp, true);
            if(d.dragView.hasDrawn())
                mLauncher.getDragLayer().animateViewIntoPosition(d.dragView, mCurrentDragView);
            else
                mCurrentDragView.setVisibility(0);
            mItemsInvalidated = true;
            setupContentDimensions(getItemCount());
            mSuppressOnAdd = true;
        }
        mInfo.add(item);
    }

    public void onAdd(ShortcutInfo item)
    {
        mItemsInvalidated = true;
        if(mSuppressOnAdd)
            return;
        if(!findAndSetEmptyCells(item))
        {
            setupContentForNumItems(getItemCount() + 1);
            findAndSetEmptyCells(item);
        }
        createAndAddShortcut(item);
        LauncherModel.addOrMoveItemInDatabase(mLauncher, item, mInfo.id, 0, item.cellX, item.cellY);
    }

    public void onRemove(ShortcutInfo item)
    {
        mItemsInvalidated = true;
        if(item == mCurrentDragInfo)
            return;
        View v = getViewForInfo(item);
        mContent.removeView(v);
        if(mState == 1)
            mRearrangeOnClose = true;
        else
            setupContentForNumItems(getItemCount());
        if(getItemCount() <= 1)
            replaceFolderWithFinalItem();
    }

    private View getViewForInfo(ShortcutInfo item)
    {
        for(int j = 0; j < mContent.getCountY(); j++)
        {
            for(int i = 0; i < mContent.getCountX(); i++)
            {
                View v = mContent.getChildAt(i, j);
                if(v.getTag() == item)
                    return v;
            }

        }

        return null;
    }

    public void onItemsChanged()
    {
        updateTextViewFocus();
    }

    public void onTitleChanged(CharSequence charsequence)
    {
    }

    public ArrayList getItemsInReadingOrder()
    {
        return getItemsInReadingOrder(true);
    }

    public ArrayList getItemsInReadingOrder(boolean includeCurrentDragItem)
    {
        if(mItemsInvalidated)
        {
            mItemsInReadingOrder.clear();
            for(int j = 0; j < mContent.getCountY(); j++)
            {
                for(int i = 0; i < mContent.getCountX(); i++)
                {
                    View v = mContent.getChildAt(i, j);
                    if(v != null)
                    {
                        ShortcutInfo info = (ShortcutInfo)v.getTag();
                        if(info != mCurrentDragInfo || includeCurrentDragItem)
                            mItemsInReadingOrder.add(v);
                    }
                }

            }

            mItemsInvalidated = false;
        }
        return mItemsInReadingOrder;
    }

    public void getLocationInDragLayer(int loc[])
    {
        mLauncher.getDragLayer().getLocationInDragLayer(this, loc);
    }

    public void onFocusChange(View v, boolean hasFocus)
    {
        if(v == mFolderName && hasFocus)
            startEditingFolderName();
    }

    private static final String TAG = "Launcher.Folder";
    protected DragController mDragController;
    protected Launcher mLauncher;
    protected FolderInfo mInfo;
    static final int STATE_NONE = -1;
    static final int STATE_SMALL = 0;
    static final int STATE_ANIMATING = 1;
    static final int STATE_OPEN = 2;
    private int mExpandDuration;
    protected CellLayout mContent;
    private final LayoutInflater mInflater;
    private final IconCache mIconCache;
    private int mState;
    private static final int FULL_GROW = 0;
    private static final int PARTIAL_GROW = 1;
    private static final int REORDER_ANIMATION_DURATION = 230;
    private static final int ON_EXIT_CLOSE_DELAY = 800;
    private int mMode;
    private boolean mRearrangeOnClose;
    private FolderIcon mFolderIcon;
    private int mMaxCountX;
    private int mMaxCountY;
    private Rect mNewSize;
    private Rect mIconRect;
    private ArrayList mItemsInReadingOrder;
    private Drawable mIconDrawable;
    boolean mItemsInvalidated;
    private ShortcutInfo mCurrentDragInfo;
    private View mCurrentDragView;
    boolean mSuppressOnAdd;
    private int mTargetCell[];
    private int mPreviousTargetCell[];
    private int mEmptyCell[];
    private Alarm mReorderAlarm;
    private Alarm mOnExitAlarm;
    private int mFolderNameHeight;
    private Rect mHitRect;
    private Rect mTempRect;
    private boolean mDragInProgress;
    private boolean mDeleteFolderOnDropCompleted;
    private boolean mSuppressFolderDeletion;
    private boolean mItemAddedBackToSelfViaIcon;
    FolderEditText mFolderName;
    private boolean mIsEditingName;
    private InputMethodManager mInputMethodManager;
    private static String sDefaultFolderName;
    private static String sHintText;
    private android.view.ActionMode.Callback mActionModeCallback;
    OnAlarmListener mReorderAlarmListener;
    OnAlarmListener mOnExitAlarmListener;






}
