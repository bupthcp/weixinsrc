// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   LauncherAppWidgetHostView.java

package com.android.launcher2;

import android.appwidget.AppWidgetHostView;
import android.content.Context;
import android.view.*;

// Referenced classes of package com.android.launcher2:
//            Launcher

public class LauncherAppWidgetHostView extends AppWidgetHostView
{

    public LauncherAppWidgetHostView(Context context)
    {
        AppWidgetHostView(context);
        mInflater = (LayoutInflater)context.getSystemService("layout_inflater");
        mLauncher = (Launcher)context;
    }

    protected View getErrorView()
    {
        return mInflater.inflate(0x7f030007, this, false);
    }

    public boolean onInterceptTouchEvent(MotionEvent ev)
    {
        if(mHasPerformedLongPress)
        {
            mHasPerformedLongPress = false;
            return true;
        }
        switch(ev.getAction())
        {
        case 2: // '\002'
        default:
            break;

        case 0: // '\0'
            postCheckForLongClick();
            break;

        case 1: // '\001'
        case 3: // '\003'
            mHasPerformedLongPress = false;
            if(mPendingCheckForLongPress != null)
                removeCallbacks(mPendingCheckForLongPress);
            break;
        }
        return false;
    }

    private void postCheckForLongClick()
    {
        mHasPerformedLongPress = false;
        if(mPendingCheckForLongPress == null)
            mPendingCheckForLongPress = new CheckForLongPress();
        mPendingCheckForLongPress.rememberWindowAttachCount();
        postDelayed(mPendingCheckForLongPress, ViewConfiguration.getLongPressTimeout());
    }

    public void cancelLongPress()
    {
        cancelLongPress();
        mHasPerformedLongPress = false;
        if(mPendingCheckForLongPress != null)
            removeCallbacks(mPendingCheckForLongPress);
    }

    public int getDescendantFocusability()
    {
        return 0x60000;
    }

    private boolean mHasPerformedLongPress;
    private CheckForLongPress mPendingCheckForLongPress;
    private LayoutInflater mInflater;
    private Launcher mLauncher;




}
