// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Workspace.java

package com.android.launcher2;

import android.animation.*;
import android.app.AlertDialog;
import android.app.WallpaperManager;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.*;
import android.content.res.*;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.os.Parcelable;
import android.text.Layout;
import android.util.*;
import android.view.*;
import android.view.animation.DecelerateInterpolator;
import android.widget.*;
import com.android.launcher.R;
import java.util.*;

// Referenced classes of package com.android.launcher2:
//            SmoothPagedView, DropTarget, DragSource, DragScroller, 
//            HolographicOutlineHelper, Alarm, LauncherApplication, CellLayout, 
//            LauncherModel, Launcher, DragLayer, Folder, 
//            FolderInfo, Hotseat, FolderIcon, IconKeyEventListener, 
//            DragController, BubbleTextView, PagedViewIcon, ItemInfo, 
//            ShortcutInfo, LauncherAppWidgetHostView, DragView, PendingAddWidgetInfo, 
//            LauncherAppWidgetInfo, SpringLoadedDragController, PendingAddItemInfo, ApplicationInfo, 
//            CellLayoutChildren, IconCache, FastBitmapDrawable, InstallWidgetReceiver, 
//            OnAlarmListener, LauncherAnimatorUpdateListener

public class Workspace extends SmoothPagedView
    implements DropTarget, DragSource, DragScroller, android.view.View.OnTouchListener, DragController.DragListener
{
    class FolderCreationAlarmListener
        implements OnAlarmListener
    {

        public void onAlarm(Alarm alarm)
        {
            if(mDragFolderRingAnimator == null)
                mDragFolderRingAnimator = new FolderIcon.FolderRingAnimator(mLauncher, null);
            mDragFolderRingAnimator.setCell(cellX, cellY);
            mDragFolderRingAnimator.setCellLayout(layout);
            mDragFolderRingAnimator.animateToAcceptState();
            layout.showFolderAccept(mDragFolderRingAnimator);
            layout.clearDragOutlines();
            mCreateUserFolderOnDrop = true;
        }

        CellLayout layout;
        int cellX;
        int cellY;
        final Workspace this$0;

        public FolderCreationAlarmListener(CellLayout layout, int cellX, int cellY)
        {
            this$0 = Workspace.this;
            super();
            this.layout = layout;
            this.cellX = cellX;
            this.cellY = cellY;
        }
    }

    static class InverseZInterpolator
        implements TimeInterpolator
    {

        public float getInterpolation(float input)
        {
            return 1.0F - zInterpolator.getInterpolation(1.0F - input);
        }

        private ZInterpolator zInterpolator;

        public InverseZInterpolator(float foc)
        {
            zInterpolator = new ZInterpolator(foc);
        }
    }

    static final class State extends Enum
    {

        public static State[] values()
        {
            State astate[];
            int i;
            State astate1[];
            System.arraycopy(astate = ENUM$VALUES, 0, astate1 = new State[i = astate.length], 0, i);
            return astate1;
        }

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(com/android/launcher2/Workspace$State, s);
        }

        public static final State NORMAL;
        public static final State SPRING_LOADED;
        public static final State SMALL;
        private static final State ENUM$VALUES[];

        static 
        {
            NORMAL = new State("NORMAL", 0);
            SPRING_LOADED = new State("SPRING_LOADED", 1);
            SMALL = new State("SMALL", 2);
            ENUM$VALUES = (new State[] {
                NORMAL, SPRING_LOADED, SMALL
            });
        }

        private State(String s, int i)
        {
            super(s, i);
        }
    }

    class WallpaperOffsetInterpolator
    {

        public void setOverrideHorizontalCatchupConstant(boolean override)
        {
            mOverrideHorizontalCatchupConstant = override;
        }

        public void setHorizontalCatchupConstant(float f)
        {
            mHorizontalCatchupConstant = f;
        }

        public void setVerticalCatchupConstant(float f)
        {
            mVerticalCatchupConstant = f;
        }

        public boolean computeScrollOffset()
        {
            if(Float.compare(mHorizontalWallpaperOffset, mFinalHorizontalWallpaperOffset) == 0 && Float.compare(mVerticalWallpaperOffset, mFinalVerticalWallpaperOffset) == 0)
            {
                mIsMovingFast = false;
                return false;
            }
            boolean isLandscape = mDisplayWidth > mDisplayHeight;
            long currentTime = System.currentTimeMillis();
            long timeSinceLastUpdate = currentTime - mLastWallpaperOffsetUpdateTime;
            timeSinceLastUpdate = Math.min(33L, timeSinceLastUpdate);
            timeSinceLastUpdate = Math.max(1L, timeSinceLastUpdate);
            float xdiff = Math.abs(mFinalHorizontalWallpaperOffset - mHorizontalWallpaperOffset);
            if(!mIsMovingFast && (double)xdiff > 0.070000000000000007D)
                mIsMovingFast = true;
            float fractionToCatchUpIn1MsHorizontal;
            if(mOverrideHorizontalCatchupConstant)
                fractionToCatchUpIn1MsHorizontal = mHorizontalCatchupConstant;
            else
            if(mIsMovingFast)
                fractionToCatchUpIn1MsHorizontal = isLandscape ? 0.5F : 0.75F;
            else
                fractionToCatchUpIn1MsHorizontal = isLandscape ? 0.27F : 0.5F;
            float fractionToCatchUpIn1MsVertical = mVerticalCatchupConstant;
            fractionToCatchUpIn1MsHorizontal /= 33F;
            fractionToCatchUpIn1MsVertical /= 33F;
            float UPDATE_THRESHOLD = 1E-005F;
            float hOffsetDelta = mFinalHorizontalWallpaperOffset - mHorizontalWallpaperOffset;
            float vOffsetDelta = mFinalVerticalWallpaperOffset - mVerticalWallpaperOffset;
            boolean jumpToFinalValue = Math.abs(hOffsetDelta) < 1E-005F && Math.abs(vOffsetDelta) < 1E-005F;
            if(!LauncherApplication.isScreenLarge() || jumpToFinalValue)
            {
                mHorizontalWallpaperOffset = mFinalHorizontalWallpaperOffset;
                mVerticalWallpaperOffset = mFinalVerticalWallpaperOffset;
            } else
            {
                float percentToCatchUpVertical = Math.min(1.0F, (float)timeSinceLastUpdate * fractionToCatchUpIn1MsVertical);
                float percentToCatchUpHorizontal = Math.min(1.0F, (float)timeSinceLastUpdate * fractionToCatchUpIn1MsHorizontal);
                mHorizontalWallpaperOffset += percentToCatchUpHorizontal * hOffsetDelta;
                mVerticalWallpaperOffset += percentToCatchUpVertical * vOffsetDelta;
            }
            mLastWallpaperOffsetUpdateTime = System.currentTimeMillis();
            return true;
        }

        public float getCurrX()
        {
            return mHorizontalWallpaperOffset;
        }

        public float getFinalX()
        {
            return mFinalHorizontalWallpaperOffset;
        }

        public float getCurrY()
        {
            return mVerticalWallpaperOffset;
        }

        public float getFinalY()
        {
            return mFinalVerticalWallpaperOffset;
        }

        public void setFinalX(float x)
        {
            mFinalHorizontalWallpaperOffset = Math.max(0.0F, Math.min(x, 1.0F));
        }

        public void setFinalY(float y)
        {
            mFinalVerticalWallpaperOffset = Math.max(0.0F, Math.min(y, 1.0F));
        }

        public void jumpToFinal()
        {
            mHorizontalWallpaperOffset = mFinalHorizontalWallpaperOffset;
            mVerticalWallpaperOffset = mFinalVerticalWallpaperOffset;
        }

        float mFinalHorizontalWallpaperOffset;
        float mFinalVerticalWallpaperOffset;
        float mHorizontalWallpaperOffset;
        float mVerticalWallpaperOffset;
        long mLastWallpaperOffsetUpdateTime;
        boolean mIsMovingFast;
        boolean mOverrideHorizontalCatchupConstant;
        float mHorizontalCatchupConstant;
        float mVerticalCatchupConstant;
        final Workspace this$0;

        public WallpaperOffsetInterpolator()
        {
            this$0 = Workspace.this;
            super();
            mFinalHorizontalWallpaperOffset = 0.0F;
            mFinalVerticalWallpaperOffset = 0.5F;
            mHorizontalWallpaperOffset = 0.0F;
            mVerticalWallpaperOffset = 0.5F;
            mHorizontalCatchupConstant = 0.35F;
            mVerticalCatchupConstant = 0.35F;
            mVerticalWallpaperOffset = LauncherApplication.isScreenLarge() ? 0.5F : 0.0F;
            mFinalVerticalWallpaperOffset = LauncherApplication.isScreenLarge() ? 0.5F : 0.0F;
        }
    }

    static final class WallpaperVerticalOffset extends Enum
    {

        public static WallpaperVerticalOffset[] values()
        {
            WallpaperVerticalOffset awallpaperverticaloffset[];
            int i;
            WallpaperVerticalOffset awallpaperverticaloffset1[];
            System.arraycopy(awallpaperverticaloffset = ENUM$VALUES, 0, awallpaperverticaloffset1 = new WallpaperVerticalOffset[i = awallpaperverticaloffset.length], 0, i);
            return awallpaperverticaloffset1;
        }

        public static WallpaperVerticalOffset valueOf(String s)
        {
            return (WallpaperVerticalOffset)Enum.valueOf(com/android/launcher2/Workspace$WallpaperVerticalOffset, s);
        }

        public static final WallpaperVerticalOffset TOP;
        public static final WallpaperVerticalOffset MIDDLE;
        public static final WallpaperVerticalOffset BOTTOM;
        private static final WallpaperVerticalOffset ENUM$VALUES[];

        static 
        {
            TOP = new WallpaperVerticalOffset("TOP", 0);
            MIDDLE = new WallpaperVerticalOffset("MIDDLE", 1);
            BOTTOM = new WallpaperVerticalOffset("BOTTOM", 2);
            ENUM$VALUES = (new WallpaperVerticalOffset[] {
                TOP, MIDDLE, BOTTOM
            });
        }

        private WallpaperVerticalOffset(String s, int i)
        {
            super(s, i);
        }
    }

    static class ZInterpolator
        implements TimeInterpolator
    {

        public float getInterpolation(float input)
        {
            return (1.0F - focalLength / (focalLength + input)) / (1.0F - focalLength / (focalLength + 1.0F));
        }

        private float focalLength;

        public ZInterpolator(float foc)
        {
            focalLength = foc;
        }
    }

    static class ZoomInInterpolator
        implements TimeInterpolator
    {

        public float getInterpolation(float input)
        {
            return decelerate.getInterpolation(inverseZInterpolator.getInterpolation(input));
        }

        private final InverseZInterpolator inverseZInterpolator = new InverseZInterpolator(0.35F);
        private final DecelerateInterpolator decelerate = new DecelerateInterpolator(3F);

        ZoomInInterpolator()
        {
        }
    }

    static class ZoomOutInterpolator
        implements TimeInterpolator
    {

        public float getInterpolation(float input)
        {
            return decelerate.getInterpolation(zInterpolator.getInterpolation(input));
        }

        private final DecelerateInterpolator decelerate = new DecelerateInterpolator(0.75F);
        private final ZInterpolator zInterpolator = new ZInterpolator(0.13F);

        ZoomOutInterpolator()
        {
        }
    }


    public Workspace(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public Workspace(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mChildrenOutlineAlpha = 0.0F;
        mDrawBackground = true;
        mBackgroundAlpha = 0.0F;
        mOverScrollMaxBackgroundAlpha = 0.0F;
        mOverScrollPageIndex = -1;
        mWallpaperScrollRatio = 1.0F;
        mTargetCell = new int[2];
        mDragTargetLayout = null;
        mTempCell = new int[2];
        mTempEstimate = new int[2];
        mDragViewVisualCenter = new float[2];
        mTempDragCoordinates = new float[2];
        mTempCellLayoutCenterCoordinates = new float[2];
        mTempDragBottomRightCoordinates = new float[2];
        mTempInverseMatrix = new Matrix();
        mState = State.NORMAL;
        mIsSwitchingState = false;
        mSwitchStateAfterFirstLayout = false;
        mAnimatingViewIntoPlace = false;
        mIsDragOccuring = false;
        mChildrenLayersEnabled = true;
        mInScrollArea = false;
        mOutlineHelper = new HolographicOutlineHelper();
        mDragOutline = null;
        mTempRect = new Rect();
        mTempXY = new int[2];
        mExternalDragOutlinePaint = new Paint();
        mMatrix = new Matrix();
        mCamera = new Camera();
        mTempFloat2 = new float[2];
        mUpdateWallpaperOffsetImmediately = false;
        mFolderCreationAlarm = new Alarm();
        mDragFolderRingAnimator = null;
        mLastDragOverView = null;
        mCreateUserFolderOnDrop = false;
        mZoomInInterpolator = new ZoomInInterpolator();
        mContentIsRefreshable = false;
        setDataIsReady();
        mFadeInAdjacentScreens = getResources().getBoolean(0x7f080003);
        mWallpaperManager = WallpaperManager.getInstance(context);
        int cellCountX = 4;
        int cellCountY = 4;
        TypedArray a = context.obtainStyledAttributes(attrs, com.android.launcher.R.styleable.Workspace, defStyle, 0);
        Resources res = context.getResources();
        if(LauncherApplication.isScreenLarge())
        {
            TypedArray actionBarSizeTypedArray = context.obtainStyledAttributes(new int[] {
                0x10102eb
            });
            float actionBarHeight = actionBarSizeTypedArray.getDimension(0, 0.0F);
            float systemBarHeight = res.getDimension(0x7f0a002d);
            float smallestScreenDim = res.getConfiguration().smallestScreenWidthDp;
            for(cellCountX = 1; (float)CellLayout.widthInPortrait(res, cellCountX + 1) <= smallestScreenDim; cellCountX++);
            for(cellCountY = 1; actionBarHeight + (float)CellLayout.heightInLandscape(res, cellCountY + 1) <= smallestScreenDim - systemBarHeight; cellCountY++);
        }
        mSpringLoadedShrinkFactor = (float)res.getInteger(0x7f090005) / 100F;
        mDragViewMultiplyColor = res.getColor(0x7f070002);
        cellCountX = a.getInt(1, cellCountX);
        cellCountY = a.getInt(2, cellCountY);
        mDefaultPage = a.getInt(0, 1);
        a.recycle();
        LauncherModel.updateWorkspaceLayoutCells(cellCountX, cellCountY);
        setHapticFeedbackEnabled(false);
        mLauncher = (Launcher)context;
        initWorkspace();
        setMotionEventSplittingEnabled(true);
    }

    public void buildPageHardwareLayers()
    {
        if(getWindowToken() != null)
        {
            int childCount = getChildCount();
            for(int i = 0; i < childCount; i++)
            {
                CellLayout cl = (CellLayout)getChildAt(i);
                cl.buildChildrenLayer();
            }

        }
    }

    public void onDragStart(DragSource source, Object info, int dragAction)
    {
        mIsDragOccuring = true;
        updateChildrenLayersEnabled();
        mLauncher.lockScreenOrientationOnLargeUI();
    }

    public void onDragEnd()
    {
        mIsDragOccuring = false;
        updateChildrenLayersEnabled();
        mLauncher.unlockScreenOrientationOnLargeUI();
    }

    protected void initWorkspace()
    {
        Context context = getContext();
        mCurrentPage = mDefaultPage;
        Launcher.setScreen(mCurrentPage);
        LauncherApplication app = (LauncherApplication)context.getApplicationContext();
        mIconCache = app.getIconCache();
        mExternalDragOutlinePaint.setAntiAlias(true);
        setWillNotDraw(false);
        setChildrenDrawnWithCacheEnabled(true);
        try
        {
            Resources res = getResources();
            mBackground = res.getDrawable(0x7f020001);
        }
        catch(android.content.res.Resources.NotFoundException notfoundexception) { }
        mChangeStateAnimationListener = new AnimatorListenerAdapter() {

            public void onAnimationStart(Animator animation)
            {
                mIsSwitchingState = true;
            }

            public void onAnimationEnd(Animator animation)
            {
                mIsSwitchingState = false;
                mWallpaperOffset.setOverrideHorizontalCatchupConstant(false);
                mAnimator = null;
                updateChildrenLayersEnabled();
            }

            final Workspace this$0;

            
            {
                this$0 = Workspace.this;
                super();
            }
        }
;
        mSnapVelocity = 600;
        mWallpaperOffset = new WallpaperOffsetInterpolator();
        Display display = mLauncher.getWindowManager().getDefaultDisplay();
        mDisplayWidth = display.getWidth();
        mDisplayHeight = display.getHeight();
        mWallpaperTravelWidth = (int)((float)mDisplayWidth * wallpaperTravelToScreenWidthRatio(mDisplayWidth, mDisplayHeight));
    }

    protected int getScrollMode()
    {
        return 1;
    }

    protected void onViewAdded(View child)
    {
        super.onViewAdded(child);
        if(!(child instanceof CellLayout))
        {
            throw new IllegalArgumentException("A Workspace can only have CellLayout children.");
        } else
        {
            CellLayout cl = (CellLayout)child;
            cl.setOnInterceptTouchListener(this);
            cl.setClickable(true);
            cl.enableHardwareLayers();
            return;
        }
    }

    Folder getOpenFolder()
    {
        DragLayer dragLayer = mLauncher.getDragLayer();
        int count = dragLayer.getChildCount();
        for(int i = 0; i < count; i++)
        {
            View child = dragLayer.getChildAt(i);
            if(child instanceof Folder)
            {
                Folder folder = (Folder)child;
                if(folder.getInfo().opened)
                    return folder;
            }
        }

        return null;
    }

    boolean isTouchActive()
    {
        return mTouchState != 0;
    }

    void addInScreen(View child, long container, int screen, int x, int y, int spanX, 
            int spanY)
    {
        addInScreen(child, container, screen, x, y, spanX, spanY, false);
    }

    void addInScreen(View child, long container, int screen, int x, int y, int spanX, 
            int spanY, boolean insert)
    {
        if(container == -100L && (screen < 0 || screen >= getChildCount()))
        {
            Log.e("Launcher.Workspace", (new StringBuilder("The screen must be >= 0 and < ")).append(getChildCount()).append(" (was ").append(screen).append("); skipping child").toString());
            return;
        }
        CellLayout layout;
        if(container == -101L)
        {
            layout = mLauncher.getHotseat().getLayout();
            child.setOnKeyListener(null);
            if(child instanceof FolderIcon)
                ((FolderIcon)child).setTextVisible(false);
            if(screen < 0)
            {
                screen = mLauncher.getHotseat().getOrderInHotseat(x, y);
            } else
            {
                x = mLauncher.getHotseat().getCellXFromOrder(screen);
                y = mLauncher.getHotseat().getCellYFromOrder(screen);
            }
        } else
        {
            if(child instanceof FolderIcon)
                ((FolderIcon)child).setTextVisible(true);
            layout = (CellLayout)getChildAt(screen);
            child.setOnKeyListener(new IconKeyEventListener());
        }
        CellLayout.LayoutParams lp = (CellLayout.LayoutParams)child.getLayoutParams();
        if(lp == null)
        {
            lp = new CellLayout.LayoutParams(x, y, spanX, spanY);
        } else
        {
            lp.cellX = x;
            lp.cellY = y;
            lp.cellHSpan = spanX;
            lp.cellVSpan = spanY;
        }
        if(spanX < 0 && spanY < 0)
            lp.isLockedToGrid = false;
        int childId = LauncherModel.getCellLayoutChildId(container, screen, x, y, spanX, spanY);
        boolean markCellsAsOccupied = !(child instanceof Folder);
        if(!layout.addViewToCellLayout(child, insert ? 0 : -1, childId, lp, markCellsAsOccupied))
            Log.w("Launcher.Workspace", (new StringBuilder("Failed to add to item at (")).append(lp.cellX).append(",").append(lp.cellY).append(") to CellLayout").toString());
        if(!(child instanceof Folder))
        {
            child.setHapticFeedbackEnabled(false);
            child.setOnLongClickListener(mLongClickListener);
        }
        if(child instanceof DropTarget)
            mDragController.addDropTarget((DropTarget)child);
    }

    private boolean hitsPage(int index, float x, float y)
    {
        View page = getChildAt(index);
        if(page != null)
        {
            float localXY[] = {
                x, y
            };
            mapPointFromSelfToChild(page, localXY);
            return localXY[0] >= 0.0F && localXY[0] < (float)page.getWidth() && localXY[1] >= 0.0F && localXY[1] < (float)page.getHeight();
        } else
        {
            return false;
        }
    }

    protected boolean hitsPreviousPage(float x, float y)
    {
        int current = mNextPage != -1 ? mNextPage : mCurrentPage;
        return LauncherApplication.isScreenLarge() && hitsPage(current - 1, x, y);
    }

    protected boolean hitsNextPage(float x, float y)
    {
        int current = mNextPage != -1 ? mNextPage : mCurrentPage;
        return LauncherApplication.isScreenLarge() && hitsPage(current + 1, x, y);
    }

    public boolean onTouch(View v, MotionEvent event)
    {
        return isSmall() || mIsSwitchingState;
    }

    public boolean isSwitchingState()
    {
        return mIsSwitchingState;
    }

    protected void onWindowVisibilityChanged(int visibility)
    {
        mLauncher.onWindowVisibilityChanged(visibility);
    }

    public boolean dispatchUnhandledMove(View focused, int direction)
    {
        if(isSmall() || mIsSwitchingState)
            return false;
        else
            return super.dispatchUnhandledMove(focused, direction);
    }

    public boolean onInterceptTouchEvent(MotionEvent ev)
    {
        switch(ev.getAction() & 0xff)
        {
        case 2: // '\002'
        case 3: // '\003'
        case 4: // '\004'
        case 5: // '\005'
        default:
            break;

        case 0: // '\0'
            mXDown = ev.getX();
            mYDown = ev.getY();
            break;

        case 1: // '\001'
        case 6: // '\006'
            if(mTouchState != 0)
                break;
            CellLayout currentPage = (CellLayout)getChildAt(mCurrentPage);
            if(!currentPage.lastDownOnOccupiedCell())
                onWallpaperTap(ev);
            break;
        }
        return super.onInterceptTouchEvent(ev);
    }

    protected void determineScrollingStart(MotionEvent ev)
    {
        if(!isSmall() && !mIsSwitchingState)
        {
            float deltaX = Math.abs(ev.getX() - mXDown);
            float deltaY = Math.abs(ev.getY() - mYDown);
            if(Float.compare(deltaX, 0.0F) == 0)
                return;
            float slope = deltaY / deltaX;
            float theta = (float)Math.atan(slope);
            if(deltaX > (float)mTouchSlop || deltaY > (float)mTouchSlop)
                cancelCurrentPageLongPress();
            if(theta > 1.047198F)
                return;
            if(theta > 0.5235988F)
            {
                theta -= 0.5235988F;
                float extraRatio = (float)Math.sqrt(theta / 0.5235988F);
                super.determineScrollingStart(ev, 1.0F + 4F * extraRatio);
            } else
            {
                super.determineScrollingStart(ev);
            }
        }
    }

    protected boolean isScrollingIndicatorEnabled()
    {
        return mState != State.SPRING_LOADED;
    }

    protected void onPageBeginMoving()
    {
        super.onPageBeginMoving();
        mIsStaticWallpaper = mWallpaperManager.getWallpaperInfo() == null;
        if(isHardwareAccelerated())
            updateChildrenLayersEnabled();
        else
        if(mNextPage != -1)
            enableChildrenCache(mCurrentPage, mNextPage);
        else
            enableChildrenCache(mCurrentPage - 1, mCurrentPage + 1);
        if(LauncherApplication.isScreenLarge())
            showOutlines();
    }

    protected void onPageEndMoving()
    {
        super.onPageEndMoving();
        if(isHardwareAccelerated())
            updateChildrenLayersEnabled();
        else
            clearChildrenCache();
        if(!mDragController.dragging() && LauncherApplication.isScreenLarge())
            hideOutlines();
        mOverScrollMaxBackgroundAlpha = 0.0F;
        mOverScrollPageIndex = -1;
        if(mDelayedResizeRunnable != null)
        {
            mDelayedResizeRunnable.run();
            mDelayedResizeRunnable = null;
        }
    }

    protected void notifyPageSwitchListener()
    {
        super.notifyPageSwitchListener();
        Launcher.setScreen(mCurrentPage);
    }

    private float wallpaperTravelToScreenHeightRatio(int width, int height)
    {
        return 1.1F;
    }

    private float wallpaperTravelToScreenWidthRatio(int width, int height)
    {
        float aspectRatio = (float)width / (float)height;
        float ASPECT_RATIO_LANDSCAPE = 1.6F;
        float ASPECT_RATIO_PORTRAIT = 0.625F;
        float WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE = 1.5F;
        float WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT = 1.2F;
        float x = 0.3076923F;
        float y = 1.007692F;
        return 0.3076923F * aspectRatio + 1.007692F;
    }

    private int getScrollRange()
    {
        return getChildOffset(getChildCount() - 1) - getChildOffset(0);
    }

    protected void setWallpaperDimension()
    {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        mLauncher.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        int maxDim = Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels);
        int minDim = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
        if(LauncherApplication.isScreenLarge())
        {
            mWallpaperWidth = (int)((float)maxDim * wallpaperTravelToScreenWidthRatio(maxDim, minDim));
            mWallpaperHeight = (int)((float)maxDim * wallpaperTravelToScreenHeightRatio(maxDim, minDim));
        } else
        {
            mWallpaperWidth = Math.max((int)((float)minDim * 2.0F), maxDim);
            mWallpaperHeight = maxDim;
        }
        (new Thread("setWallpaperDimension") {

            public void run()
            {
                mWallpaperManager.suggestDesiredDimensions(mWallpaperWidth, mWallpaperHeight);
            }

            final Workspace this$0;

            
            {
                this$0 = Workspace.this;
                super($anonymous0);
            }
        }
).start();
    }

    public void setVerticalWallpaperOffset(float offset)
    {
        mWallpaperOffset.setFinalY(offset);
    }

    public float getVerticalWallpaperOffset()
    {
        return mWallpaperOffset.getCurrY();
    }

    public void setHorizontalWallpaperOffset(float offset)
    {
        mWallpaperOffset.setFinalX(offset);
    }

    public float getHorizontalWallpaperOffset()
    {
        return mWallpaperOffset.getCurrX();
    }

    private float wallpaperOffsetForCurrentScroll()
    {
        boolean overScrollWallpaper = LauncherApplication.isScreenLarge();
        boolean isStaticWallpaper = mIsStaticWallpaper;
        int wallpaperTravelWidth = mWallpaperTravelWidth;
        if(!overScrollWallpaper || !isStaticWallpaper)
            wallpaperTravelWidth = mWallpaperWidth;
        if(LauncherApplication.isScreenLarge())
            mWallpaperManager.setWallpaperOffsetSteps(1.0F / (float)(getChildCount() - 1), 0.5F);
        else
            mWallpaperManager.setWallpaperOffsetSteps(1.0F / (float)(getChildCount() - 1), 1.0F);
        float layoutScale = mLayoutScale;
        mLayoutScale = 1.0F;
        int scrollRange = getScrollRange();
        float scrollProgressOffset = 0.0F;
        if(isStaticWallpaper && overScrollWallpaper)
        {
            int overScrollOffset = (int)(maxOverScroll() * (float)mDisplayWidth);
            scrollProgressOffset += (float)overScrollOffset / (float)getScrollRange();
            scrollRange += 2 * overScrollOffset;
        }
        float adjustedScrollX = overScrollWallpaper ? mScrollX : Math.max(0, Math.min(mScrollX, mMaxScrollX));
        adjustedScrollX *= mWallpaperScrollRatio;
        mLayoutScale = layoutScale;
        float scrollProgress = adjustedScrollX / (float)scrollRange + scrollProgressOffset;
        float offsetInDips = (float)wallpaperTravelWidth * scrollProgress + (float)((mWallpaperWidth - wallpaperTravelWidth) / 2);
        float offset = offsetInDips / (float)mWallpaperWidth;
        return offset;
    }

    private void syncWallpaperOffsetWithScroll()
    {
        boolean enableWallpaperEffects = isHardwareAccelerated();
        if(enableWallpaperEffects)
            mWallpaperOffset.setFinalX(wallpaperOffsetForCurrentScroll());
    }

    public void updateWallpaperOffsetImmediately()
    {
        mUpdateWallpaperOffsetImmediately = true;
    }

    private void updateWallpaperOffsets()
    {
        boolean updateNow = false;
        boolean keepUpdating = true;
        if(mUpdateWallpaperOffsetImmediately)
        {
            updateNow = true;
            keepUpdating = false;
            mWallpaperOffset.jumpToFinal();
            mUpdateWallpaperOffsetImmediately = false;
        } else
        {
            updateNow = keepUpdating = mWallpaperOffset.computeScrollOffset();
        }
        if(updateNow && mWindowToken != null)
            mWallpaperManager.setWallpaperOffsets(mWindowToken, mWallpaperOffset.getCurrX(), mWallpaperOffset.getCurrY());
        if(keepUpdating)
            fastInvalidate();
    }

    protected void updateCurrentPageScroll()
    {
        super.updateCurrentPageScroll();
        computeWallpaperScrollRatio(mCurrentPage);
    }

    protected void snapToPage(int whichPage)
    {
        super.snapToPage(whichPage);
        computeWallpaperScrollRatio(whichPage);
    }

    private void computeWallpaperScrollRatio(int page)
    {
        float layoutScale = mLayoutScale;
        int scaled = getChildOffset(page) - getRelativeChildOffset(page);
        mLayoutScale = 1.0F;
        float unscaled = getChildOffset(page) - getRelativeChildOffset(page);
        mLayoutScale = layoutScale;
        if(scaled > 0)
            mWallpaperScrollRatio = (1.0F * unscaled) / (float)scaled;
        else
            mWallpaperScrollRatio = 1.0F;
    }

    public void computeScroll()
    {
        super.computeScroll();
        syncWallpaperOffsetWithScroll();
    }

    void showOutlines()
    {
        if(!isSmall() && !mIsSwitchingState)
        {
            if(mChildrenOutlineFadeOutAnimation != null)
                mChildrenOutlineFadeOutAnimation.cancel();
            if(mChildrenOutlineFadeInAnimation != null)
                mChildrenOutlineFadeInAnimation.cancel();
            mChildrenOutlineFadeInAnimation = ObjectAnimator.ofFloat(this, "childrenOutlineAlpha", new float[] {
                1.0F
            });
            mChildrenOutlineFadeInAnimation.setDuration(100L);
            mChildrenOutlineFadeInAnimation.start();
        }
    }

    void hideOutlines()
    {
        if(!isSmall() && !mIsSwitchingState)
        {
            if(mChildrenOutlineFadeInAnimation != null)
                mChildrenOutlineFadeInAnimation.cancel();
            if(mChildrenOutlineFadeOutAnimation != null)
                mChildrenOutlineFadeOutAnimation.cancel();
            mChildrenOutlineFadeOutAnimation = ObjectAnimator.ofFloat(this, "childrenOutlineAlpha", new float[] {
                0.0F
            });
            mChildrenOutlineFadeOutAnimation.setDuration(375L);
            mChildrenOutlineFadeOutAnimation.setStartDelay(0L);
            mChildrenOutlineFadeOutAnimation.start();
        }
    }

    public void showOutlinesTemporarily()
    {
        if(!mIsPageMoving && !isTouchActive())
            snapToPage(mCurrentPage);
    }

    public void setChildrenOutlineAlpha(float alpha)
    {
        mChildrenOutlineAlpha = alpha;
        for(int i = 0; i < getChildCount(); i++)
        {
            CellLayout cl = (CellLayout)getChildAt(i);
            cl.setBackgroundAlpha(alpha);
        }

    }

    public float getChildrenOutlineAlpha()
    {
        return mChildrenOutlineAlpha;
    }

    void disableBackground()
    {
        mDrawBackground = false;
    }

    void enableBackground()
    {
        mDrawBackground = true;
    }

    private void animateBackgroundGradient(float finalAlpha, boolean animated)
    {
        if(mBackground == null)
            return;
        if(mBackgroundFadeInAnimation != null)
        {
            mBackgroundFadeInAnimation.cancel();
            mBackgroundFadeInAnimation = null;
        }
        if(mBackgroundFadeOutAnimation != null)
        {
            mBackgroundFadeOutAnimation.cancel();
            mBackgroundFadeOutAnimation = null;
        }
        float startAlpha = getBackgroundAlpha();
        if(finalAlpha != startAlpha)
            if(animated)
            {
                mBackgroundFadeOutAnimation = ValueAnimator.ofFloat(new float[] {
                    startAlpha, finalAlpha
                });
                mBackgroundFadeOutAnimation.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

                    public void onAnimationUpdate(ValueAnimator animation)
                    {
                        setBackgroundAlpha(((Float)animation.getAnimatedValue()).floatValue());
                    }

                    final Workspace this$0;

            
            {
                this$0 = Workspace.this;
                super();
            }
                }
);
                mBackgroundFadeOutAnimation.setInterpolator(new DecelerateInterpolator(1.5F));
                mBackgroundFadeOutAnimation.setDuration(350L);
                mBackgroundFadeOutAnimation.start();
            } else
            {
                setBackgroundAlpha(finalAlpha);
            }
    }

    public void setBackgroundAlpha(float alpha)
    {
        if(alpha != mBackgroundAlpha)
        {
            mBackgroundAlpha = alpha;
            invalidate();
        }
    }

    public float getBackgroundAlpha()
    {
        return mBackgroundAlpha;
    }

    private float getOffsetXForRotation(float degrees, int width, int height)
    {
        mMatrix.reset();
        mCamera.save();
        mCamera.rotateY(Math.abs(degrees));
        mCamera.getMatrix(mMatrix);
        mCamera.restore();
        mMatrix.preTranslate((float)(-width) * 0.5F, (float)(-height) * 0.5F);
        mMatrix.postTranslate((float)width * 0.5F, (float)height * 0.5F);
        mTempFloat2[0] = width;
        mTempFloat2[1] = height;
        mMatrix.mapPoints(mTempFloat2);
        return ((float)width - mTempFloat2[0]) * (degrees <= 0.0F ? -1F : 1.0F);
    }

    float backgroundAlphaInterpolator(float r)
    {
        float pivotA = 0.1F;
        float pivotB = 0.4F;
        if(r < pivotA)
            return 0.0F;
        if(r > pivotB)
            return 1.0F;
        else
            return (r - pivotA) / (pivotB - pivotA);
    }

    float overScrollBackgroundAlphaInterpolator(float r)
    {
        float threshold = 0.08F;
        if(r > mOverScrollMaxBackgroundAlpha)
            mOverScrollMaxBackgroundAlpha = r;
        else
        if(r < mOverScrollMaxBackgroundAlpha)
            r = mOverScrollMaxBackgroundAlpha;
        return Math.min(r / threshold, 1.0F);
    }

    private void screenScrolledLargeUI(int screenCenter)
    {
        for(int i = 0; i < getChildCount(); i++)
        {
            CellLayout cl = (CellLayout)getChildAt(i);
            if(cl != null)
            {
                float scrollProgress = getScrollProgress(screenCenter, cl, i);
                float rotation = 12.5F * scrollProgress;
                float translationX = getOffsetXForRotation(rotation, cl.getWidth(), cl.getHeight());
                if(!isSmall())
                    if(mScrollX < 0 && i == 0 || mScrollX > mMaxScrollX && i == getChildCount() - 1)
                    {
                        cl.setBackgroundAlphaMultiplier(overScrollBackgroundAlphaInterpolator(Math.abs(scrollProgress)));
                        mOverScrollPageIndex = i;
                    } else
                    if(mOverScrollPageIndex != i)
                        cl.setBackgroundAlphaMultiplier(backgroundAlphaInterpolator(Math.abs(scrollProgress)));
                cl.setTranslationX(translationX);
                cl.setRotationY(rotation);
            }
        }

    }

    private void resetCellLayoutTransforms(CellLayout cl, boolean left)
    {
        cl.setTranslationX(0.0F);
        cl.setRotationY(0.0F);
        cl.setOverScrollAmount(0.0F, left);
        cl.setPivotX(cl.getMeasuredWidth() / 2);
        cl.setPivotY(cl.getMeasuredHeight() / 2);
    }

    private void screenScrolledStandardUI(int screenCenter)
    {
        if(mScrollX < 0 || mScrollX > mMaxScrollX)
        {
            int index = mScrollX >= 0 ? getChildCount() - 1 : 0;
            CellLayout cl = (CellLayout)getChildAt(index);
            float scrollProgress = getScrollProgress(screenCenter, cl, index);
            cl.setOverScrollAmount(Math.abs(scrollProgress), index == 0);
            float translationX = index != 0 ? -(mMaxScrollX - mScrollX) : mScrollX;
            float rotation = -24F * scrollProgress;
            cl.setCameraDistance(mDensity * CAMERA_DISTANCE);
            cl.setPivotX((float)cl.getMeasuredWidth() * (index != 0 ? 0.25F : 0.75F));
            cl.setTranslationX(translationX);
            cl.setRotationY(rotation);
        } else
        if(!isSwitchingState())
        {
            resetCellLayoutTransforms((CellLayout)getChildAt(0), true);
            resetCellLayoutTransforms((CellLayout)getChildAt(getChildCount() - 1), false);
        }
    }

    protected void screenScrolled(int screenCenter)
    {
        super.screenScrolled(screenCenter);
        if(LauncherApplication.isScreenLarge())
            screenScrolledLargeUI(screenCenter);
        else
            screenScrolledStandardUI(screenCenter);
    }

    protected void overScroll(float amount)
    {
        if(LauncherApplication.isScreenLarge())
            dampedOverScroll(amount);
        else
            acceleratedOverScroll(amount);
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        mWindowToken = getWindowToken();
        computeScroll();
        mDragController.setWindowToken(mWindowToken);
    }

    protected void onDetachedFromWindow()
    {
        mWindowToken = null;
    }

    protected void onLayout(boolean changed, int left, int top, int right, int bottom)
    {
        if(mFirstLayout && mCurrentPage >= 0 && mCurrentPage < getChildCount())
            mUpdateWallpaperOffsetImmediately = true;
        super.onLayout(changed, left, top, right, bottom);
        if(mSwitchStateAfterFirstLayout)
        {
            mSwitchStateAfterFirstLayout = false;
            post(new Runnable() {

                public void run()
                {
                    changeState(mStateAfterFirstLayout, false);
                }

                final Workspace this$0;

            
            {
                this$0 = Workspace.this;
                super();
            }
            }
);
        }
    }

    protected void onDraw(Canvas canvas)
    {
        updateWallpaperOffsets();
        if(mBackground != null && mBackgroundAlpha > 0.0F && mDrawBackground)
        {
            int alpha = (int)(mBackgroundAlpha * 255F);
            mBackground.setAlpha(alpha);
            mBackground.setBounds(mScrollX, 0, mScrollX + getMeasuredWidth(), getMeasuredHeight());
            mBackground.draw(canvas);
        }
        super.onDraw(canvas);
    }

    protected void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        if(mInScrollArea && !LauncherApplication.isScreenLarge())
        {
            int width = getWidth();
            int height = getHeight();
            int pageHeight = getChildAt(0).getHeight();
            int offset = (height - pageHeight - mPaddingTop - mPaddingBottom) / 2;
            int paddingTop = mPaddingTop + offset;
            int paddingBottom = mPaddingBottom + offset;
            CellLayout leftPage = (CellLayout)getChildAt(mCurrentPage - 1);
            CellLayout rightPage = (CellLayout)getChildAt(mCurrentPage + 1);
            if(leftPage != null && leftPage.getIsDragOverlapping())
            {
                Drawable d = getResources().getDrawable(0x7f020040);
                d.setBounds(mScrollX, paddingTop, mScrollX + d.getIntrinsicWidth(), height - paddingBottom);
                d.draw(canvas);
            } else
            if(rightPage != null && rightPage.getIsDragOverlapping())
            {
                Drawable d = getResources().getDrawable(0x7f020041);
                d.setBounds((mScrollX + width) - d.getIntrinsicWidth(), paddingTop, mScrollX + width, height - paddingBottom);
                d.draw(canvas);
            }
        }
    }

    protected boolean onRequestFocusInDescendants(int direction, Rect previouslyFocusedRect)
    {
        if(!mLauncher.isAllAppsVisible())
        {
            Folder openFolder = getOpenFolder();
            if(openFolder != null)
                return openFolder.requestFocus(direction, previouslyFocusedRect);
            else
                return super.onRequestFocusInDescendants(direction, previouslyFocusedRect);
        } else
        {
            return false;
        }
    }

    public int getDescendantFocusability()
    {
        if(isSmall())
            return 0x60000;
        else
            return super.getDescendantFocusability();
    }

    public void addFocusables(ArrayList views, int direction, int focusableMode)
    {
        if(!mLauncher.isAllAppsVisible())
        {
            Folder openFolder = getOpenFolder();
            if(openFolder != null)
                openFolder.addFocusables(views, direction);
            else
                super.addFocusables(views, direction, focusableMode);
        }
    }

    public boolean isSmall()
    {
        return mState == State.SMALL || mState == State.SPRING_LOADED;
    }

    void enableChildrenCache(int fromPage, int toPage)
    {
        if(fromPage > toPage)
        {
            int temp = fromPage;
            fromPage = toPage;
            toPage = temp;
        }
        int screenCount = getChildCount();
        fromPage = Math.max(fromPage, 0);
        toPage = Math.min(toPage, screenCount - 1);
        for(int i = fromPage; i <= toPage; i++)
        {
            CellLayout layout = (CellLayout)getChildAt(i);
            layout.setChildrenDrawnWithCacheEnabled(true);
            layout.setChildrenDrawingCacheEnabled(true);
        }

    }

    void clearChildrenCache()
    {
        int screenCount = getChildCount();
        for(int i = 0; i < screenCount; i++)
        {
            CellLayout layout = (CellLayout)getChildAt(i);
            layout.setChildrenDrawnWithCacheEnabled(false);
            if(!isHardwareAccelerated())
                layout.setChildrenDrawingCacheEnabled(false);
        }

    }

    private void updateChildrenLayersEnabled()
    {
        boolean small = isSmall() || mIsSwitchingState;
        boolean dragging = mAnimatingViewIntoPlace || mIsDragOccuring;
        boolean enableChildrenLayers = small || dragging || isPageMoving();
        if(enableChildrenLayers != mChildrenLayersEnabled)
        {
            mChildrenLayersEnabled = enableChildrenLayers;
            for(int i = 0; i < getPageCount(); i++)
                ((ViewGroup)getChildAt(i)).setChildrenLayersEnabled(enableChildrenLayers);

        }
    }

    protected void onWallpaperTap(MotionEvent ev)
    {
        int position[] = mTempCell;
        getLocationOnScreen(position);
        int pointerIndex = ev.getActionIndex();
        position[0] += (int)ev.getX(pointerIndex);
        position[1] += (int)ev.getY(pointerIndex);
        mWallpaperManager.sendWallpaperCommand(getWindowToken(), ev.getAction() != 1 ? "android.wallpaper.secondaryTap" : "android.wallpaper.tap", position[0], position[1], 0, null);
    }

    protected void updateAdjacentPagesAlpha()
    {
        if(!isSmall())
            super.updateAdjacentPagesAlpha();
    }

    public void onDragStartedWithItem(View v)
    {
        Canvas canvas = new Canvas();
        int bitmapPadding = HolographicOutlineHelper.MAX_OUTER_BLUR_RADIUS;
        mDragOutline = createDragOutline(v, canvas, bitmapPadding);
    }

    public void onDragStartedWithItemSpans(int spanX, int spanY, Bitmap b)
    {
        onDragStartedWithItemSpans(spanX, spanY, b, null);
    }

    public void onDragStartedWithItemSpans(int spanX, int spanY, Bitmap b, Paint alphaClipPaint)
    {
        Canvas canvas = new Canvas();
        int bitmapPadding = HolographicOutlineHelper.MAX_OUTER_BLUR_RADIUS;
        CellLayout cl = (CellLayout)getChildAt(0);
        int size[] = cl.cellSpansToSize(spanX, spanY);
        mDragOutline = createDragOutline(b, canvas, bitmapPadding, size[0], size[1], alphaClipPaint);
    }

    public void onDragStopped(boolean success)
    {
        if(!success)
            doDragExit(null);
    }

    public void exitWidgetResizeMode()
    {
        DragLayer dragLayer = mLauncher.getDragLayer();
        dragLayer.clearAllResizeFrames();
    }

    private void initAnimationArrays()
    {
        int childCount = getChildCount();
        if(mOldTranslationXs != null)
        {
            return;
        } else
        {
            mOldTranslationXs = new float[childCount];
            mOldTranslationYs = new float[childCount];
            mOldScaleXs = new float[childCount];
            mOldScaleYs = new float[childCount];
            mOldBackgroundAlphas = new float[childCount];
            mOldBackgroundAlphaMultipliers = new float[childCount];
            mOldAlphas = new float[childCount];
            mOldRotationYs = new float[childCount];
            mNewTranslationXs = new float[childCount];
            mNewTranslationYs = new float[childCount];
            mNewScaleXs = new float[childCount];
            mNewScaleYs = new float[childCount];
            mNewBackgroundAlphas = new float[childCount];
            mNewBackgroundAlphaMultipliers = new float[childCount];
            mNewAlphas = new float[childCount];
            mNewRotationYs = new float[childCount];
            return;
        }
    }

    public void changeState(State shrinkState)
    {
        changeState(shrinkState, true);
    }

    void changeState(State state, boolean animated)
    {
        changeState(state, animated, 0);
    }

    void changeState(State state, boolean animated, int delay)
    {
        if(mFirstLayout)
        {
            mSwitchStateAfterFirstLayout = false;
            mStateAfterFirstLayout = state;
            return;
        }
        if(mAnimator != null)
            mAnimator.cancel();
        setCurrentPage(mNextPage == -1 ? mCurrentPage : mNextPage);
        float finalScaleFactor = 1.0F;
        float finalBackgroundAlpha = state != State.SPRING_LOADED ? 0.0F : 1.0F;
        boolean normalState = false;
        State oldState = mState;
        mState = state;
        boolean zoomIn = true;
        if(state != State.NORMAL)
        {
            finalScaleFactor = mSpringLoadedShrinkFactor - (state != State.SMALL ? 0.0F : 0.1F);
            if(oldState == State.NORMAL && state == State.SMALL)
            {
                zoomIn = false;
                if(animated)
                    hideScrollingIndicator(true);
                setLayoutScale(finalScaleFactor);
                updateChildrenLayersEnabled();
            } else
            {
                finalBackgroundAlpha = 1.0F;
                setLayoutScale(finalScaleFactor);
            }
        } else
        {
            setLayoutScale(1.0F);
            normalState = true;
        }
        float translationX = 0.0F;
        float translationY = 0.0F;
        mAnimator = new AnimatorSet();
        final int screenCount = getChildCount();
        initAnimationArrays();
        int duration = zoomIn ? getResources().getInteger(0x7f090004) : getResources().getInteger(0x7f090010);
        for(int i = 0; i < screenCount; i++)
        {
            CellLayout cl = (CellLayout)getChildAt(i);
            float finalAlphaValue = 0.0F;
            float rotation = 0.0F;
            if(mFadeInAdjacentScreens && normalState)
                finalAlphaValue = i != mCurrentPage ? 0.0F : 1.0F;
            else
                finalAlphaValue = 1.0F;
            if(LauncherApplication.isScreenLarge())
                if(i < mCurrentPage)
                    rotation = 12.5F;
                else
                if(i > mCurrentPage)
                    rotation = -12.5F;
            float finalAlphaMultiplierValue = 1.0F;
            if(LauncherApplication.isScreenLarge())
                translationX = getOffsetXForRotation(rotation, cl.getWidth(), cl.getHeight());
            mOldAlphas[i] = cl.getAlpha();
            mNewAlphas[i] = finalAlphaValue;
            if(animated)
            {
                mOldTranslationXs[i] = cl.getTranslationX();
                mOldTranslationYs[i] = cl.getTranslationY();
                mOldScaleXs[i] = cl.getScaleX();
                mOldScaleYs[i] = cl.getScaleY();
                mOldBackgroundAlphas[i] = cl.getBackgroundAlpha();
                mOldBackgroundAlphaMultipliers[i] = cl.getBackgroundAlphaMultiplier();
                mOldRotationYs[i] = cl.getRotationY();
                mNewTranslationXs[i] = translationX;
                mNewTranslationYs[i] = translationY;
                mNewScaleXs[i] = finalScaleFactor;
                mNewScaleYs[i] = finalScaleFactor;
                mNewBackgroundAlphas[i] = finalBackgroundAlpha;
                mNewBackgroundAlphaMultipliers[i] = finalAlphaMultiplierValue;
                mNewRotationYs[i] = rotation;
            } else
            {
                cl.setTranslationX(translationX);
                cl.setTranslationY(translationY);
                cl.setScaleX(finalScaleFactor);
                cl.setScaleY(finalScaleFactor);
                cl.setBackgroundAlpha(0.0F);
                cl.setBackgroundAlphaMultiplier(finalAlphaMultiplierValue);
                cl.setAlpha(finalAlphaValue);
                cl.setRotationY(rotation);
                mChangeStateAnimationListener.onAnimationEnd(null);
            }
        }

        if(animated)
        {
            ValueAnimator animWithInterpolator = ValueAnimator.ofFloat(new float[] {
                0.0F, 1.0F
            }).setDuration(duration);
            if(zoomIn)
                animWithInterpolator.setInterpolator(mZoomInInterpolator);
            animWithInterpolator.addUpdateListener(new LauncherAnimatorUpdateListener() {

                public void onAnimationUpdate(float a, float b)
                {
                    mTransitionProgress = b;
                    if(b == 0.0F)
                        return;
                    invalidate();
                    for(int i = 0; i < screenCount; i++)
                    {
                        CellLayout cl = (CellLayout)getChildAt(i);
                        cl.fastInvalidate();
                        cl.setFastTranslationX(a * mOldTranslationXs[i] + b * mNewTranslationXs[i]);
                        cl.setFastTranslationY(a * mOldTranslationYs[i] + b * mNewTranslationYs[i]);
                        cl.setFastScaleX(a * mOldScaleXs[i] + b * mNewScaleXs[i]);
                        cl.setFastScaleY(a * mOldScaleYs[i] + b * mNewScaleYs[i]);
                        cl.setFastBackgroundAlpha(a * mOldBackgroundAlphas[i] + b * mNewBackgroundAlphas[i]);
                        cl.setBackgroundAlphaMultiplier(a * mOldBackgroundAlphaMultipliers[i] + b * mNewBackgroundAlphaMultipliers[i]);
                        cl.setFastAlpha(a * mOldAlphas[i] + b * mNewAlphas[i]);
                    }

                }

                final Workspace this$0;
                private final int val$screenCount;

            
            {
                this$0 = Workspace.this;
                screenCount = i;
                super();
            }
            }
);
            ValueAnimator rotationAnim = ValueAnimator.ofFloat(new float[] {
                0.0F, 1.0F
            }).setDuration(duration);
            rotationAnim.setInterpolator(new DecelerateInterpolator(2.0F));
            rotationAnim.addUpdateListener(new LauncherAnimatorUpdateListener() {

                public void onAnimationUpdate(float a, float b)
                {
                    if(b == 0.0F)
                        return;
                    for(int i = 0; i < screenCount; i++)
                    {
                        CellLayout cl = (CellLayout)getChildAt(i);
                        cl.setFastRotationY(a * mOldRotationYs[i] + b * mNewRotationYs[i]);
                    }

                }

                final Workspace this$0;
                private final int val$screenCount;

            
            {
                this$0 = Workspace.this;
                screenCount = i;
                super();
            }
            }
);
            mAnimator.playTogether(new Animator[] {
                animWithInterpolator, rotationAnim
            });
            mAnimator.setStartDelay(delay);
            mAnimator.addListener(mChangeStateAnimationListener);
            mAnimator.start();
        }
        if(state == State.SPRING_LOADED)
            animateBackgroundGradient((float)getResources().getInteger(0x7f090000) / 100F, false);
        else
            animateBackgroundGradient(0.0F, true);
    }

    private void drawDragView(View v, Canvas destCanvas, int padding, boolean pruneToDrawable)
    {
        Rect clipRect = mTempRect;
        v.getDrawingRect(clipRect);
        boolean textVisible = false;
        destCanvas.save();
        if((v instanceof TextView) && pruneToDrawable)
        {
            Drawable d = ((TextView)v).getCompoundDrawables()[1];
            clipRect.set(0, 0, d.getIntrinsicWidth() + padding, d.getIntrinsicHeight() + padding);
            destCanvas.translate(padding / 2, padding / 2);
            d.draw(destCanvas);
        } else
        {
            if(v instanceof FolderIcon)
            {
                if(((FolderIcon)v).getTextVisible())
                {
                    ((FolderIcon)v).setTextVisible(false);
                    textVisible = true;
                }
            } else
            if(v instanceof BubbleTextView)
            {
                BubbleTextView tv = (BubbleTextView)v;
                clipRect.bottom = (tv.getExtendedPaddingTop() - 3) + tv.getLayout().getLineTop(0);
            } else
            if(v instanceof TextView)
            {
                TextView tv = (TextView)v;
                clipRect.bottom = (tv.getExtendedPaddingTop() - tv.getCompoundDrawablePadding()) + tv.getLayout().getLineTop(0);
            }
            destCanvas.translate(-v.getScrollX() + padding / 2, -v.getScrollY() + padding / 2);
            destCanvas.clipRect(clipRect, android.graphics.Region.Op.REPLACE);
            v.draw(destCanvas);
            if(textVisible)
                ((FolderIcon)v).setTextVisible(true);
        }
        destCanvas.restore();
    }

    public Bitmap createDragBitmap(View v, Canvas canvas, int padding)
    {
        int outlineColor = getResources().getColor(0x1060012);
        Bitmap b;
        if(v instanceof TextView)
        {
            Drawable d = ((TextView)v).getCompoundDrawables()[1];
            b = Bitmap.createBitmap(d.getIntrinsicWidth() + padding, d.getIntrinsicHeight() + padding, android.graphics.Bitmap.Config.ARGB_8888);
        } else
        {
            b = Bitmap.createBitmap(v.getWidth() + padding, v.getHeight() + padding, android.graphics.Bitmap.Config.ARGB_8888);
        }
        canvas.setBitmap(b);
        drawDragView(v, canvas, padding, true);
        mOutlineHelper.applyOuterBlur(b, canvas, outlineColor);
        canvas.drawColor(mDragViewMultiplyColor, android.graphics.PorterDuff.Mode.MULTIPLY);
        canvas.setBitmap(null);
        return b;
    }

    private Bitmap createDragOutline(View v, Canvas canvas, int padding)
    {
        int outlineColor = getResources().getColor(0x1060012);
        Bitmap b = Bitmap.createBitmap(v.getWidth() + padding, v.getHeight() + padding, android.graphics.Bitmap.Config.ARGB_8888);
        canvas.setBitmap(b);
        drawDragView(v, canvas, padding, true);
        mOutlineHelper.applyMediumExpensiveOutlineWithBlur(b, canvas, outlineColor, outlineColor);
        canvas.setBitmap(null);
        return b;
    }

    private Bitmap createDragOutline(Bitmap orig, Canvas canvas, int padding, int w, int h)
    {
        return createDragOutline(orig, canvas, padding, w, h, null);
    }

    private Bitmap createDragOutline(Bitmap orig, Canvas canvas, int padding, int w, int h, Paint alphaClipPaint)
    {
        int outlineColor = getResources().getColor(0x1060012);
        Bitmap b = Bitmap.createBitmap(w, h, android.graphics.Bitmap.Config.ARGB_8888);
        canvas.setBitmap(b);
        Rect src = new Rect(0, 0, orig.getWidth(), orig.getHeight());
        float scaleFactor = Math.min((float)(w - padding) / (float)orig.getWidth(), (float)(h - padding) / (float)orig.getHeight());
        int scaledWidth = (int)(scaleFactor * (float)orig.getWidth());
        int scaledHeight = (int)(scaleFactor * (float)orig.getHeight());
        Rect dst = new Rect(0, 0, scaledWidth, scaledHeight);
        dst.offset((w - scaledWidth) / 2, (h - scaledHeight) / 2);
        Paint p = new Paint();
        p.setFilterBitmap(true);
        canvas.drawBitmap(orig, src, dst, p);
        mOutlineHelper.applyMediumExpensiveOutlineWithBlur(b, canvas, outlineColor, outlineColor, alphaClipPaint);
        canvas.setBitmap(null);
        return b;
    }

    private Bitmap createExternalDragOutline(Canvas canvas, int padding)
    {
        Resources r = getResources();
        int outlineColor = r.getColor(0x1060012);
        int iconWidth = r.getDimensionPixelSize(0x7f0a0005);
        int iconHeight = r.getDimensionPixelSize(0x7f0a0006);
        int rectRadius = r.getDimensionPixelSize(0x7f0a004a);
        int inset = (int)((float)Math.min(iconWidth, iconHeight) * 0.2F);
        Bitmap b = Bitmap.createBitmap(iconWidth + padding, iconHeight + padding, android.graphics.Bitmap.Config.ARGB_8888);
        canvas.setBitmap(b);
        canvas.drawRoundRect(new RectF(inset, inset, iconWidth - inset, iconHeight - inset), rectRadius, rectRadius, mExternalDragOutlinePaint);
        mOutlineHelper.applyMediumExpensiveOutlineWithBlur(b, canvas, outlineColor, outlineColor);
        canvas.setBitmap(null);
        return b;
    }

    void startDrag(CellLayout.CellInfo cellInfo)
    {
        View child = cellInfo.cell;
        if(!child.isInTouchMode())
        {
            return;
        } else
        {
            mDragInfo = cellInfo;
            child.setVisibility(8);
            child.clearFocus();
            child.setPressed(false);
            Canvas canvas = new Canvas();
            int bitmapPadding = HolographicOutlineHelper.MAX_OUTER_BLUR_RADIUS;
            mDragOutline = createDragOutline(child, canvas, bitmapPadding);
            beginDragShared(child, this);
            return;
        }
    }

    public void beginDragShared(View child, DragSource source)
    {
        Resources r = getResources();
        int bitmapPadding = HolographicOutlineHelper.MAX_OUTER_BLUR_RADIUS;
        Bitmap b = createDragBitmap(child, new Canvas(), bitmapPadding);
        int bmpWidth = b.getWidth();
        mLauncher.getDragLayer().getLocationInDragLayer(child, mTempXY);
        int dragLayerX = mTempXY[0] + (child.getWidth() - bmpWidth) / 2;
        int dragLayerY = mTempXY[1] - bitmapPadding / 2;
        Point dragVisualizeOffset = null;
        Rect dragRect = null;
        if((child instanceof BubbleTextView) || (child instanceof PagedViewIcon))
        {
            int iconSize = r.getDimensionPixelSize(0x7f0a001b);
            int iconPaddingTop = r.getDimensionPixelSize(0x7f0a0015);
            int top = child.getPaddingTop();
            int left = (bmpWidth - iconSize) / 2;
            int right = left + iconSize;
            int bottom = top + iconSize;
            dragLayerY += top;
            dragVisualizeOffset = new Point(-bitmapPadding / 2, iconPaddingTop - bitmapPadding / 2);
            dragRect = new Rect(left, top, right, bottom);
        } else
        if(child instanceof FolderIcon)
        {
            int previewSize = r.getDimensionPixelSize(0x7f0a0035);
            dragRect = new Rect(0, 0, child.getWidth(), previewSize);
        }
        if(child instanceof BubbleTextView)
        {
            BubbleTextView icon = (BubbleTextView)child;
            icon.clearPressedOrFocusedBackground();
        }
        mDragController.startDrag(b, dragLayerX, dragLayerY, source, child.getTag(), DragController.DRAG_ACTION_MOVE, dragVisualizeOffset, dragRect);
        b.recycle();
    }

    void addApplicationShortcut(ShortcutInfo info, CellLayout target, long container, int screen, int cellX, int cellY, 
            boolean insertAtFirst, int intersectX, int intersectY)
    {
        View view = mLauncher.createShortcut(0x7f030002, target, info);
        int cellXY[] = new int[2];
        target.findCellForSpanThatIntersects(cellXY, 1, 1, intersectX, intersectY);
        addInScreen(view, container, screen, cellXY[0], cellXY[1], 1, 1, insertAtFirst);
        LauncherModel.addOrMoveItemInDatabase(mLauncher, info, container, screen, cellXY[0], cellXY[1]);
    }

    public boolean transitionStateShouldAllowDrop()
    {
        return !isSwitchingState() || mTransitionProgress > 0.5F;
    }

    public boolean acceptDrop(DropTarget.DragObject d)
    {
        if(d.dragSource != this)
        {
            if(mDragTargetLayout == null)
                return false;
            if(!transitionStateShouldAllowDrop())
                return false;
            mDragViewVisualCenter = getDragViewVisualCenter(d.x, d.y, d.xOffset, d.yOffset, d.dragView, mDragViewVisualCenter);
            if(mLauncher.isHotseatLayout(mDragTargetLayout))
                mapPointFromSelfToSibling(mLauncher.getHotseat(), mDragViewVisualCenter);
            else
                mapPointFromSelfToChild(mDragTargetLayout, mDragViewVisualCenter, null);
            int spanX = 1;
            int spanY = 1;
            View ignoreView = null;
            if(mDragInfo != null)
            {
                CellLayout.CellInfo dragCellInfo = mDragInfo;
                spanX = dragCellInfo.spanX;
                spanY = dragCellInfo.spanY;
                ignoreView = dragCellInfo.cell;
            } else
            {
                ItemInfo dragInfo = (ItemInfo)d.dragInfo;
                spanX = dragInfo.spanX;
                spanY = dragInfo.spanY;
            }
            mTargetCell = findNearestArea((int)mDragViewVisualCenter[0], (int)mDragViewVisualCenter[1], spanX, spanY, mDragTargetLayout, mTargetCell);
            if(willCreateUserFolder((ItemInfo)d.dragInfo, mDragTargetLayout, mTargetCell, true))
                return true;
            if(willAddToExistingUserFolder((ItemInfo)d.dragInfo, mDragTargetLayout, mTargetCell))
                return true;
            if(!mDragTargetLayout.findCellForSpanIgnoring(null, spanX, spanY, ignoreView))
            {
                mLauncher.showOutOfSpaceMessage();
                return false;
            }
        }
        return true;
    }

    boolean willCreateUserFolder(ItemInfo info, CellLayout target, int targetCell[], boolean considerTimeout)
    {
        View dropOverView = target.getChildAt(targetCell[0], targetCell[1]);
        boolean hasntMoved = false;
        if(mDragInfo != null)
        {
            CellLayout cellParent = getParentCellLayoutForView(mDragInfo.cell);
            hasntMoved = mDragInfo.cellX == targetCell[0] && mDragInfo.cellY == targetCell[1] && cellParent == target;
        }
        if(dropOverView == null || hasntMoved || considerTimeout && !mCreateUserFolderOnDrop)
            return false;
        boolean aboveShortcut = dropOverView.getTag() instanceof ShortcutInfo;
        boolean willBecomeShortcut = info.itemType == 0 || info.itemType == 1;
        return aboveShortcut && willBecomeShortcut;
    }

    boolean willAddToExistingUserFolder(Object dragInfo, CellLayout target, int targetCell[])
    {
        View dropOverView = target.getChildAt(targetCell[0], targetCell[1]);
        if(dropOverView instanceof FolderIcon)
        {
            FolderIcon fi = (FolderIcon)dropOverView;
            if(fi.acceptDrop(dragInfo))
                return true;
        }
        return false;
    }

    boolean createUserFolderIfNecessary(View newView, long container, CellLayout target, int targetCell[], boolean external, DragView dragView, 
            Runnable postAnimationRunnable)
    {
        View v = target.getChildAt(targetCell[0], targetCell[1]);
        boolean hasntMoved = false;
        if(mDragInfo != null)
        {
            CellLayout cellParent = getParentCellLayoutForView(mDragInfo.cell);
            hasntMoved = mDragInfo.cellX == targetCell[0] && mDragInfo.cellY == targetCell[1] && cellParent == target;
        }
        if(v == null || hasntMoved || !mCreateUserFolderOnDrop)
            return false;
        mCreateUserFolderOnDrop = false;
        int screen = targetCell != null ? indexOfChild(target) : mDragInfo.screen;
        boolean aboveShortcut = v.getTag() instanceof ShortcutInfo;
        boolean willBecomeShortcut = newView.getTag() instanceof ShortcutInfo;
        if(aboveShortcut && willBecomeShortcut)
        {
            ShortcutInfo sourceInfo = (ShortcutInfo)newView.getTag();
            ShortcutInfo destInfo = (ShortcutInfo)v.getTag();
            if(!external)
                getParentCellLayoutForView(mDragInfo.cell).removeView(mDragInfo.cell);
            Rect folderLocation = new Rect();
            float scale = mLauncher.getDragLayer().getDescendantRectRelativeToSelf(v, folderLocation);
            target.removeView(v);
            FolderIcon fi = mLauncher.addFolder(target, container, screen, targetCell[0], targetCell[1]);
            destInfo.cellX = -1;
            destInfo.cellY = -1;
            sourceInfo.cellX = -1;
            sourceInfo.cellY = -1;
            boolean animate = dragView != null;
            if(animate)
            {
                fi.performCreateAnimation(destInfo, v, sourceInfo, dragView, folderLocation, scale, postAnimationRunnable);
            } else
            {
                fi.addItem(destInfo);
                fi.addItem(sourceInfo);
            }
            return true;
        } else
        {
            return false;
        }
    }

    boolean addToExistingFolderIfNecessary(View newView, CellLayout target, int targetCell[], DropTarget.DragObject d, boolean external)
    {
        View dropOverView = target.getChildAt(targetCell[0], targetCell[1]);
        if(dropOverView instanceof FolderIcon)
        {
            FolderIcon fi = (FolderIcon)dropOverView;
            if(fi.acceptDrop(d.dragInfo))
            {
                fi.onDrop(d);
                if(!external)
                    getParentCellLayoutForView(mDragInfo.cell).removeView(mDragInfo.cell);
                return true;
            }
        }
        return false;
    }

    public void onDrop(DropTarget.DragObject d)
    {
        mDragViewVisualCenter = getDragViewVisualCenter(d.x, d.y, d.xOffset, d.yOffset, d.dragView, mDragViewVisualCenter);
        if(mDragTargetLayout != null)
            if(mLauncher.isHotseatLayout(mDragTargetLayout))
                mapPointFromSelfToSibling(mLauncher.getHotseat(), mDragViewVisualCenter);
            else
                mapPointFromSelfToChild(mDragTargetLayout, mDragViewVisualCenter, null);
        CellLayout dropTargetLayout = mDragTargetLayout;
        int snapScreen = -1;
        if(d.dragSource != this)
        {
            int touchXY[] = {
                (int)mDragViewVisualCenter[0], (int)mDragViewVisualCenter[1]
            };
            onDropExternal(touchXY, d.dragInfo, dropTargetLayout, false, d);
        } else
        if(mDragInfo != null)
        {
            View cell = mDragInfo.cell;
            if(dropTargetLayout != null)
            {
                boolean hasMovedLayouts = getParentCellLayoutForView(cell) != dropTargetLayout;
                boolean hasMovedIntoHotseat = mLauncher.isHotseatLayout(dropTargetLayout);
                long container = hasMovedIntoHotseat ? -101 : -100;
                int screen = mTargetCell[0] >= 0 ? indexOfChild(dropTargetLayout) : mDragInfo.screen;
                int spanX = mDragInfo == null ? 1 : mDragInfo.spanX;
                int spanY = mDragInfo == null ? 1 : mDragInfo.spanY;
                mTargetCell = findNearestArea((int)mDragViewVisualCenter[0], (int)mDragViewVisualCenter[1], spanX, spanY, dropTargetLayout, mTargetCell);
                if(!mInScrollArea && createUserFolderIfNecessary(cell, container, dropTargetLayout, mTargetCell, false, d.dragView, null))
                    return;
                if(addToExistingFolderIfNecessary(cell, dropTargetLayout, mTargetCell, d, false))
                    return;
                mTargetCell = findNearestVacantArea((int)mDragViewVisualCenter[0], (int)mDragViewVisualCenter[1], mDragInfo.spanX, mDragInfo.spanY, cell, dropTargetLayout, mTargetCell);
                if(mCurrentPage != screen && !hasMovedIntoHotseat)
                {
                    snapScreen = screen;
                    snapToPage(screen);
                }
                if(mTargetCell[0] >= 0 && mTargetCell[1] >= 0)
                {
                    if(hasMovedLayouts)
                    {
                        getParentCellLayoutForView(cell).removeView(cell);
                        addInScreen(cell, container, screen, mTargetCell[0], mTargetCell[1], mDragInfo.spanX, mDragInfo.spanY);
                    }
                    final ItemInfo info = (ItemInfo)cell.getTag();
                    CellLayout.LayoutParams lp = (CellLayout.LayoutParams)cell.getLayoutParams();
                    dropTargetLayout.onMove(cell, mTargetCell[0], mTargetCell[1]);
                    lp.cellX = mTargetCell[0];
                    lp.cellY = mTargetCell[1];
                    cell.setId(LauncherModel.getCellLayoutChildId(container, mDragInfo.screen, mTargetCell[0], mTargetCell[1], mDragInfo.spanX, mDragInfo.spanY));
                    if(container != -101L && (cell instanceof LauncherAppWidgetHostView))
                    {
                        final CellLayout cellLayout = dropTargetLayout;
                        final LauncherAppWidgetHostView hostView = (LauncherAppWidgetHostView)cell;
                        AppWidgetProviderInfo pinfo = hostView.getAppWidgetInfo();
                        if(pinfo.resizeMode != 0)
                        {
                            final Runnable resizeRunnable = new Runnable() {

                                public void run()
                                {
                                    DragLayer dragLayer = mLauncher.getDragLayer();
                                    dragLayer.addResizeFrame(info, hostView, cellLayout);
                                }

                                final Workspace this$0;
                                private final ItemInfo val$info;
                                private final LauncherAppWidgetHostView val$hostView;
                                private final CellLayout val$cellLayout;

            
            {
                this$0 = Workspace.this;
                info = iteminfo;
                hostView = launcherappwidgethostview;
                cellLayout = celllayout;
                super();
            }
                            }
;
                            post(new Runnable() {

                                public void run()
                                {
                                    if(!isPageMoving())
                                        resizeRunnable.run();
                                    else
                                        mDelayedResizeRunnable = resizeRunnable;
                                }

                                final Workspace this$0;
                                private final Runnable val$resizeRunnable;

            
            {
                this$0 = Workspace.this;
                resizeRunnable = runnable;
                super();
            }
                            }
);
                        }
                    }
                    LauncherModel.moveItemInDatabase(mLauncher, info, container, screen, lp.cellX, lp.cellY);
                }
            }
            CellLayout parent = (CellLayout)cell.getParent().getParent();
            Runnable disableHardwareLayersRunnable = new Runnable() {

                public void run()
                {
                    mAnimatingViewIntoPlace = false;
                    updateChildrenLayersEnabled();
                }

                final Workspace this$0;

            
            {
                this$0 = Workspace.this;
                super();
            }
            }
;
            mAnimatingViewIntoPlace = true;
            if(d.dragView.hasDrawn())
            {
                int duration = snapScreen >= 0 ? 300 : -1;
                setFinalScrollForPageChange(snapScreen);
                mLauncher.getDragLayer().animateViewIntoPosition(d.dragView, cell, duration, disableHardwareLayersRunnable);
                resetFinalScrollForPageChange(snapScreen);
            } else
            {
                cell.setVisibility(0);
            }
            parent.onDropChild(cell);
        }
    }

    public void setFinalScrollForPageChange(int screen)
    {
        if(screen >= 0)
        {
            mSavedScrollX = getScrollX();
            CellLayout cl = (CellLayout)getChildAt(screen);
            mSavedTranslationX = cl.getTranslationX();
            mSavedRotationY = cl.getRotationY();
            int newX = getChildOffset(screen) - getRelativeChildOffset(screen);
            setScrollX(newX);
            cl.setTranslationX(0.0F);
            cl.setRotationY(0.0F);
        }
    }

    public void resetFinalScrollForPageChange(int screen)
    {
        if(screen >= 0)
        {
            CellLayout cl = (CellLayout)getChildAt(screen);
            setScrollX(mSavedScrollX);
            cl.setTranslationX(mSavedTranslationX);
            cl.setRotationY(mSavedRotationY);
        }
    }

    public void getViewLocationRelativeToSelf(View v, int location[])
    {
        getLocationInWindow(location);
        int x = location[0];
        int y = location[1];
        v.getLocationInWindow(location);
        int vX = location[0];
        int vY = location[1];
        location[0] = vX - x;
        location[1] = vY - y;
    }

    public void onDragEnter(DropTarget.DragObject d)
    {
        if(mDragTargetLayout != null)
        {
            mDragTargetLayout.setIsDragOverlapping(false);
            mDragTargetLayout.onDragExit();
        }
        mDragTargetLayout = getCurrentDropLayout();
        mDragTargetLayout.setIsDragOverlapping(true);
        mDragTargetLayout.onDragEnter();
        if(LauncherApplication.isScreenLarge())
            showOutlines();
    }

    private void doDragExit(DropTarget.DragObject d)
    {
        cleanupFolderCreation(d);
        onResetScrollArea();
        if(mDragTargetLayout != null)
        {
            mDragTargetLayout.setIsDragOverlapping(false);
            mDragTargetLayout.onDragExit();
        }
        mLastDragOverView = null;
        if(!mIsPageMoving)
            hideOutlines();
    }

    public void onDragExit(DropTarget.DragObject d)
    {
        doDragExit(d);
    }

    public DropTarget getDropTargetDelegate(DropTarget.DragObject d)
    {
        return null;
    }

    private Pair validateDrag(DragEvent event)
    {
        LauncherModel model = mLauncher.getModel();
        ClipDescription desc = event.getClipDescription();
        int mimeTypeCount = desc.getMimeTypeCount();
        for(int i = 0; i < mimeTypeCount; i++)
        {
            String mimeType = desc.getMimeType(i);
            if(mimeType.equals("com.android.launcher/shortcut"))
                return new Pair(Integer.valueOf(i), null);
            List widgets = model.resolveWidgetsForMimeType(mContext, mimeType);
            if(widgets.size() > 0)
                return new Pair(Integer.valueOf(i), widgets);
        }

        return null;
    }

    public boolean onDragEvent(DragEvent event)
    {
        ClipDescription desc = event.getClipDescription();
        CellLayout layout = (CellLayout)getChildAt(mCurrentPage);
        int pos[] = new int[2];
        layout.getLocationOnScreen(pos);
        int x = (int)event.getX() - pos[0];
        int y = (int)event.getY() - pos[1];
        switch(event.getAction())
        {
        case 1: // '\001'
        {
            Pair test = validateDrag(event);
            if(test != null)
            {
                boolean isShortcut = test.second == null;
                if(isShortcut && !layout.findCellForSpan(pos, 1, 1))
                {
                    mLauncher.showOutOfSpaceMessage();
                    return false;
                } else
                {
                    Canvas canvas = new Canvas();
                    int bitmapPadding = HolographicOutlineHelper.MAX_OUTER_BLUR_RADIUS;
                    mDragOutline = createExternalDragOutline(canvas, bitmapPadding);
                    showOutlines();
                    layout.setIsDragOccuring(true);
                    layout.onDragEnter();
                    layout.visualizeDropLocation(null, mDragOutline, x, y, 1, 1, null, null);
                    return true;
                }
            } else
            {
                Toast.makeText(mContext, mContext.getString(0x7f0c000c), 0).show();
                return false;
            }
        }

        case 2: // '\002'
        {
            layout.visualizeDropLocation(null, mDragOutline, x, y, 1, 1, null, null);
            return true;
        }

        case 3: // '\003'
        {
            LauncherModel model = mLauncher.getModel();
            ClipData data = event.getClipData();
            pos[0] = x;
            pos[1] = y;
            Pair test = validateDrag(event);
            if(test != null)
            {
                int index = ((Integer)test.first).intValue();
                List widgets = (List)test.second;
                boolean isShortcut = widgets == null;
                String mimeType = desc.getMimeType(index);
                if(isShortcut)
                {
                    Intent intent = data.getItemAt(index).getIntent();
                    Object info = model.infoFromShortcutIntent(mContext, intent, data.getIcon());
                    onDropExternal(new int[] {
                        x, y
                    }, info, layout, false);
                } else
                if(widgets.size() == 1)
                {
                    AppWidgetProviderInfo widgetInfo = ((InstallWidgetReceiver.WidgetMimeTypeHandlerData)widgets.get(0)).widgetInfo;
                    PendingAddWidgetInfo createInfo = new PendingAddWidgetInfo(widgetInfo, mimeType, data);
                    mLauncher.addAppWidgetFromDrop(createInfo, -100L, mCurrentPage, null, pos);
                } else
                {
                    InstallWidgetReceiver.WidgetListAdapter adapter = new InstallWidgetReceiver.WidgetListAdapter(mLauncher, mimeType, data, widgets, layout, mCurrentPage, pos);
                    android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(mContext);
                    builder.setAdapter(adapter, adapter);
                    builder.setCancelable(true);
                    builder.setTitle(mContext.getString(0x7f0c000d));
                    builder.setIcon(0x7f02003a);
                    builder.show();
                }
            }
            return true;
        }

        case 4: // '\004'
        {
            layout.setIsDragOccuring(false);
            layout.onDragExit();
            hideOutlines();
            return true;
        }
        }
        return super.onDragEvent(event);
    }

    void mapPointFromSelfToChild(View v, float xy[])
    {
        mapPointFromSelfToChild(v, xy, null);
    }

    void mapPointFromSelfToChild(View v, float xy[], Matrix cachedInverseMatrix)
    {
        if(cachedInverseMatrix == null)
        {
            v.getMatrix().invert(mTempInverseMatrix);
            cachedInverseMatrix = mTempInverseMatrix;
        }
        xy[0] = (xy[0] + (float)mScrollX) - (float)v.getLeft();
        xy[1] = (xy[1] + (float)mScrollY) - (float)v.getTop();
        cachedInverseMatrix.mapPoints(xy);
    }

    void mapPointFromSelfToSibling(View v, float xy[])
    {
        xy[0] = xy[0] - (float)v.getLeft();
        xy[1] = xy[1] - (float)v.getTop();
    }

    void mapPointFromChildToSelf(View v, float xy[])
    {
        v.getMatrix().mapPoints(xy);
        xy[0] -= mScrollX - v.getLeft();
        xy[1] -= mScrollY - v.getTop();
    }

    private static float squaredDistance(float point1[], float point2[])
    {
        float distanceX = point1[0] - point2[0];
        float distanceY = point2[1] - point2[1];
        return distanceX * distanceX + distanceY * distanceY;
    }

    boolean overlaps(CellLayout cl, DragView dragView, int dragViewX, int dragViewY, Matrix cachedInverseMatrix)
    {
        float draggedItemTopLeft[] = mTempDragCoordinates;
        draggedItemTopLeft[0] = dragViewX;
        draggedItemTopLeft[1] = dragViewY;
        float draggedItemBottomRight[] = mTempDragBottomRightCoordinates;
        draggedItemBottomRight[0] = draggedItemTopLeft[0] + (float)dragView.getDragRegionWidth();
        draggedItemBottomRight[1] = draggedItemTopLeft[1] + (float)dragView.getDragRegionHeight();
        mapPointFromSelfToChild(cl, draggedItemTopLeft, cachedInverseMatrix);
        float overlapRegionLeft = Math.max(0.0F, draggedItemTopLeft[0]);
        float overlapRegionTop = Math.max(0.0F, draggedItemTopLeft[1]);
        if(overlapRegionLeft <= (float)cl.getWidth() && overlapRegionTop >= 0.0F)
        {
            mapPointFromSelfToChild(cl, draggedItemBottomRight, cachedInverseMatrix);
            float overlapRegionRight = Math.min(cl.getWidth(), draggedItemBottomRight[0]);
            float overlapRegionBottom = Math.min(cl.getHeight(), draggedItemBottomRight[1]);
            if(overlapRegionRight >= 0.0F && overlapRegionBottom <= (float)cl.getHeight())
            {
                float overlap = (overlapRegionRight - overlapRegionLeft) * (overlapRegionBottom - overlapRegionTop);
                if(overlap > 0.0F)
                    return true;
            }
        }
        return false;
    }

    private CellLayout findMatchingPageForDragOver(DragView dragView, float originX, float originY, boolean exact)
    {
        int screenCount = getChildCount();
        CellLayout bestMatchingScreen = null;
        float smallestDistSoFar = 3.402823E+038F;
        for(int i = 0; i < screenCount; i++)
        {
            CellLayout cl = (CellLayout)getChildAt(i);
            float touchXy[] = {
                originX, originY
            };
            cl.getMatrix().invert(mTempInverseMatrix);
            mapPointFromSelfToChild(cl, touchXy, mTempInverseMatrix);
            if(touchXy[0] >= 0.0F && touchXy[0] <= (float)cl.getWidth() && touchXy[1] >= 0.0F && touchXy[1] <= (float)cl.getHeight())
                return cl;
            if(!exact && overlaps(cl, dragView, (int)originX, (int)originY, mTempInverseMatrix))
            {
                float cellLayoutCenter[] = mTempCellLayoutCenterCoordinates;
                cellLayoutCenter[0] = cl.getWidth() / 2;
                cellLayoutCenter[1] = cl.getHeight() / 2;
                mapPointFromChildToSelf(cl, cellLayoutCenter);
                touchXy[0] = originX;
                touchXy[1] = originY;
                float dist = squaredDistance(touchXy, cellLayoutCenter);
                if(dist < smallestDistSoFar)
                {
                    smallestDistSoFar = dist;
                    bestMatchingScreen = cl;
                }
            }
        }

        return bestMatchingScreen;
    }

    private float[] getDragViewVisualCenter(int x, int y, int xOffset, int yOffset, DragView dragView, float recycle[])
    {
        float res[];
        if(recycle == null)
            res = new float[2];
        else
            res = recycle;
        x += getResources().getDimensionPixelSize(0x7f0a002f);
        y += getResources().getDimensionPixelSize(0x7f0a0030);
        int left = x - xOffset;
        int top = y - yOffset;
        res[0] = left + dragView.getDragRegion().width() / 2;
        res[1] = top + dragView.getDragRegion().height() / 2;
        return res;
    }

    private boolean isDragWidget(DropTarget.DragObject d)
    {
        return (d.dragInfo instanceof LauncherAppWidgetInfo) || (d.dragInfo instanceof PendingAddWidgetInfo);
    }

    private boolean isExternalDragWidget(DropTarget.DragObject d)
    {
        return d.dragSource != this && isDragWidget(d);
    }

    public void onDragOver(DropTarget.DragObject d)
    {
        if(mInScrollArea)
            return;
        if(mIsSwitchingState)
            return;
        Rect r = new Rect();
        CellLayout layout = null;
        ItemInfo item = (ItemInfo)d.dragInfo;
        if(item.spanX < 0 || item.spanY < 0)
            throw new RuntimeException("Improper spans found");
        mDragViewVisualCenter = getDragViewVisualCenter(d.x, d.y, d.xOffset, d.yOffset, d.dragView, mDragViewVisualCenter);
        if(isSmall())
        {
            if(mLauncher.getHotseat() != null && !isExternalDragWidget(d))
            {
                mLauncher.getHotseat().getHitRect(r);
                if(r.contains(d.x, d.y))
                    layout = mLauncher.getHotseat().getLayout();
            }
            if(layout == null)
                layout = findMatchingPageForDragOver(d.dragView, d.x, d.y, true);
            if(layout != mDragTargetLayout)
            {
                cleanupFolderCreation(d);
                if(mDragTargetLayout != null)
                {
                    mDragTargetLayout.setIsDragOverlapping(false);
                    mDragTargetLayout.onDragExit();
                }
                mDragTargetLayout = layout;
                if(mDragTargetLayout != null)
                {
                    mDragTargetLayout.setIsDragOverlapping(true);
                    mDragTargetLayout.onDragEnter();
                } else
                {
                    mLastDragOverView = null;
                }
                boolean isInSpringLoadedMode = mState == State.SPRING_LOADED;
                if(isInSpringLoadedMode)
                    if(mLauncher.isHotseatLayout(layout))
                        mSpringLoadedDragController.cancel();
                    else
                        mSpringLoadedDragController.setAlarm(mDragTargetLayout);
            }
        } else
        {
            if(mLauncher.getHotseat() != null && !isDragWidget(d))
            {
                mLauncher.getHotseat().getHitRect(r);
                if(r.contains(d.x, d.y))
                    layout = mLauncher.getHotseat().getLayout();
            }
            if(layout == null)
                layout = getCurrentDropLayout();
            if(layout != mDragTargetLayout)
            {
                if(mDragTargetLayout != null)
                {
                    mDragTargetLayout.setIsDragOverlapping(false);
                    mDragTargetLayout.onDragExit();
                }
                mDragTargetLayout = layout;
                mDragTargetLayout.setIsDragOverlapping(true);
                mDragTargetLayout.onDragEnter();
            }
        }
        if(mDragTargetLayout != null)
        {
            View child = mDragInfo != null ? mDragInfo.cell : null;
            if(mLauncher.isHotseatLayout(mDragTargetLayout))
                mapPointFromSelfToSibling(mLauncher.getHotseat(), mDragViewVisualCenter);
            else
                mapPointFromSelfToChild(mDragTargetLayout, mDragViewVisualCenter, null);
            ItemInfo info = (ItemInfo)d.dragInfo;
            mTargetCell = findNearestArea((int)mDragViewVisualCenter[0], (int)mDragViewVisualCenter[1], 1, 1, mDragTargetLayout, mTargetCell);
            View dragOverView = mDragTargetLayout.getChildAt(mTargetCell[0], mTargetCell[1]);
            boolean userFolderPending = willCreateUserFolder(info, mDragTargetLayout, mTargetCell, false);
            boolean isOverFolder = dragOverView instanceof FolderIcon;
            if(dragOverView != mLastDragOverView)
            {
                cancelFolderCreation();
                if(mLastDragOverView != null && (mLastDragOverView instanceof FolderIcon))
                    ((FolderIcon)mLastDragOverView).onDragExit(d.dragInfo);
            }
            if(userFolderPending && dragOverView != mLastDragOverView)
            {
                mFolderCreationAlarm.setOnAlarmListener(new FolderCreationAlarmListener(mDragTargetLayout, mTargetCell[0], mTargetCell[1]));
                mFolderCreationAlarm.setAlarm(250L);
            }
            if(dragOverView != mLastDragOverView && isOverFolder)
            {
                ((FolderIcon)dragOverView).onDragEnter(d.dragInfo);
                if(mDragTargetLayout != null)
                    mDragTargetLayout.clearDragOutlines();
            }
            mLastDragOverView = dragOverView;
            if(!mCreateUserFolderOnDrop && !isOverFolder)
                mDragTargetLayout.visualizeDropLocation(child, mDragOutline, (int)mDragViewVisualCenter[0], (int)mDragViewVisualCenter[1], item.spanX, item.spanY, d.dragView.getDragVisualizeOffset(), d.dragView.getDragRegion());
        }
    }

    private void cleanupFolderCreation(DropTarget.DragObject d)
    {
        if(mDragFolderRingAnimator != null && mCreateUserFolderOnDrop)
            mDragFolderRingAnimator.animateToNaturalState();
        if(mLastDragOverView != null && (mLastDragOverView instanceof FolderIcon) && d != null)
            ((FolderIcon)mLastDragOverView).onDragExit(d.dragInfo);
        mFolderCreationAlarm.cancelAlarm();
    }

    private void cancelFolderCreation()
    {
        if(mDragFolderRingAnimator != null && mCreateUserFolderOnDrop)
            mDragFolderRingAnimator.animateToNaturalState();
        mCreateUserFolderOnDrop = false;
        mFolderCreationAlarm.cancelAlarm();
    }

    public void getHitRect(Rect outRect)
    {
        outRect.set(0, 0, mDisplayWidth, mDisplayHeight);
    }

    public boolean addExternalItemToScreen(ItemInfo dragInfo, CellLayout layout)
    {
        if(layout.findCellForSpan(mTempEstimate, dragInfo.spanX, dragInfo.spanY))
        {
            onDropExternal(dragInfo.dropPos, dragInfo, layout, false);
            return true;
        } else
        {
            mLauncher.showOutOfSpaceMessage();
            return false;
        }
    }

    private void onDropExternal(int touchXY[], Object dragInfo, CellLayout cellLayout, boolean insertAtFirst)
    {
        onDropExternal(touchXY, dragInfo, cellLayout, insertAtFirst, null);
    }

    private void onDropExternal(int touchXY[], Object dragInfo, final CellLayout cellLayout, boolean insertAtFirst, DropTarget.DragObject d)
    {
        Runnable exitSpringLoadedRunnable = new Runnable() {

            public void run()
            {
                mLauncher.exitSpringLoadedDragModeDelayed(true, false);
            }

            final Workspace this$0;

            
            {
                this$0 = Workspace.this;
                super();
            }
        }
;
        ItemInfo info = (ItemInfo)dragInfo;
        int spanX = info.spanX;
        int spanY = info.spanY;
        if(mDragInfo != null)
        {
            spanX = mDragInfo.spanX;
            spanY = mDragInfo.spanY;
        }
        final long container = mLauncher.isHotseatLayout(cellLayout) ? -101 : -100;
        final int screen = indexOfChild(cellLayout);
        if(!mLauncher.isHotseatLayout(cellLayout) && screen != mCurrentPage && mState != State.SPRING_LOADED)
            snapToPage(screen);
        if(info instanceof PendingAddItemInfo)
        {
            final PendingAddItemInfo pendingInfo = (PendingAddItemInfo)dragInfo;
            boolean findNearestVacantCell = true;
            if(pendingInfo.itemType == 1)
            {
                mTargetCell = findNearestArea(touchXY[0], touchXY[1], spanX, spanY, cellLayout, mTargetCell);
                if(willCreateUserFolder((ItemInfo)d.dragInfo, mDragTargetLayout, mTargetCell, true) || willAddToExistingUserFolder((ItemInfo)d.dragInfo, mDragTargetLayout, mTargetCell))
                    findNearestVacantCell = false;
            }
            if(findNearestVacantCell)
                mTargetCell = findNearestVacantArea(touchXY[0], touchXY[1], spanX, spanY, null, cellLayout, mTargetCell);
            Runnable onAnimationCompleteRunnable = new Runnable() {

                public void run()
                {
                    switch(pendingInfo.itemType)
                    {
                    case 4: // '\004'
                        mLauncher.addAppWidgetFromDrop((PendingAddWidgetInfo)pendingInfo, container, screen, mTargetCell, null);
                        break;

                    case 1: // '\001'
                        mLauncher.processShortcutFromDrop(pendingInfo.componentName, container, screen, mTargetCell, null);
                        break;

                    case 2: // '\002'
                    case 3: // '\003'
                    default:
                        throw new IllegalStateException((new StringBuilder("Unknown item type: ")).append(pendingInfo.itemType).toString());
                    }
                    cellLayout.onDragExit();
                }

                final Workspace this$0;
                private final PendingAddItemInfo val$pendingInfo;
                private final long val$container;
                private final int val$screen;
                private final CellLayout val$cellLayout;

            
            {
                this$0 = Workspace.this;
                pendingInfo = pendingadditeminfo;
                container = l;
                screen = i;
                cellLayout = celllayout;
                super();
            }
            }
;
            int loc[] = new int[2];
            cellLayout.cellToPoint(mTargetCell[0], mTargetCell[1], loc);
            RectF r = new RectF();
            cellLayout.cellToRect(mTargetCell[0], mTargetCell[1], spanX, spanY, r);
            setFinalTransitionTransform(cellLayout);
            float cellLayoutScale = mLauncher.getDragLayer().getDescendantCoordRelativeToSelf(cellLayout, loc);
            resetTransitionTransform(cellLayout);
            float dragViewScale = r.width() / (float)d.dragView.getMeasuredWidth();
            loc[0] -= ((float)d.dragView.getMeasuredWidth() - cellLayoutScale * r.width()) / 2.0F;
            loc[1] -= ((float)d.dragView.getMeasuredHeight() - cellLayoutScale * r.height()) / 2.0F;
            mLauncher.getDragLayer().animateViewIntoPosition(d.dragView, loc, dragViewScale * cellLayoutScale, onAnimationCompleteRunnable);
        } else
        {
            View view = null;
            switch(info.itemType)
            {
            case 0: // '\0'
            case 1: // '\001'
                if(info.container == -1L && (info instanceof ApplicationInfo))
                    info = new ShortcutInfo((ApplicationInfo)info);
                view = mLauncher.createShortcut(0x7f030002, cellLayout, (ShortcutInfo)info);
                break;

            case 2: // '\002'
                view = FolderIcon.fromXml(0x7f03000a, mLauncher, cellLayout, (FolderInfo)info, mIconCache);
                break;

            default:
                throw new IllegalStateException((new StringBuilder("Unknown item type: ")).append(info.itemType).toString());
            }
            if(touchXY != null)
            {
                mTargetCell = findNearestArea(touchXY[0], touchXY[1], spanX, spanY, cellLayout, mTargetCell);
                d.postAnimationRunnable = exitSpringLoadedRunnable;
                if(createUserFolderIfNecessary(view, container, cellLayout, mTargetCell, true, d.dragView, d.postAnimationRunnable))
                    return;
                if(addToExistingFolderIfNecessary(view, cellLayout, mTargetCell, d, true))
                    return;
            }
            if(touchXY != null)
                mTargetCell = findNearestVacantArea(touchXY[0], touchXY[1], 1, 1, null, cellLayout, mTargetCell);
            else
                cellLayout.findCellForSpan(mTargetCell, 1, 1);
            addInScreen(view, container, screen, mTargetCell[0], mTargetCell[1], info.spanX, info.spanY, insertAtFirst);
            cellLayout.onDropChild(view);
            cellLayout.animateDrop();
            CellLayout.LayoutParams lp = (CellLayout.LayoutParams)view.getLayoutParams();
            cellLayout.getChildrenLayout().measureChild(view);
            LauncherModel.addOrMoveItemInDatabase(mLauncher, info, container, screen, lp.cellX, lp.cellY);
            if(d.dragView != null)
            {
                setFinalTransitionTransform(cellLayout);
                mLauncher.getDragLayer().animateViewIntoPosition(d.dragView, view, exitSpringLoadedRunnable);
                resetTransitionTransform(cellLayout);
            }
        }
    }

    public void setFinalTransitionTransform(CellLayout layout)
    {
        if(isSwitchingState())
        {
            int index = indexOfChild(layout);
            mCurrentScaleX = layout.getScaleX();
            mCurrentScaleY = layout.getScaleY();
            mCurrentTranslationX = layout.getTranslationX();
            mCurrentTranslationY = layout.getTranslationY();
            mCurrentRotationY = layout.getRotationY();
            layout.setScaleX(mNewScaleXs[index]);
            layout.setScaleY(mNewScaleYs[index]);
            layout.setTranslationX(mNewTranslationXs[index]);
            layout.setTranslationY(mNewTranslationYs[index]);
            layout.setRotationY(mNewRotationYs[index]);
        }
    }

    public void resetTransitionTransform(CellLayout layout)
    {
        if(isSwitchingState())
        {
            mCurrentScaleX = layout.getScaleX();
            mCurrentScaleY = layout.getScaleY();
            mCurrentTranslationX = layout.getTranslationX();
            mCurrentTranslationY = layout.getTranslationY();
            mCurrentRotationY = layout.getRotationY();
            layout.setScaleX(mCurrentScaleX);
            layout.setScaleY(mCurrentScaleY);
            layout.setTranslationX(mCurrentTranslationX);
            layout.setTranslationY(mCurrentTranslationY);
            layout.setRotationY(mCurrentRotationY);
        }
    }

    public CellLayout getCurrentDropLayout()
    {
        return (CellLayout)getChildAt(mNextPage != -1 ? mNextPage : mCurrentPage);
    }

    public CellLayout.CellInfo getDragInfo()
    {
        return mDragInfo;
    }

    private int[] findNearestVacantArea(int pixelX, int pixelY, int spanX, int spanY, View ignoreView, CellLayout layout, int recycle[])
    {
        return layout.findNearestVacantArea(pixelX, pixelY, spanX, spanY, ignoreView, recycle);
    }

    private int[] findNearestArea(int pixelX, int pixelY, int spanX, int spanY, CellLayout layout, int recycle[])
    {
        return layout.findNearestArea(pixelX, pixelY, spanX, spanY, recycle);
    }

    void setup(DragController dragController)
    {
        mSpringLoadedDragController = new SpringLoadedDragController(mLauncher);
        mDragController = dragController;
        updateChildrenLayersEnabled();
        setWallpaperDimension();
    }

    public void onDropCompleted(View target, DropTarget.DragObject d, boolean success)
    {
        if(success)
        {
            if(target != this && mDragInfo != null)
            {
                getParentCellLayoutForView(mDragInfo.cell).removeView(mDragInfo.cell);
                if(mDragInfo.cell instanceof DropTarget)
                    mDragController.removeDropTarget((DropTarget)mDragInfo.cell);
            }
        } else
        if(mDragInfo != null)
        {
            doDragExit(null);
            CellLayout cellLayout;
            if(mLauncher.isHotseatLayout(target))
                cellLayout = mLauncher.getHotseat().getLayout();
            else
                cellLayout = (CellLayout)getChildAt(mDragInfo.screen);
            cellLayout.onDropChild(mDragInfo.cell);
        }
        if(d.cancelled && mDragInfo.cell != null)
            mDragInfo.cell.setVisibility(0);
        mDragOutline = null;
        mDragInfo = null;
    }

    public boolean isDropEnabled()
    {
        return true;
    }

    protected void onRestoreInstanceState(Parcelable state)
    {
        super.onRestoreInstanceState(state);
        Launcher.setScreen(mCurrentPage);
    }

    public void scrollLeft()
    {
        if(!isSmall() && !mIsSwitchingState)
            super.scrollLeft();
        Folder openFolder = getOpenFolder();
        if(openFolder != null)
            openFolder.completeDragExit();
    }

    public void scrollRight()
    {
        if(!isSmall() && !mIsSwitchingState)
            super.scrollRight();
        Folder openFolder = getOpenFolder();
        if(openFolder != null)
            openFolder.completeDragExit();
    }

    public boolean onEnterScrollArea(int x, int y, int direction)
    {
        if(mLauncher.getHotseat() != null)
        {
            Rect r = new Rect();
            mLauncher.getHotseat().getHitRect(r);
            if(r.contains(x, y))
                return false;
        }
        boolean result = false;
        if(!isSmall() && !mIsSwitchingState)
        {
            mInScrollArea = true;
            int page = mCurrentPage + (direction != 0 ? 1 : -1);
            CellLayout layout = (CellLayout)getChildAt(page);
            cancelFolderCreation();
            if(layout != null)
            {
                if(mDragTargetLayout != null)
                {
                    mDragTargetLayout.setIsDragOverlapping(false);
                    mDragTargetLayout.onDragExit();
                }
                mDragTargetLayout = layout;
                mDragTargetLayout.setIsDragOverlapping(true);
                invalidate();
                result = true;
            }
        }
        return result;
    }

    public boolean onExitScrollArea()
    {
        boolean result = false;
        if(mInScrollArea)
        {
            if(mDragTargetLayout != null)
            {
                mDragTargetLayout.setIsDragOverlapping(false);
                mDragTargetLayout = getCurrentDropLayout();
                mDragTargetLayout.onDragEnter();
                invalidate();
                result = true;
            }
            mInScrollArea = false;
        }
        return result;
    }

    private void onResetScrollArea()
    {
        if(mDragTargetLayout != null)
        {
            mDragTargetLayout.setIsDragOverlapping(false);
            invalidate();
        }
        mInScrollArea = false;
    }

    CellLayout getParentCellLayoutForView(View v)
    {
        ArrayList layouts = getWorkspaceAndHotseatCellLayouts();
        for(Iterator iterator = layouts.iterator(); iterator.hasNext();)
        {
            CellLayout layout = (CellLayout)iterator.next();
            if(layout.getChildrenLayout().indexOfChild(v) > -1)
                return layout;
        }

        return null;
    }

    ArrayList getWorkspaceAndHotseatCellLayouts()
    {
        ArrayList layouts = new ArrayList();
        int screenCount = getChildCount();
        for(int screen = 0; screen < screenCount; screen++)
            layouts.add((CellLayout)getChildAt(screen));

        if(mLauncher.getHotseat() != null)
            layouts.add(mLauncher.getHotseat().getLayout());
        return layouts;
    }

    ArrayList getWorkspaceAndHotseatCellLayoutChildren()
    {
        ArrayList childrenLayouts = new ArrayList();
        int screenCount = getChildCount();
        for(int screen = 0; screen < screenCount; screen++)
            childrenLayouts.add(((CellLayout)getChildAt(screen)).getChildrenLayout());

        if(mLauncher.getHotseat() != null)
            childrenLayouts.add(mLauncher.getHotseat().getLayout().getChildrenLayout());
        return childrenLayouts;
    }

    public Folder getFolderForTag(Object tag)
    {
        ArrayList childrenLayouts = getWorkspaceAndHotseatCellLayoutChildren();
        for(Iterator iterator = childrenLayouts.iterator(); iterator.hasNext();)
        {
            CellLayoutChildren layout = (CellLayoutChildren)iterator.next();
            int count = layout.getChildCount();
            for(int i = 0; i < count; i++)
            {
                View child = layout.getChildAt(i);
                if(child instanceof Folder)
                {
                    Folder f = (Folder)child;
                    if(f.getInfo() == tag && f.getInfo().opened)
                        return f;
                }
            }

        }

        return null;
    }

    public View getViewForTag(Object tag)
    {
        ArrayList childrenLayouts = getWorkspaceAndHotseatCellLayoutChildren();
        for(Iterator iterator = childrenLayouts.iterator(); iterator.hasNext();)
        {
            CellLayoutChildren layout = (CellLayoutChildren)iterator.next();
            int count = layout.getChildCount();
            for(int i = 0; i < count; i++)
            {
                View child = layout.getChildAt(i);
                if(child.getTag() == tag)
                    return child;
            }

        }

        return null;
    }

    void clearDropTargets()
    {
        ArrayList childrenLayouts = getWorkspaceAndHotseatCellLayoutChildren();
        for(Iterator iterator = childrenLayouts.iterator(); iterator.hasNext();)
        {
            CellLayoutChildren layout = (CellLayoutChildren)iterator.next();
            int childCount = layout.getChildCount();
            for(int j = 0; j < childCount; j++)
            {
                View v = layout.getChildAt(j);
                if(v instanceof DropTarget)
                    mDragController.removeDropTarget((DropTarget)v);
            }

        }

    }

    void removeItems(ArrayList apps)
    {
        final AppWidgetManager widgets = AppWidgetManager.getInstance(getContext());
        final HashSet packageNames = new HashSet();
        int appCount = apps.size();
        for(int i = 0; i < appCount; i++)
            packageNames.add(((ApplicationInfo)apps.get(i)).componentName.getPackageName());

        ArrayList cellLayouts = getWorkspaceAndHotseatCellLayouts();
        final CellLayout layoutParent;
        final ViewGroup layout;
        for(Iterator iterator = cellLayouts.iterator(); iterator.hasNext(); post(new Runnable() {

        public void run()
        {
            ArrayList childrenToRemove = new ArrayList();
            childrenToRemove.clear();
            int childCount = layout.getChildCount();
            for(int j = 0; j < childCount; j++)
            {
                View view = layout.getChildAt(j);
                Object tag = view.getTag();
                if(tag instanceof ShortcutInfo)
                {
                    ShortcutInfo info = (ShortcutInfo)tag;
                    Intent intent = info.intent;
                    ComponentName name = intent.getComponent();
                    if("android.intent.action.MAIN".equals(intent.getAction()) && name != null)
                    {
                        for(Iterator iterator2 = packageNames.iterator(); iterator2.hasNext();)
                        {
                            String packageName = (String)iterator2.next();
                            if(packageName.equals(name.getPackageName()))
                            {
                                LauncherModel.deleteItemFromDatabase(mLauncher, info);
                                childrenToRemove.add(view);
                            }
                        }

                    }
                } else
                if(tag instanceof FolderInfo)
                {
                    FolderInfo info = (FolderInfo)tag;
                    ArrayList contents = info.contents;
                    int contentsCount = contents.size();
                    ArrayList appsToRemoveFromFolder = new ArrayList();
                    for(int k = 0; k < contentsCount; k++)
                    {
                        ShortcutInfo appInfo = (ShortcutInfo)contents.get(k);
                        Intent intent = appInfo.intent;
                        ComponentName name = intent.getComponent();
                        if("android.intent.action.MAIN".equals(intent.getAction()) && name != null)
                        {
                            for(Iterator iterator4 = packageNames.iterator(); iterator4.hasNext();)
                            {
                                String packageName = (String)iterator4.next();
                                if(packageName.equals(name.getPackageName()))
                                    appsToRemoveFromFolder.add(appInfo);
                            }

                        }
                    }

                    ShortcutInfo item;
                    for(Iterator iterator3 = appsToRemoveFromFolder.iterator(); iterator3.hasNext(); LauncherModel.deleteItemFromDatabase(mLauncher, item))
                    {
                        item = (ShortcutInfo)iterator3.next();
                        info.remove(item);
                    }

                } else
                if(tag instanceof LauncherAppWidgetInfo)
                {
                    LauncherAppWidgetInfo info = (LauncherAppWidgetInfo)tag;
                    AppWidgetProviderInfo provider = widgets.getAppWidgetInfo(info.appWidgetId);
                    if(provider != null)
                    {
                        for(Iterator iterator1 = packageNames.iterator(); iterator1.hasNext();)
                        {
                            String packageName = (String)iterator1.next();
                            if(packageName.equals(provider.provider.getPackageName()))
                            {
                                LauncherModel.deleteItemFromDatabase(mLauncher, info);
                                childrenToRemove.add(view);
                            }
                        }

                    }
                }
            }

            childCount = childrenToRemove.size();
            for(int j = 0; j < childCount; j++)
            {
                View child = (View)childrenToRemove.get(j);
                layoutParent.removeViewInLayout(child);
                if(child instanceof DropTarget)
                    mDragController.removeDropTarget((DropTarget)child);
            }

            if(childCount > 0)
            {
                layout.requestLayout();
                layout.invalidate();
            }
        }

        final Workspace this$0;
        private final ViewGroup val$layout;
        private final HashSet val$packageNames;
        private final AppWidgetManager val$widgets;
        private final CellLayout val$layoutParent;

            
            {
                this$0 = Workspace.this;
                layout = viewgroup;
                packageNames = hashset;
                widgets = appwidgetmanager;
                layoutParent = celllayout;
                super();
            }
    }
))
        {
            layoutParent = (CellLayout)iterator.next();
            layout = layoutParent.getChildrenLayout();
        }

    }

    void updateShortcuts(ArrayList apps)
    {
        ArrayList childrenLayouts = getWorkspaceAndHotseatCellLayoutChildren();
        for(Iterator iterator = childrenLayouts.iterator(); iterator.hasNext();)
        {
            CellLayoutChildren layout = (CellLayoutChildren)iterator.next();
            int childCount = layout.getChildCount();
            for(int j = 0; j < childCount; j++)
            {
                View view = layout.getChildAt(j);
                Object tag = view.getTag();
                if(tag instanceof ShortcutInfo)
                {
                    ShortcutInfo info = (ShortcutInfo)tag;
                    Intent intent = info.intent;
                    ComponentName name = intent.getComponent();
                    if(info.itemType == 0 && "android.intent.action.MAIN".equals(intent.getAction()) && name != null)
                    {
                        int appCount = apps.size();
                        for(int k = 0; k < appCount; k++)
                        {
                            ApplicationInfo app = (ApplicationInfo)apps.get(k);
                            if(app.componentName.equals(name))
                            {
                                info.setIcon(mIconCache.getIcon(info.intent));
                                ((TextView)view).setCompoundDrawablesWithIntrinsicBounds(null, new FastBitmapDrawable(info.getIcon(mIconCache)), null, null);
                            }
                        }

                    }
                }
            }

        }

    }

    void moveToDefaultScreen(boolean animate)
    {
        if(!isSmall())
            if(animate)
                snapToPage(mDefaultPage);
            else
                setCurrentPage(mDefaultPage);
        getChildAt(mDefaultPage).requestFocus();
    }

    public void syncPages()
    {
    }

    public void syncPageItems(int i, boolean flag)
    {
    }

    protected String getCurrentPageDescription()
    {
        int page = mNextPage == -1 ? mCurrentPage : mNextPage;
        return String.format(mContext.getString(0x7f0c0045), new Object[] {
            Integer.valueOf(page + 1), Integer.valueOf(getChildCount())
        });
    }

    public void getLocationInDragLayer(int loc[])
    {
        mLauncher.getDragLayer().getLocationInDragLayer(this, loc);
    }

    void showDockDivider(boolean immediately)
    {
        ViewGroup parent = (ViewGroup)getParent();
        View qsbDivider = (ImageView)parent.findViewById(0x7f060018);
        View dockDivider = (ImageView)parent.findViewById(0x7f060019);
        if(qsbDivider != null && dockDivider != null)
        {
            qsbDivider.setVisibility(0);
            dockDivider.setVisibility(0);
            if(mDividerAnimator != null)
            {
                mDividerAnimator.cancel();
                mDividerAnimator = null;
            }
            if(immediately)
            {
                qsbDivider.setAlpha(1.0F);
                dockDivider.setAlpha(1.0F);
            } else
            {
                mDividerAnimator = new AnimatorSet();
                mDividerAnimator.playTogether(new Animator[] {
                    ObjectAnimator.ofFloat(qsbDivider, "alpha", new float[] {
                        1.0F
                    }), ObjectAnimator.ofFloat(dockDivider, "alpha", new float[] {
                        1.0F
                    })
                });
                mDividerAnimator.setDuration(150L);
                mDividerAnimator.start();
            }
        }
    }

    void hideDockDivider(boolean immediately)
    {
        ViewGroup parent = (ViewGroup)getParent();
        final View qsbDivider = (ImageView)parent.findViewById(0x7f060018);
        final View dockDivider = (ImageView)parent.findViewById(0x7f060019);
        if(qsbDivider != null && dockDivider != null)
        {
            if(mDividerAnimator != null)
            {
                mDividerAnimator.cancel();
                mDividerAnimator = null;
            }
            if(immediately)
            {
                qsbDivider.setVisibility(8);
                dockDivider.setVisibility(8);
                qsbDivider.setAlpha(0.0F);
                dockDivider.setAlpha(0.0F);
            } else
            {
                mDividerAnimator = new AnimatorSet();
                mDividerAnimator.playTogether(new Animator[] {
                    ObjectAnimator.ofFloat(qsbDivider, "alpha", new float[] {
                        0.0F
                    }), ObjectAnimator.ofFloat(dockDivider, "alpha", new float[] {
                        0.0F
                    })
                });
                mDividerAnimator.addListener(new AnimatorListenerAdapter() {

                    public void onAnimationCancel(Animator animation)
                    {
                        cancelled = true;
                    }

                    public void onAnimationEnd(Animator animation)
                    {
                        if(!cancelled)
                        {
                            qsbDivider.setVisibility(8);
                            dockDivider.setVisibility(8);
                        }
                    }

                    private boolean cancelled;
                    final Workspace this$0;
                    private final View val$qsbDivider;
                    private final View val$dockDivider;

            
            {
                this$0 = Workspace.this;
                qsbDivider = view;
                dockDivider = view1;
                super();
                cancelled = false;
            }
                }
);
                mDividerAnimator.setDuration(650L);
                mDividerAnimator.start();
            }
        }
    }

    private static final String TAG = "Launcher.Workspace";
    private static final float WORKSPACE_ROTATION = 12.5F;
    private static final float WORKSPACE_OVERSCROLL_ROTATION = 24F;
    private static float CAMERA_DISTANCE = 6500F;
    private static final int CHILDREN_OUTLINE_FADE_OUT_DELAY = 0;
    private static final int CHILDREN_OUTLINE_FADE_OUT_DURATION = 375;
    private static final int CHILDREN_OUTLINE_FADE_IN_DURATION = 100;
    private static final int BACKGROUND_FADE_OUT_DURATION = 350;
    private static final int ADJACENT_SCREEN_DROP_DURATION = 300;
    private ObjectAnimator mChildrenOutlineFadeInAnimation;
    private ObjectAnimator mChildrenOutlineFadeOutAnimation;
    private float mChildrenOutlineAlpha;
    private ValueAnimator mBackgroundFadeInAnimation;
    private ValueAnimator mBackgroundFadeOutAnimation;
    private Drawable mBackground;
    boolean mDrawBackground;
    private float mBackgroundAlpha;
    private float mOverScrollMaxBackgroundAlpha;
    private int mOverScrollPageIndex;
    private AnimatorSet mDividerAnimator;
    private float mWallpaperScrollRatio;
    private final WallpaperManager mWallpaperManager;
    private IBinder mWindowToken;
    private static final float WALLPAPER_SCREENS_SPAN = 2F;
    private int mDefaultPage;
    private CellLayout.CellInfo mDragInfo;
    private int mTargetCell[];
    private CellLayout mDragTargetLayout;
    private Launcher mLauncher;
    private IconCache mIconCache;
    private DragController mDragController;
    private int mTempCell[];
    private int mTempEstimate[];
    private float mDragViewVisualCenter[];
    private float mTempDragCoordinates[];
    private float mTempCellLayoutCenterCoordinates[];
    private float mTempDragBottomRightCoordinates[];
    private Matrix mTempInverseMatrix;
    private SpringLoadedDragController mSpringLoadedDragController;
    private float mSpringLoadedShrinkFactor;
    private static final int DEFAULT_CELL_COUNT_X = 4;
    private static final int DEFAULT_CELL_COUNT_Y = 4;
    private State mState;
    private boolean mIsSwitchingState;
    private boolean mSwitchStateAfterFirstLayout;
    private State mStateAfterFirstLayout;
    private AnimatorSet mAnimator;
    private android.animation.Animator.AnimatorListener mChangeStateAnimationListener;
    boolean mAnimatingViewIntoPlace;
    boolean mIsDragOccuring;
    boolean mChildrenLayersEnabled;
    private boolean mInScrollArea;
    private final HolographicOutlineHelper mOutlineHelper;
    private Bitmap mDragOutline;
    private final Rect mTempRect;
    private final int mTempXY[];
    private int mDragViewMultiplyColor;
    private final Paint mExternalDragOutlinePaint;
    private final Matrix mMatrix;
    private final Camera mCamera;
    private final float mTempFloat2[];
    int mWallpaperWidth;
    int mWallpaperHeight;
    WallpaperOffsetInterpolator mWallpaperOffset;
    boolean mUpdateWallpaperOffsetImmediately;
    private Runnable mDelayedResizeRunnable;
    private int mDisplayWidth;
    private int mDisplayHeight;
    private boolean mIsStaticWallpaper;
    private int mWallpaperTravelWidth;
    private static final int FOLDER_CREATION_TIMEOUT = 250;
    private final Alarm mFolderCreationAlarm;
    private FolderIcon.FolderRingAnimator mDragFolderRingAnimator;
    private View mLastDragOverView;
    private boolean mCreateUserFolderOnDrop;
    private float mXDown;
    private float mYDown;
    static final float START_DAMPING_TOUCH_SLOP_ANGLE = 0.5235988F;
    static final float MAX_SWIPE_ANGLE = 1.047198F;
    static final float TOUCH_SLOP_DAMPING_FACTOR = 4F;
    private int mSavedScrollX;
    private float mSavedRotationY;
    private float mSavedTranslationX;
    private float mCurrentScaleX;
    private float mCurrentScaleY;
    private float mCurrentRotationY;
    private float mCurrentTranslationX;
    private float mCurrentTranslationY;
    private float mOldTranslationXs[];
    private float mOldTranslationYs[];
    private float mOldScaleXs[];
    private float mOldScaleYs[];
    private float mOldBackgroundAlphas[];
    private float mOldBackgroundAlphaMultipliers[];
    private float mOldAlphas[];
    private float mOldRotationYs[];
    private float mNewTranslationXs[];
    private float mNewTranslationYs[];
    private float mNewScaleXs[];
    private float mNewScaleYs[];
    private float mNewBackgroundAlphas[];
    private float mNewBackgroundAlphaMultipliers[];
    private float mNewAlphas[];
    private float mNewRotationYs[];
    private float mTransitionProgress;
    private final ZoomInInterpolator mZoomInInterpolator;
































}
