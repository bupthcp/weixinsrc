// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AppsCustomizePagedView.java

package com.android.launcher2;

import android.animation.*;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.*;
import android.content.pm.*;
import android.content.res.*;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.util.Log;
import android.view.*;
import android.view.animation.AccelerateInterpolator;
import android.widget.*;
import com.android.launcher.R;
import java.util.*;

// Referenced classes of package com.android.launcher2:
//            PagedViewWithDraggableItems, AllAppsView, DragSource, LauncherApplication, 
//            HolographicOutlineHelper, PagedViewCellLayout, Launcher, PagedViewCellLayoutChildren, 
//            PagedViewGridLayout, LauncherModel, DragLayer, Workspace, 
//            PagedViewIcon, ApplicationInfo, PagedViewWidget, PendingAddItemInfo, 
//            PendingAddWidgetInfo, DragController, DeleteDropTarget, CellLayout, 
//            ItemInfo, AppsCustomizeAsyncTask, AppsCustomizeTabHost, AsyncTaskPageData, 
//            IconCache, FastBitmapDrawable, DropTarget, AsyncTaskCallback

public class AppsCustomizePagedView extends PagedViewWithDraggableItems
    implements AllAppsView, android.view.View.OnClickListener, DragSource
{
    public static final class ContentType extends Enum
    {

        public static ContentType[] values()
        {
            ContentType acontenttype[];
            int i;
            ContentType acontenttype1[];
            System.arraycopy(acontenttype = ENUM$VALUES, 0, acontenttype1 = new ContentType[i = acontenttype.length], 0, i);
            return acontenttype1;
        }

        public static ContentType valueOf(String s)
        {
            return (ContentType)Enum.valueOf(com/android/launcher2/AppsCustomizePagedView$ContentType, s);
        }

        public static final ContentType Applications;
        public static final ContentType Widgets;
        private static final ContentType ENUM$VALUES[];

        static 
        {
            Applications = new ContentType("Applications", 0);
            Widgets = new ContentType("Widgets", 1);
            ENUM$VALUES = (new ContentType[] {
                Applications, Widgets
            });
        }

        private ContentType(String s, int i)
        {
            super(s, i);
        }
    }


    public AppsCustomizePagedView(Context context, AttributeSet attrs)
    {
        super(context, attrs);
        mSaveInstanceStateItemIndex = -1;
        mZInterpolator = new Workspace.ZInterpolator(0.5F);
        mAlphaInterpolator = new AccelerateInterpolator(0.9F);
        mLayoutInflater = LayoutInflater.from(context);
        mPackageManager = context.getPackageManager();
        mApps = new ArrayList();
        mWidgets = new ArrayList();
        mIconCache = ((LauncherApplication)context.getApplicationContext()).getIconCache();
        mHolographicOutlineHelper = new HolographicOutlineHelper();
        mCanvas = new Canvas();
        mRunningTasks = new ArrayList();
        Resources resources = context.getResources();
        mDefaultWidgetBackground = resources.getDrawable(0x7f020015);
        mAppIconSize = resources.getDimensionPixelSize(0x7f0a001b);
        mDragViewMultiplyColor = resources.getColor(0x7f070002);
        TypedArray a = context.obtainStyledAttributes(attrs, com.android.launcher.R.styleable.PagedView, 0, 0);
        mCellCountX = a.getInt(0, 6);
        mCellCountY = a.getInt(1, 4);
        a.recycle();
        a = context.obtainStyledAttributes(attrs, com.android.launcher.R.styleable.AppsCustomizePagedView, 0, 0);
        mWidgetWidthGap = a.getDimensionPixelSize(0, 0);
        mWidgetHeightGap = a.getDimensionPixelSize(1, 0);
        mWidgetCountX = a.getInt(2, 2);
        mWidgetCountY = a.getInt(3, 2);
        mClingFocusedX = a.getInt(4, 0);
        mClingFocusedY = a.getInt(5, 0);
        a.recycle();
        mWidgetSpacingLayout = new PagedViewCellLayout(getContext());
        mWidgetPreviewIconPaddedDimension = (int)((float)mAppIconSize * 1.5F);
        mFadeInAdjacentScreens = LauncherApplication.isScreenLarge();
    }

    protected void init()
    {
        super.init();
        mCenterPagesVertically = true;
        Context context = getContext();
        Resources r = context.getResources();
        setDragSlopeThreshold((float)r.getInteger(0x7f090014) / 100F);
    }

    protected void onUnhandledTap(MotionEvent ev)
    {
        if(LauncherApplication.isScreenLarge())
            mLauncher.showWorkspace(true);
    }

    private int getMiddleComponentIndexOnCurrentPage()
    {
        int i = -1;
        if(getPageCount() > 0)
        {
            int currentPage = getCurrentPage();
            if(currentPage < mNumAppsPages)
            {
                PagedViewCellLayout layout = (PagedViewCellLayout)getPageAt(currentPage);
                PagedViewCellLayoutChildren childrenLayout = layout.getChildrenLayout();
                int numItemsPerPage = mCellCountX * mCellCountY;
                int childCount = childrenLayout.getChildCount();
                if(childCount > 0)
                    i = currentPage * numItemsPerPage + childCount / 2;
            } else
            {
                int numApps = mApps.size();
                PagedViewGridLayout layout = (PagedViewGridLayout)getPageAt(currentPage);
                int numItemsPerPage = mWidgetCountX * mWidgetCountY;
                int childCount = layout.getChildCount();
                if(childCount > 0)
                    i = numApps + (currentPage - mNumAppsPages) * numItemsPerPage + childCount / 2;
            }
        }
        return i;
    }

    int getSaveInstanceStateIndex()
    {
        if(mSaveInstanceStateItemIndex == -1)
            mSaveInstanceStateItemIndex = getMiddleComponentIndexOnCurrentPage();
        return mSaveInstanceStateItemIndex;
    }

    int getPageForComponent(int index)
    {
        if(index < 0)
            return 0;
        if(index < mApps.size())
        {
            int numItemsPerPage = mCellCountX * mCellCountY;
            return index / numItemsPerPage;
        } else
        {
            int numItemsPerPage = mWidgetCountX * mWidgetCountY;
            return mNumAppsPages + (index - mApps.size()) / numItemsPerPage;
        }
    }

    private boolean testDataReady()
    {
        return !mApps.isEmpty() && !mWidgets.isEmpty();
    }

    void restorePageForIndex(int index)
    {
        if(index < 0)
        {
            return;
        } else
        {
            mSaveInstanceStateItemIndex = index;
            return;
        }
    }

    private void updatePageCounts()
    {
        mNumWidgetPages = (int)Math.ceil((float)mWidgets.size() / (float)(mWidgetCountX * mWidgetCountY));
        mNumAppsPages = (int)Math.ceil((float)mApps.size() / (float)(mCellCountX * mCellCountY));
    }

    protected void onDataReady(int width, int height)
    {
        boolean isLandscape = getResources().getConfiguration().orientation == 2;
        int maxCellCountX = 0x7fffffff;
        int maxCellCountY = 0x7fffffff;
        if(LauncherApplication.isScreenLarge())
        {
            maxCellCountX = isLandscape ? LauncherModel.getCellCountX() : LauncherModel.getCellCountY();
            maxCellCountY = isLandscape ? LauncherModel.getCellCountY() : LauncherModel.getCellCountX();
        }
        mWidgetSpacingLayout.setGap(mPageLayoutWidthGap, mPageLayoutHeightGap);
        mWidgetSpacingLayout.setPadding(mPageLayoutPaddingLeft, mPageLayoutPaddingTop, mPageLayoutPaddingRight, mPageLayoutPaddingBottom);
        mWidgetSpacingLayout.calculateCellCount(width, height, maxCellCountX, maxCellCountY);
        mCellCountX = mWidgetSpacingLayout.getCellCountX();
        mCellCountY = mWidgetSpacingLayout.getCellCountY();
        updatePageCounts();
        int widthSpec = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0x80000000);
        int heightSpec = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0x80000000);
        mWidgetSpacingLayout.measure(widthSpec, heightSpec);
        mContentWidth = mWidgetSpacingLayout.getContentWidth();
        int page = getPageForComponent(mSaveInstanceStateItemIndex);
        invalidatePageData(Math.max(0, page));
        int offset[] = new int[2];
        int pos[] = mWidgetSpacingLayout.estimateCellPosition(mClingFocusedX, mClingFocusedY);
        mLauncher.getDragLayer().getLocationInDragLayer(this, offset);
        pos[0] += (getMeasuredWidth() - mWidgetSpacingLayout.getMeasuredWidth()) / 2 + offset[0];
        pos[1] += (getMeasuredHeight() - mWidgetSpacingLayout.getMeasuredHeight()) / 2 + offset[1];
        mLauncher.showFirstRunAllAppsCling(pos);
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
    {
        int width = android.view.View.MeasureSpec.getSize(widthMeasureSpec);
        int height = android.view.View.MeasureSpec.getSize(heightMeasureSpec);
        if(!isDataReady() && testDataReady())
        {
            setDataIsReady();
            setMeasuredDimension(width, height);
            onDataReady(width, height);
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    private ResolveInfo removeResolveInfoWithComponentName(List list, ComponentName cn)
    {
        for(Iterator iter = list.iterator(); iter.hasNext();)
        {
            ResolveInfo rinfo = (ResolveInfo)iter.next();
            ActivityInfo info = rinfo.activityInfo;
            ComponentName c = new ComponentName(info.packageName, info.name);
            if(c.equals(cn))
            {
                iter.remove();
                return rinfo;
            }
        }

        return null;
    }

    public void onPackagesUpdated()
    {
        postDelayed(new Runnable() {

            public void run()
            {
                updatePackages();
            }

            final AppsCustomizePagedView this$0;

            
            {
                this$0 = AppsCustomizePagedView.this;
                super();
            }
        }
, 500L);
    }

    public void updatePackages()
    {
        boolean wasEmpty = mWidgets.isEmpty();
        mWidgets.clear();
        List widgets = AppWidgetManager.getInstance(mLauncher).getInstalledProviders();
        Intent shortcutsIntent = new Intent("android.intent.action.CREATE_SHORTCUT");
        List shortcuts = mPackageManager.queryIntentActivities(shortcutsIntent, 0);
        mWidgets.addAll(widgets);
        mWidgets.addAll(shortcuts);
        Collections.sort(mWidgets, new LauncherModel.WidgetAndShortcutNameComparator(mPackageManager));
        updatePageCounts();
        if(wasEmpty)
        {
            if(testDataReady())
                requestLayout();
        } else
        {
            cancelAllTasks();
            invalidatePageData();
        }
    }

    public void onClick(View v)
    {
        if(!mLauncher.isAllAppsCustomizeOpen() || mLauncher.getWorkspace().isSwitchingState())
            return;
        if(v instanceof PagedViewIcon)
        {
            final ApplicationInfo appInfo = (ApplicationInfo)v.getTag();
            animateClickFeedback(v, new Runnable() {

                public void run()
                {
                    mLauncher.startActivitySafely(appInfo.intent, appInfo);
                }

                final AppsCustomizePagedView this$0;
                private final ApplicationInfo val$appInfo;

            
            {
                this$0 = AppsCustomizePagedView.this;
                appInfo = applicationinfo;
                super();
            }
            }
);
        } else
        if(v instanceof PagedViewWidget)
        {
            Toast.makeText(getContext(), 0x7f0c0008, 0).show();
            float offsetY = getResources().getDimensionPixelSize(0x7f0a0030);
            ImageView p = (ImageView)v.findViewById(0x7f06000f);
            AnimatorSet bounce = new AnimatorSet();
            ValueAnimator tyuAnim = ObjectAnimator.ofFloat(p, "translationY", new float[] {
                offsetY
            });
            tyuAnim.setDuration(125L);
            ValueAnimator tydAnim = ObjectAnimator.ofFloat(p, "translationY", new float[] {
                0.0F
            });
            tydAnim.setDuration(100L);
            bounce.play(tyuAnim).before(tydAnim);
            bounce.setInterpolator(new AccelerateInterpolator());
            bounce.start();
        }
    }

    protected void determineDraggingStart(MotionEvent motionevent)
    {
    }

    private void beginDraggingApplication(View v)
    {
        mLauncher.getWorkspace().onDragStartedWithItem(v);
        mLauncher.getWorkspace().beginDragShared(v, this);
    }

    private void beginDraggingWidget(View v)
    {
        ImageView image = (ImageView)v.findViewById(0x7f06000f);
        PendingAddItemInfo createItemInfo = (PendingAddItemInfo)v.getTag();
        Drawable preview = image.getDrawable();
        RectF mTmpScaleRect = new RectF(0.0F, 0.0F, 1.0F, 1.0F);
        image.getImageMatrix().mapRect(mTmpScaleRect);
        float scale = mTmpScaleRect.right;
        int w = (int)((float)preview.getIntrinsicWidth() * scale);
        int h = (int)((float)preview.getIntrinsicHeight() * scale);
        Bitmap b;
        if(createItemInfo instanceof PendingAddWidgetInfo)
        {
            PendingAddWidgetInfo createWidgetInfo = (PendingAddWidgetInfo)createItemInfo;
            int spanXY[] = mLauncher.getSpanForWidget(createWidgetInfo, null);
            createItemInfo.spanX = spanXY[0];
            createItemInfo.spanY = spanXY[1];
            b = Bitmap.createBitmap(w, h, android.graphics.Bitmap.Config.ARGB_8888);
            renderDrawableToBitmap(preview, b, 0, 0, w, h, scale, mDragViewMultiplyColor);
        } else
        {
            b = Bitmap.createBitmap(mWidgetPreviewIconPaddedDimension, mWidgetPreviewIconPaddedDimension, android.graphics.Bitmap.Config.ARGB_8888);
            mCanvas.setBitmap(b);
            mCanvas.save();
            preview.draw(mCanvas);
            mCanvas.restore();
            mCanvas.drawColor(mDragViewMultiplyColor, android.graphics.PorterDuff.Mode.MULTIPLY);
            mCanvas.setBitmap(null);
            createItemInfo.spanX = createItemInfo.spanY = 1;
        }
        Paint alphaClipPaint = null;
        if((createItemInfo instanceof PendingAddWidgetInfo) && ((PendingAddWidgetInfo)createItemInfo).hasDefaultPreview)
        {
            android.graphics.MaskFilter alphaClipTable = TableMaskFilter.CreateClipTable(0, 255);
            alphaClipPaint = new Paint();
            alphaClipPaint.setMaskFilter(alphaClipTable);
        }
        mLauncher.lockScreenOrientationOnLargeUI();
        mLauncher.getWorkspace().onDragStartedWithItemSpans(createItemInfo.spanX, createItemInfo.spanY, b, alphaClipPaint);
        mDragController.startDrag(image, b, this, createItemInfo, DragController.DRAG_ACTION_COPY, null);
        b.recycle();
    }

    protected boolean beginDragging(View v)
    {
        mLauncher.dismissAllAppsCling(null);
        if(!super.beginDragging(v))
            return false;
        mLauncher.enterSpringLoadedDragMode();
        if(v instanceof PagedViewIcon)
            beginDraggingApplication(v);
        else
        if(v instanceof PagedViewWidget)
            beginDraggingWidget(v);
        return true;
    }

    private void endDragging(View target, boolean success)
    {
        mLauncher.getWorkspace().onDragStopped(success);
        if(!success || target != mLauncher.getWorkspace() && !(target instanceof DeleteDropTarget))
            mLauncher.exitSpringLoadedDragMode();
        mLauncher.unlockScreenOrientationOnLargeUI();
    }

    public void onDropCompleted(View target, DropTarget.DragObject d, boolean success)
    {
        endDragging(target, success);
        if(!success)
        {
            boolean showOutOfSpaceMessage = false;
            if(target instanceof Workspace)
            {
                int currentScreen = mLauncher.getCurrentWorkspaceScreen();
                Workspace workspace = (Workspace)target;
                CellLayout layout = (CellLayout)workspace.getChildAt(currentScreen);
                ItemInfo itemInfo = (ItemInfo)d.dragInfo;
                if(layout != null)
                {
                    layout.calculateSpans(itemInfo);
                    showOutOfSpaceMessage = !layout.findCellForSpan(null, itemInfo.spanX, itemInfo.spanY);
                }
            }
            if(showOutOfSpaceMessage)
                mLauncher.showOutOfSpaceMessage();
        }
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        cancelAllTasks();
    }

    private void cancelAllTasks()
    {
        for(Iterator iter = mRunningTasks.iterator(); iter.hasNext(); iter.remove())
        {
            AppsCustomizeAsyncTask task = (AppsCustomizeAsyncTask)iter.next();
            task.cancel(false);
        }

    }

    public void setContentType(ContentType type)
    {
        if(type == ContentType.Widgets)
            invalidatePageData(mNumAppsPages, true);
        else
        if(type == ContentType.Applications)
            invalidatePageData(0, true);
    }

    protected void snapToPage(int whichPage, int delta, int duration)
    {
        super.snapToPage(whichPage, delta, duration);
        updateCurrentTab(whichPage);
    }

    private void updateCurrentTab(int currentPage)
    {
        AppsCustomizeTabHost tabHost = getTabHost();
        String tag = tabHost.getCurrentTabTag();
        if(tag != null)
            if(currentPage >= mNumAppsPages && !tag.equals(tabHost.getTabTagForContentType(ContentType.Widgets)))
                tabHost.setCurrentTabFromContent(ContentType.Widgets);
            else
            if(currentPage < mNumAppsPages && !tag.equals(tabHost.getTabTagForContentType(ContentType.Applications)))
                tabHost.setCurrentTabFromContent(ContentType.Applications);
    }

    private void setVisibilityOnChildren(ViewGroup layout, int visibility)
    {
        int childCount = layout.getChildCount();
        for(int i = 0; i < childCount; i++)
            layout.getChildAt(i).setVisibility(visibility);

    }

    private void setupPage(PagedViewCellLayout layout)
    {
        layout.setCellCount(mCellCountX, mCellCountY);
        layout.setGap(mPageLayoutWidthGap, mPageLayoutHeightGap);
        layout.setPadding(mPageLayoutPaddingLeft, mPageLayoutPaddingTop, mPageLayoutPaddingRight, mPageLayoutPaddingBottom);
        setVisibilityOnChildren(layout, 8);
        int widthSpec = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0x80000000);
        int heightSpec = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0x80000000);
        layout.setMinimumWidth(getPageContentWidth());
        layout.measure(widthSpec, heightSpec);
        setVisibilityOnChildren(layout, 0);
    }

    public void syncAppsPageItems(int page, boolean immediate)
    {
        int numCells = mCellCountX * mCellCountY;
        int startIndex = page * numCells;
        int endIndex = Math.min(startIndex + numCells, mApps.size());
        PagedViewCellLayout layout = (PagedViewCellLayout)getPageAt(page);
        layout.removeAllViewsOnPage();
        ArrayList items = new ArrayList();
        ArrayList images = new ArrayList();
        for(int i = startIndex; i < endIndex; i++)
        {
            ApplicationInfo info = (ApplicationInfo)mApps.get(i);
            PagedViewIcon icon = (PagedViewIcon)mLayoutInflater.inflate(0x7f030003, layout, false);
            icon.applyFromApplicationInfo(info, true, mHolographicOutlineHelper);
            icon.setOnClickListener(this);
            icon.setOnLongClickListener(this);
            icon.setOnTouchListener(this);
            int index = i - startIndex;
            int x = index % mCellCountX;
            int y = index / mCellCountX;
            layout.addViewToCellLayout(icon, -1, i, new PagedViewCellLayout.LayoutParams(x, y, 1, 1));
            items.add(info);
            images.add(info.iconBitmap);
        }

        layout.createHardwareLayers();
    }

    private int getThreadPriorityForPage(int page)
    {
        int pageDiff = Math.abs(page - mCurrentPage);
        if(pageDiff <= 0)
            return -1;
        return pageDiff > 1 ? 0 : 0;
    }

    private int getSleepForPage(int page)
    {
        int pageDiff = Math.abs(page - mCurrentPage) - 1;
        return Math.max(0, pageDiff * 150);
    }

    private void prepareLoadWidgetPreviewsTask(int page, ArrayList widgets, int cellWidth, int cellHeight, int cellCountX)
    {
        for(Iterator iter = mRunningTasks.iterator(); iter.hasNext();)
        {
            AppsCustomizeAsyncTask task = (AppsCustomizeAsyncTask)iter.next();
            int taskPage = task.page;
            if(taskPage == page || taskPage < getAssociatedLowerPageBound(mCurrentPage - mNumAppsPages) || taskPage > getAssociatedUpperPageBound(mCurrentPage - mNumAppsPages))
            {
                task.cancel(false);
                iter.remove();
            } else
            {
                task.setThreadPriority(getThreadPriorityForPage(taskPage + mNumAppsPages));
            }
        }

        final int sleepMs = getSleepForPage(page + mNumAppsPages);
        AsyncTaskPageData pageData = new AsyncTaskPageData(page, widgets, cellWidth, cellHeight, cellCountX, new AsyncTaskCallback() {

            public void run(AppsCustomizeAsyncTask task, AsyncTaskPageData data)
            {
                try
                {
                    Thread.sleep(sleepMs);
                }
                catch(Exception exception) { }
                loadWidgetPreviewsInBackground(task, data);
                break MISSING_BLOCK_LABEL_41;
                Exception exception1;
                exception1;
                if(task.isCancelled())
                    data.cleanup(true);
                throw exception1;
                if(task.isCancelled())
                    data.cleanup(true);
                return;
            }

            final AppsCustomizePagedView this$0;
            private final int val$sleepMs;

            
            {
                this$0 = AppsCustomizePagedView.this;
                sleepMs = i;
                super();
            }
        }
, new AsyncTaskCallback() {

            public void run(AppsCustomizeAsyncTask task, AsyncTaskPageData data)
            {
                mRunningTasks.remove(task);
                if(task.isCancelled())
                {
                    data.cleanup(task.isCancelled());
                    return;
                }
                onSyncWidgetPageItems(data);
                break MISSING_BLOCK_LABEL_50;
                Exception exception;
                exception;
                data.cleanup(task.isCancelled());
                throw exception;
                data.cleanup(task.isCancelled());
                return;
            }

            final AppsCustomizePagedView this$0;

            
            {
                this$0 = AppsCustomizePagedView.this;
                super();
            }
        }
);
        AppsCustomizeAsyncTask t = new AppsCustomizeAsyncTask(page, AsyncTaskPageData.Type.LoadWidgetPreviewData);
        t.setThreadPriority(getThreadPriorityForPage(page));
        t.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new AsyncTaskPageData[] {
            pageData
        });
        mRunningTasks.add(t);
    }

    private void prepareGenerateHoloOutlinesTask(int page, ArrayList items, ArrayList images)
    {
        for(Iterator iter = mRunningTasks.iterator(); iter.hasNext();)
        {
            AppsCustomizeAsyncTask task = (AppsCustomizeAsyncTask)iter.next();
            int taskPage = task.page;
            if(taskPage == page && task.dataType == AsyncTaskPageData.Type.LoadHolographicIconsData)
            {
                task.cancel(false);
                iter.remove();
            }
        }

        AsyncTaskPageData pageData = new AsyncTaskPageData(page, items, images, new AsyncTaskCallback() {

            public void run(AppsCustomizeAsyncTask task, AsyncTaskPageData data)
            {
                task.syncThreadPriority();
                ArrayList images = data.generatedImages;
                ArrayList srcImages = data.sourceImages;
                int count = srcImages.size();
                Canvas c = new Canvas();
                for(int i = 0; i < count && !task.isCancelled(); i++)
                {
                    task.syncThreadPriority();
                    Bitmap b = (Bitmap)srcImages.get(i);
                    Bitmap outline = Bitmap.createBitmap(b.getWidth(), b.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
                    c.setBitmap(outline);
                    c.save();
                    c.drawBitmap(b, 0.0F, 0.0F, null);
                    c.restore();
                    c.setBitmap(null);
                    images.add(outline);
                }

                break MISSING_BLOCK_LABEL_149;
                Exception exception;
                exception;
                if(task.isCancelled())
                    data.cleanup(true);
                throw exception;
                if(task.isCancelled())
                    data.cleanup(true);
                return;
            }

            final AppsCustomizePagedView this$0;

            
            {
                this$0 = AppsCustomizePagedView.this;
                super();
            }
        }
, new AsyncTaskCallback() {

            public void run(AppsCustomizeAsyncTask task, AsyncTaskPageData data)
            {
                mRunningTasks.remove(task);
                if(task.isCancelled())
                {
                    data.cleanup(task.isCancelled());
                    return;
                }
                onHolographicPageItemsLoaded(data);
                break MISSING_BLOCK_LABEL_50;
                Exception exception;
                exception;
                data.cleanup(task.isCancelled());
                throw exception;
                data.cleanup(task.isCancelled());
                return;
            }

            final AppsCustomizePagedView this$0;

            
            {
                this$0 = AppsCustomizePagedView.this;
                super();
            }
        }
);
        AppsCustomizeAsyncTask t = new AppsCustomizeAsyncTask(page, AsyncTaskPageData.Type.LoadHolographicIconsData);
        t.setThreadPriority(10);
        t.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new AsyncTaskPageData[] {
            pageData
        });
        mRunningTasks.add(t);
    }

    private void setupPage(PagedViewGridLayout layout)
    {
        layout.setPadding(mPageLayoutPaddingLeft, mPageLayoutPaddingTop, mPageLayoutPaddingRight, mPageLayoutPaddingBottom);
        int widthSpec = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0x80000000);
        int heightSpec = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0x80000000);
        layout.setMinimumWidth(getPageContentWidth());
        layout.measure(widthSpec, heightSpec);
    }

    private void renderDrawableToBitmap(Drawable d, Bitmap bitmap, int x, int y, int w, int h)
    {
        renderDrawableToBitmap(d, bitmap, x, y, w, h, 1.0F, -1);
    }

    private void renderDrawableToBitmap(Drawable d, Bitmap bitmap, int x, int y, int w, int h, float scale)
    {
        renderDrawableToBitmap(d, bitmap, x, y, w, h, scale, -1);
    }

    private void renderDrawableToBitmap(Drawable d, Bitmap bitmap, int x, int y, int w, int h, float scale, 
            int multiplyColor)
    {
        if(bitmap != null)
        {
            Canvas c = new Canvas(bitmap);
            c.scale(scale, scale);
            android.graphics.Rect oldBounds = d.copyBounds();
            d.setBounds(x, y, x + w, y + h);
            d.draw(c);
            d.setBounds(oldBounds);
            if(multiplyColor != -1)
                c.drawColor(mDragViewMultiplyColor, android.graphics.PorterDuff.Mode.MULTIPLY);
            c.setBitmap(null);
        }
    }

    private Bitmap getShortcutPreview(ResolveInfo info, int cellWidth, int cellHeight)
    {
        int offset = 0;
        int bitmapSize = mAppIconSize;
        Bitmap preview = Bitmap.createBitmap(bitmapSize, bitmapSize, android.graphics.Bitmap.Config.ARGB_8888);
        Drawable icon = mIconCache.getFullResIcon(info, mPackageManager);
        renderDrawableToBitmap(icon, preview, offset, offset, mAppIconSize, mAppIconSize);
        return preview;
    }

    private Bitmap getWidgetPreview(AppWidgetProviderInfo info, int cellHSpan, int cellVSpan, int cellWidth, int cellHeight)
    {
        String packageName = info.provider.getPackageName();
        Drawable drawable = null;
        Bitmap preview = null;
        if(info.previewImage != 0)
        {
            drawable = mPackageManager.getDrawable(packageName, info.previewImage, null);
            if(drawable == null)
            {
                Log.w("AppsCustomizePagedView", (new StringBuilder("Can't load icon drawable 0x")).append(Integer.toHexString(info.icon)).append(" for provider: ").append(info.provider).toString());
            } else
            {
                int imageWidth = drawable.getIntrinsicWidth();
                int imageHeight = drawable.getIntrinsicHeight();
                int bitmapWidth = imageWidth;
                int bitmapHeight = imageHeight;
                if(imageWidth > imageHeight)
                {
                    bitmapWidth = cellWidth;
                    bitmapHeight = (int)((float)imageHeight * ((float)bitmapWidth / (float)imageWidth));
                } else
                {
                    bitmapHeight = cellHeight;
                    bitmapWidth = (int)((float)imageWidth * ((float)bitmapHeight / (float)imageHeight));
                }
                preview = Bitmap.createBitmap(bitmapWidth, bitmapHeight, android.graphics.Bitmap.Config.ARGB_8888);
                renderDrawableToBitmap(drawable, preview, 0, 0, bitmapWidth, bitmapHeight);
            }
        }
        if(drawable == null)
        {
            Resources resources = mLauncher.getResources();
            int targetWidth = mWidgetSpacingLayout.estimateCellWidth(cellHSpan);
            int targetHeight = mWidgetSpacingLayout.estimateCellHeight(cellVSpan);
            int bitmapWidth = targetWidth;
            int bitmapHeight = targetHeight;
            int minOffset = (int)((float)mAppIconSize * 0.25F);
            float iconScale = 1.0F;
            if(cellHSpan == cellVSpan)
            {
                if(cellHSpan <= 1)
                    bitmapWidth = bitmapHeight = mAppIconSize + 2 * minOffset;
                else
                    bitmapWidth = bitmapHeight = mAppIconSize + 4 * minOffset;
            } else
            if(targetWidth > targetHeight)
            {
                bitmapWidth = Math.min(targetWidth, cellWidth);
                bitmapHeight = (int)((float)targetHeight * ((float)bitmapWidth / (float)targetWidth));
                iconScale = Math.min((float)bitmapHeight / (float)(mAppIconSize + 2 * minOffset), 1.0F);
            } else
            {
                bitmapHeight = Math.min(targetHeight, cellHeight);
                bitmapWidth = (int)((float)targetWidth * ((float)bitmapHeight / (float)targetHeight));
                iconScale = Math.min((float)bitmapWidth / (float)(mAppIconSize + 2 * minOffset), 1.0F);
            }
            preview = Bitmap.createBitmap(bitmapWidth, bitmapHeight, android.graphics.Bitmap.Config.ARGB_8888);
            if(cellHSpan != 1 || cellVSpan != 1)
                renderDrawableToBitmap(mDefaultWidgetBackground, preview, 0, 0, bitmapWidth, bitmapHeight);
            try
            {
                Drawable icon = null;
                int hoffset = (int)((float)(bitmapWidth / 2) - ((float)mAppIconSize * iconScale) / 2.0F);
                int yoffset = (int)((float)(bitmapHeight / 2) - ((float)mAppIconSize * iconScale) / 2.0F);
                if(info.icon > 0)
                    icon = mPackageManager.getDrawable(packageName, info.icon, null);
                if(icon == null)
                    icon = resources.getDrawable(0x7f020032);
                renderDrawableToBitmap(icon, preview, hoffset, yoffset, (int)((float)mAppIconSize * iconScale), (int)((float)mAppIconSize * iconScale));
            }
            catch(android.content.res.Resources.NotFoundException notfoundexception) { }
        }
        return preview;
    }

    public void syncWidgetPageItems(int page, boolean immediate)
    {
        int numItemsPerPage = mWidgetCountX * mWidgetCountY;
        int contentWidth = mWidgetSpacingLayout.getContentWidth();
        int contentHeight = mWidgetSpacingLayout.getContentHeight();
        ArrayList items = new ArrayList();
        int cellWidth = (contentWidth - mPageLayoutPaddingLeft - mPageLayoutPaddingRight - (mWidgetCountX - 1) * mWidgetWidthGap) / mWidgetCountX;
        int cellHeight = (contentHeight - mPageLayoutPaddingTop - mPageLayoutPaddingBottom - (mWidgetCountY - 1) * mWidgetHeightGap) / mWidgetCountY;
        int offset = page * numItemsPerPage;
        for(int i = offset; i < Math.min(offset + numItemsPerPage, mWidgets.size()); i++)
            items.add(mWidgets.get(i));

        PagedViewGridLayout layout = (PagedViewGridLayout)getPageAt(page + mNumAppsPages);
        layout.setColumnCount(layout.getCellCountX());
        for(int i = 0; i < items.size(); i++)
        {
            Object rawInfo = items.get(i);
            PendingAddItemInfo createItemInfo = null;
            PagedViewWidget widget = (PagedViewWidget)mLayoutInflater.inflate(0x7f030006, layout, false);
            if(rawInfo instanceof AppWidgetProviderInfo)
            {
                AppWidgetProviderInfo info = (AppWidgetProviderInfo)rawInfo;
                createItemInfo = new PendingAddWidgetInfo(info, null, null);
                int cellSpans[] = mLauncher.getSpanForWidget(info, null);
                widget.applyFromAppWidgetProviderInfo(info, -1, cellSpans, mHolographicOutlineHelper);
                widget.setTag(createItemInfo);
            } else
            if(rawInfo instanceof ResolveInfo)
            {
                ResolveInfo info = (ResolveInfo)rawInfo;
                createItemInfo = new PendingAddItemInfo();
                createItemInfo.itemType = 1;
                createItemInfo.componentName = new ComponentName(info.activityInfo.packageName, info.activityInfo.name);
                widget.applyFromResolveInfo(mPackageManager, info, mHolographicOutlineHelper);
                widget.setTag(createItemInfo);
            }
            widget.setOnClickListener(this);
            widget.setOnLongClickListener(this);
            widget.setOnTouchListener(this);
            int ix = i % mWidgetCountX;
            int iy = i / mWidgetCountX;
            android.widget.GridLayout.LayoutParams lp = new android.widget.GridLayout.LayoutParams(GridLayout.spec(iy, GridLayout.LEFT), GridLayout.spec(ix, GridLayout.TOP));
            lp.width = cellWidth;
            lp.height = cellHeight;
            lp.setGravity(51);
            if(ix > 0)
                lp.leftMargin = mWidgetWidthGap;
            if(iy > 0)
                lp.topMargin = mWidgetHeightGap;
            layout.addView(widget, lp);
        }

        if(immediate)
        {
            AsyncTaskPageData data = new AsyncTaskPageData(page, items, cellWidth, cellHeight, mWidgetCountX, null, null);
            loadWidgetPreviewsInBackground(null, data);
            onSyncWidgetPageItems(data);
        } else
        {
            prepareLoadWidgetPreviewsTask(page, items, cellWidth, cellHeight, mWidgetCountX);
        }
    }

    private void loadWidgetPreviewsInBackground(AppsCustomizeAsyncTask task, AsyncTaskPageData data)
    {
        if(task != null)
            task.syncThreadPriority();
        ArrayList items = data.items;
        ArrayList images = data.generatedImages;
        int count = items.size();
        int cellWidth = data.cellWidth;
        int cellHeight = data.cellHeight;
        for(int i = 0; i < count; i++)
        {
            if(task != null)
            {
                if(task.isCancelled())
                    break;
                task.syncThreadPriority();
            }
            Object rawInfo = items.get(i);
            if(rawInfo instanceof AppWidgetProviderInfo)
            {
                AppWidgetProviderInfo info = (AppWidgetProviderInfo)rawInfo;
                int cellSpans[] = mLauncher.getSpanForWidget(info, null);
                images.add(getWidgetPreview(info, cellSpans[0], cellSpans[1], cellWidth, cellHeight));
            } else
            if(rawInfo instanceof ResolveInfo)
            {
                ResolveInfo info = (ResolveInfo)rawInfo;
                images.add(getShortcutPreview(info, cellWidth, cellHeight));
            }
        }

    }

    private void onSyncWidgetPageItems(AsyncTaskPageData data)
    {
        int page = data.page;
        PagedViewGridLayout layout = (PagedViewGridLayout)getPageAt(page + mNumAppsPages);
        ArrayList items = data.items;
        int count = items.size();
        for(int i = 0; i < count; i++)
        {
            PagedViewWidget widget = (PagedViewWidget)layout.getChildAt(i);
            if(widget != null)
            {
                Bitmap preview = (Bitmap)data.generatedImages.get(i);
                boolean scale = preview.getWidth() >= data.cellWidth || preview.getHeight() >= data.cellHeight;
                widget.applyPreview(new FastBitmapDrawable(preview), i, scale);
            }
        }

        layout.createHardwareLayer();
        invalidate();
        forceUpdateAdjacentPagesAlpha();
    }

    private void onHolographicPageItemsLoaded(AsyncTaskPageData data)
    {
        invalidate();
        int page = data.page;
        ViewGroup layout = (ViewGroup)getPageAt(page);
        if(layout instanceof PagedViewCellLayout)
        {
            PagedViewCellLayout cl = (PagedViewCellLayout)layout;
            int count = cl.getPageChildCount();
            if(count != data.generatedImages.size())
                return;
            for(int i = 0; i < count; i++)
            {
                PagedViewIcon icon = (PagedViewIcon)cl.getChildOnPageAt(i);
                icon.setHolographicOutline((Bitmap)data.generatedImages.get(i));
            }

        } else
        {
            int count = layout.getChildCount();
            if(count != data.generatedImages.size())
                return;
            for(int i = 0; i < count; i++)
            {
                View v = layout.getChildAt(i);
                ((PagedViewWidget)v).setHolographicOutline((Bitmap)data.generatedImages.get(i));
            }

        }
    }

    public void syncPages()
    {
        removeAllViews();
        cancelAllTasks();
        Context context = getContext();
        for(int j = 0; j < mNumWidgetPages; j++)
        {
            PagedViewGridLayout layout = new PagedViewGridLayout(context, mWidgetCountX, mWidgetCountY);
            setupPage(layout);
            addView(layout, new PagedViewGridLayout.LayoutParams(-1, -1));
        }

        for(int i = 0; i < mNumAppsPages; i++)
        {
            PagedViewCellLayout layout = new PagedViewCellLayout(context);
            setupPage(layout);
            addView(layout);
        }

    }

    public void syncPageItems(int page, boolean immediate)
    {
        if(page < mNumAppsPages)
            syncAppsPageItems(page, immediate);
        else
            syncWidgetPageItems(page - mNumAppsPages, immediate);
    }

    View getPageAt(int index)
    {
        return getChildAt(getChildCount() - index - 1);
    }

    protected int indexToPage(int index)
    {
        return getChildCount() - index - 1;
    }

    protected void screenScrolled(int screenCenter)
    {
        super.screenScrolled(screenCenter);
        for(int i = 0; i < getChildCount(); i++)
        {
            View v = getPageAt(i);
            if(v != null)
            {
                float scrollProgress = getScrollProgress(screenCenter, v, i);
                float interpolatedProgress = mZInterpolator.getInterpolation(Math.abs(Math.min(scrollProgress, 0.0F)));
                float scale = (1.0F - interpolatedProgress) + interpolatedProgress * TRANSITION_SCALE_FACTOR;
                float translationX = Math.min(0.0F, scrollProgress) * (float)v.getMeasuredWidth();
                float alpha = scrollProgress >= 0.0F ? 1.0F : mAlphaInterpolator.getInterpolation(1.0F - Math.abs(scrollProgress));
                v.setCameraDistance(mDensity * CAMERA_DISTANCE);
                int pageWidth = v.getMeasuredWidth();
                int pageHeight = v.getMeasuredHeight();
                if(i == 0 && scrollProgress < 0.0F)
                {
                    v.setPivotX(TRANSITION_PIVOT * (float)pageWidth);
                    v.setRotationY(-TRANSITION_MAX_ROTATION * scrollProgress);
                    scale = 1.0F;
                    alpha = 1.0F;
                    translationX = getScrollX();
                } else
                if(i == getChildCount() - 1 && scrollProgress > 0.0F)
                {
                    v.setPivotX((1.0F - TRANSITION_PIVOT) * (float)pageWidth);
                    v.setRotationY(-TRANSITION_MAX_ROTATION * scrollProgress);
                    scale = 1.0F;
                    alpha = 1.0F;
                    translationX = getScrollX() - mMaxScrollX;
                } else
                {
                    v.setPivotY((float)pageHeight / 2.0F);
                    v.setPivotX((float)pageWidth / 2.0F);
                    v.setRotationY(0.0F);
                }
                v.setTranslationX(translationX);
                v.setScaleX(scale);
                v.setScaleY(scale);
                v.setAlpha(alpha);
            }
        }

    }

    protected void overScroll(float amount)
    {
        acceleratedOverScroll(amount);
    }

    public int getPageContentWidth()
    {
        return mContentWidth;
    }

    protected void onPageEndMoving()
    {
        super.onPageEndMoving();
        mSaveInstanceStateItemIndex = -1;
    }

    public void setup(Launcher launcher, DragController dragController)
    {
        mLauncher = launcher;
        mDragController = dragController;
    }

    public void zoom(float f, boolean flag)
    {
    }

    public boolean isVisible()
    {
        return getVisibility() == 0;
    }

    public boolean isAnimating()
    {
        return false;
    }

    public void setApps(ArrayList list)
    {
        mApps = list;
        Collections.sort(mApps, LauncherModel.APP_NAME_COMPARATOR);
        updatePageCounts();
        if(testDataReady())
            requestLayout();
    }

    private void addAppsWithoutInvalidate(ArrayList list)
    {
        int count = list.size();
        for(int i = 0; i < count; i++)
        {
            ApplicationInfo info = (ApplicationInfo)list.get(i);
            int index = Collections.binarySearch(mApps, info, LauncherModel.APP_NAME_COMPARATOR);
            if(index < 0)
                mApps.add(-(index + 1), info);
        }

    }

    public void addApps(ArrayList list)
    {
        addAppsWithoutInvalidate(list);
        updatePageCounts();
        invalidatePageData();
    }

    private int findAppByComponent(List list, ApplicationInfo item)
    {
        ComponentName removeComponent = item.intent.getComponent();
        int length = list.size();
        for(int i = 0; i < length; i++)
        {
            ApplicationInfo info = (ApplicationInfo)list.get(i);
            if(info.intent.getComponent().equals(removeComponent))
                return i;
        }

        return -1;
    }

    private void removeAppsWithoutInvalidate(ArrayList list)
    {
        int length = list.size();
        for(int i = 0; i < length; i++)
        {
            ApplicationInfo info = (ApplicationInfo)list.get(i);
            int removeIndex = findAppByComponent(mApps, info);
            if(removeIndex > -1)
                mApps.remove(removeIndex);
        }

    }

    public void removeApps(ArrayList list)
    {
        removeAppsWithoutInvalidate(list);
        updatePageCounts();
        invalidatePageData();
    }

    public void updateApps(ArrayList list)
    {
        removeAppsWithoutInvalidate(list);
        addAppsWithoutInvalidate(list);
        updatePageCounts();
        invalidatePageData();
    }

    public void reset()
    {
        AppsCustomizeTabHost tabHost = getTabHost();
        String tag = tabHost.getCurrentTabTag();
        if(tag != null && !tag.equals(tabHost.getTabTagForContentType(ContentType.Applications)))
            tabHost.setCurrentTabFromContent(ContentType.Applications);
        if(mCurrentPage != 0)
            invalidatePageData(0);
    }

    private AppsCustomizeTabHost getTabHost()
    {
        return (AppsCustomizeTabHost)mLauncher.findViewById(0x7f060021);
    }

    public void dumpState()
    {
        ApplicationInfo.dumpApplicationInfoList("AppsCustomizePagedView", "mApps", mApps);
        dumpAppWidgetProviderInfoList("AppsCustomizePagedView", "mWidgets", mWidgets);
    }

    private void dumpAppWidgetProviderInfoList(String tag, String label, ArrayList list)
    {
        Log.d(tag, (new StringBuilder(String.valueOf(label))).append(" size=").append(list.size()).toString());
        for(Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            Object i = iterator.next();
            if(i instanceof AppWidgetProviderInfo)
            {
                AppWidgetProviderInfo info = (AppWidgetProviderInfo)i;
                Log.d(tag, (new StringBuilder("   label=\"")).append(info.label).append("\" previewImage=").append(info.previewImage).append(" resizeMode=").append(info.resizeMode).append(" configure=").append(info.configure).append(" initialLayout=").append(info.initialLayout).append(" minWidth=").append(info.minWidth).append(" minHeight=").append(info.minHeight).toString());
            } else
            if(i instanceof ResolveInfo)
            {
                ResolveInfo info = (ResolveInfo)i;
                Log.d(tag, (new StringBuilder("   label=\"")).append(info.loadLabel(mPackageManager)).append("\" icon=").append(info.icon).toString());
            }
        }

    }

    public void surrender()
    {
        cancelAllTasks();
    }

    protected int getAssociatedLowerPageBound(int page)
    {
        return Math.max(0, page - 2);
    }

    protected int getAssociatedUpperPageBound(int page)
    {
        int count = getChildCount();
        return Math.min(page + 2, count - 1);
    }

    protected String getCurrentPageDescription()
    {
        int page = mNextPage == -1 ? mCurrentPage : mNextPage;
        int stringId = 0x7f0c0044;
        int count = 0;
        if(page < mNumAppsPages)
        {
            stringId = 0x7f0c0046;
            count = mNumAppsPages;
        } else
        {
            page -= mNumAppsPages;
            stringId = 0x7f0c0047;
            count = mNumWidgetPages;
        }
        return String.format(mContext.getString(stringId), new Object[] {
            Integer.valueOf(page + 1), Integer.valueOf(count)
        });
    }

    static final String LOG_TAG = "AppsCustomizePagedView";
    private Launcher mLauncher;
    private DragController mDragController;
    private final LayoutInflater mLayoutInflater;
    private final PackageManager mPackageManager;
    private int mSaveInstanceStateItemIndex;
    private ArrayList mApps;
    private ArrayList mWidgets;
    private int mClingFocusedX;
    private int mClingFocusedY;
    private Canvas mCanvas;
    private Drawable mDefaultWidgetBackground;
    private IconCache mIconCache;
    private int mDragViewMultiplyColor;
    private int mContentWidth;
    private int mAppIconSize;
    private int mWidgetCountX;
    private int mWidgetCountY;
    private int mWidgetWidthGap;
    private int mWidgetHeightGap;
    private final int mWidgetPreviewIconPaddedDimension;
    private final float sWidgetPreviewIconPaddingPercentage = 0.25F;
    private PagedViewCellLayout mWidgetSpacingLayout;
    private int mNumAppsPages;
    private int mNumWidgetPages;
    Workspace.ZInterpolator mZInterpolator;
    private static float CAMERA_DISTANCE = 6500F;
    private static float TRANSITION_SCALE_FACTOR = 0.74F;
    private static float TRANSITION_PIVOT = 0.65F;
    private static float TRANSITION_MAX_ROTATION = 22F;
    private static final boolean PERFORM_OVERSCROLL_ROTATION = true;
    private AccelerateInterpolator mAlphaInterpolator;
    ArrayList mRunningTasks;
    private HolographicOutlineHelper mHolographicOutlineHelper;
    private static final int sPageSleepDelay = 150;





}
