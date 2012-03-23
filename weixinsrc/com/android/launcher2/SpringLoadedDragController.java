// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SpringLoadedDragController.java

package com.android.launcher2;


// Referenced classes of package com.android.launcher2:
//            OnAlarmListener, Alarm, Launcher, Workspace, 
//            DragController, CellLayout

public class SpringLoadedDragController
    implements OnAlarmListener
{

    public SpringLoadedDragController(Launcher launcher)
    {
        mLauncher = launcher;
        mAlarm = new Alarm();
        mAlarm.setOnAlarmListener(this);
    }

    public void cancel()
    {
        mAlarm.cancelAlarm();
    }

    public void setAlarm(CellLayout cl)
    {
        mAlarm.cancelAlarm();
        mAlarm.setAlarm(cl != null ? 550L : 950L);
        mScreen = cl;
    }

    public void onAlarm(Alarm alarm)
    {
        if(mScreen != null)
        {
            Workspace w = mLauncher.getWorkspace();
            int page = w.indexOfChild(mScreen);
            if(page != w.getCurrentPage())
                w.snapToPage(page);
        } else
        {
            mLauncher.getDragController().cancelDrag();
        }
    }

    final long ENTER_SPRING_LOAD_HOVER_TIME = 550L;
    final long ENTER_SPRING_LOAD_CANCEL_HOVER_TIME = 950L;
    final long EXIT_SPRING_LOAD_HOVER_TIME = 200L;
    Alarm mAlarm;
    private CellLayout mScreen;
    private Launcher mLauncher;
}
