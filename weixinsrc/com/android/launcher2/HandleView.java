// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   HandleView.java

package com.android.launcher2;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.android.launcher.R;

// Referenced classes of package com.android.launcher2:
//            Launcher, Workspace

public class HandleView extends ImageView
{

    public HandleView(Context context)
    {
        super(context);
        mOrientation = 1;
    }

    public HandleView(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public HandleView(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mOrientation = 1;
        TypedArray a = context.obtainStyledAttributes(attrs, com.android.launcher.R.styleable.HandleView, defStyle, 0);
        mOrientation = a.getInt(0, 1);
        a.recycle();
        setContentDescription(context.getString(0x7f0c001e));
    }

    public View focusSearch(int direction)
    {
        View newFocus = super.focusSearch(direction);
        if(newFocus == null && !mLauncher.isAllAppsVisible())
        {
            Workspace workspace = mLauncher.getWorkspace();
            workspace.dispatchUnhandledMove(null, direction);
            return ((View) (mOrientation != 1 || direction != 130 ? workspace : this));
        } else
        {
            return newFocus;
        }
    }

    public boolean onTouchEvent(MotionEvent ev)
    {
        if(ev.getAction() == 0 && mLauncher.isAllAppsVisible())
            return false;
        else
            return super.onTouchEvent(ev);
    }

    private static boolean isDirectionKey(int keyCode)
    {
        return keyCode == 20 || keyCode == 21 || keyCode == 22 || keyCode == 19;
    }

    void setLauncher(Launcher launcher)
    {
        mLauncher = launcher;
    }

    private static final int ORIENTATION_HORIZONTAL = 1;
    private Launcher mLauncher;
    private int mOrientation;
}
