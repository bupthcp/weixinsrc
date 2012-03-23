// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   InfoDropTarget.java

package com.android.launcher2;

import android.content.Context;
import android.content.Intent;
import android.content.res.*;
import android.graphics.*;
import android.graphics.drawable.TransitionDrawable;
import android.util.AttributeSet;
import android.view.ViewGroup;

// Referenced classes of package com.android.launcher2:
//            ButtonDropTarget, LauncherApplication, AppsCustomizePagedView, ApplicationInfo, 
//            ShortcutInfo, Launcher, DropTarget, DragSource

public class InfoDropTarget extends ButtonDropTarget
{

    public InfoDropTarget(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public InfoDropTarget(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mHoverColor = 0xff0000ff;
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        mOriginalTextColor = getTextColors();
        Resources r = getResources();
        mHoverColor = r.getColor(0x7f070001);
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

    public boolean acceptDrop(DropTarget.DragObject d)
    {
        android.content.ComponentName componentName = null;
        if(d.dragInfo instanceof ApplicationInfo)
            componentName = ((ApplicationInfo)d.dragInfo).componentName;
        else
        if(d.dragInfo instanceof ShortcutInfo)
            componentName = ((ShortcutInfo)d.dragInfo).intent.getComponent();
        if(componentName != null)
            mLauncher.startApplicationDetailsActivity(componentName);
        return false;
    }

    public void onDragStart(DragSource source, Object info, int dragAction)
    {
        boolean isVisible = true;
        if(!isAllAppsApplication(source, info))
            isVisible = false;
        mActive = isVisible;
        mDrawable.resetTransition();
        setTextColor(mOriginalTextColor);
        ((ViewGroup)getParent()).setVisibility(isVisible ? 0 : 8);
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

    private ColorStateList mOriginalTextColor;
    private TransitionDrawable mDrawable;
    private int mHoverColor;
}
