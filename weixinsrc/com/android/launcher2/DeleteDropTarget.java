// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   DeleteDropTarget.java

package com.android.launcher2;

import android.content.Context;
import android.content.res.*;
import android.graphics.*;
import android.graphics.drawable.TransitionDrawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;

// Referenced classes of package com.android.launcher2:
//            ButtonDropTarget, LauncherApplication, AppsCustomizePagedView, ApplicationInfo, 
//            PendingAddWidgetInfo, Workspace, Folder, ShortcutInfo, 
//            LauncherAppWidgetInfo, FolderInfo, Launcher, DragLayer, 
//            DragView, SearchDropTargetBar, ItemInfo, LauncherModel, 
//            DropTarget, DragSource, LauncherAppWidgetHost

public class DeleteDropTarget extends ButtonDropTarget
{

    public DeleteDropTarget(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public DeleteDropTarget(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mHoverColor = 0xffff0000;
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        mOriginalTextColor = getTextColors();
        Resources r = getResources();
        mHoverColor = r.getColor(0x7f070000);
        mHoverPaint.setColorFilter(new PorterDuffColorFilter(mHoverColor, android.graphics.PorterDuff.Mode.SRC_ATOP));
        mDrawable = (TransitionDrawable)getCompoundDrawables()[0];
        mDrawable.setCrossFadeEnabled(true);
        int orientation = getResources().getConfiguration().orientation;
        if(orientation == 2 && !LauncherApplication.isScreenLarge())
            setText("");
    }

    private boolean isAllAppsApplication(DragSource source, Object info)
    {
        return (source instanceof AppsCustomizePagedView) && (info instanceof ApplicationInfo);
    }

    private boolean isAllAppsWidget(DragSource source, Object info)
    {
        return (source instanceof AppsCustomizePagedView) && (info instanceof PendingAddWidgetInfo);
    }

    private boolean isDragSourceWorkspaceOrFolder(DropTarget.DragObject d)
    {
        return (d.dragSource instanceof Workspace) || (d.dragSource instanceof Folder);
    }

    private boolean isWorkspaceOrFolderApplication(DropTarget.DragObject d)
    {
        return isDragSourceWorkspaceOrFolder(d) && (d.dragInfo instanceof ShortcutInfo);
    }

    private boolean isWorkspaceOrFolderWidget(DropTarget.DragObject d)
    {
        return isDragSourceWorkspaceOrFolder(d) && (d.dragInfo instanceof LauncherAppWidgetInfo);
    }

    private boolean isWorkspaceFolder(DropTarget.DragObject d)
    {
        return (d.dragSource instanceof Workspace) && (d.dragInfo instanceof FolderInfo);
    }

    public boolean acceptDrop(DropTarget.DragObject d)
    {
        return true;
    }

    public void onDragStart(DragSource source, Object info, int dragAction)
    {
        boolean isVisible = true;
        boolean isUninstall = false;
        if(isAllAppsWidget(source, info))
            isVisible = false;
        if(isAllAppsApplication(source, info))
        {
            ApplicationInfo appInfo = (ApplicationInfo)info;
            if((appInfo.flags & 1) != 0)
                isUninstall = true;
            else
                isVisible = false;
        }
        mActive = isVisible;
        mDrawable.resetTransition();
        setTextColor(mOriginalTextColor);
        ((ViewGroup)getParent()).setVisibility(isVisible ? 0 : 8);
        if(getText().length() > 0)
            setText(isUninstall ? 0x7f0c0023 : 0x7f0c0022);
    }

    public void onDragEnd()
    {
        super.onDragEnd();
        mActive = false;
    }

    public void onDragEnter(DropTarget.DragObject d)
    {
        super.onDragEnter(d);
        mDrawable.startTransition(mTransitionDuration);
        setTextColor(mHoverColor);
    }

    public void onDragExit(DropTarget.DragObject d)
    {
        super.onDragExit(d);
        if(!d.dragComplete)
        {
            mDrawable.resetTransition();
            setTextColor(mOriginalTextColor);
        }
    }

    private void animateToTrashAndCompleteDrop(final DropTarget.DragObject d)
    {
        DragLayer dragLayer = mLauncher.getDragLayer();
        Rect from = new Rect();
        Rect to = new Rect();
        dragLayer.getViewRectRelativeToSelf(d.dragView, from);
        dragLayer.getViewRectRelativeToSelf(this, to);
        int width = mDrawable.getIntrinsicWidth();
        int height = mDrawable.getIntrinsicHeight();
        to.set(to.left + getPaddingLeft(), to.top + getPaddingTop(), to.left + getPaddingLeft() + width, to.bottom);
        int xOffset = -(d.dragView.getMeasuredWidth() - width) / 2;
        int yOffset = -(d.dragView.getMeasuredHeight() - height) / 2;
        to.offset(xOffset, yOffset);
        mSearchDropTargetBar.deferOnDragEnd();
        Runnable onAnimationEndRunnable = new Runnable() {

            public void run()
            {
                mSearchDropTargetBar.onDragEnd();
                mLauncher.exitSpringLoadedDragMode();
                completeDrop(d);
            }

            final DeleteDropTarget this$0;
            private final DropTarget.DragObject val$d;

            
            {
                this$0 = DeleteDropTarget.this;
                d = dragobject;
                super();
            }
        }
;
        dragLayer.animateView(d.dragView, from, to, 0.1F, 0.1F, DELETE_ANIMATION_DURATION, new DecelerateInterpolator(2.0F), new DecelerateInterpolator(1.5F), onAnimationEndRunnable, false);
    }

    private void completeDrop(DropTarget.DragObject d)
    {
        ItemInfo item = (ItemInfo)d.dragInfo;
        if(isAllAppsApplication(d.dragSource, item))
            mLauncher.startApplicationUninstallActivity((ApplicationInfo)item);
        else
        if(isWorkspaceOrFolderApplication(d))
            LauncherModel.deleteItemFromDatabase(mLauncher, item);
        else
        if(isWorkspaceFolder(d))
        {
            FolderInfo folderInfo = (FolderInfo)item;
            mLauncher.removeFolder(folderInfo);
            LauncherModel.deleteFolderContentsFromDatabase(mLauncher, folderInfo);
        } else
        if(isWorkspaceOrFolderWidget(d))
        {
            mLauncher.removeAppWidget((LauncherAppWidgetInfo)item);
            LauncherModel.deleteItemFromDatabase(mLauncher, item);
            LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo)item;
            LauncherAppWidgetHost appWidgetHost = mLauncher.getAppWidgetHost();
            if(appWidgetHost != null)
                (new Thread(launcherAppWidgetInfo) {

                    public void run()
                    {
                        appWidgetHost.deleteAppWidgetId(launcherAppWidgetInfo.appWidgetId);
                    }

                    final DeleteDropTarget this$0;
                    private final LauncherAppWidgetHost val$appWidgetHost;
                    private final LauncherAppWidgetInfo val$launcherAppWidgetInfo;

            
            {
                this$0 = DeleteDropTarget.this;
                appWidgetHost = launcherappwidgethost;
                launcherAppWidgetInfo = launcherappwidgetinfo;
                super($anonymous0);
            }
                }
).start();
        }
    }

    public void onDrop(DropTarget.DragObject d)
    {
        animateToTrashAndCompleteDrop(d);
    }

    private static int DELETE_ANIMATION_DURATION = 250;
    private ColorStateList mOriginalTextColor;
    private TransitionDrawable mDrawable;
    private int mHoverColor;


}
