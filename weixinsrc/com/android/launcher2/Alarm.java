// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Alarm.java

package com.android.launcher2;

import android.os.Handler;

// Referenced classes of package com.android.launcher2:
//            OnAlarmListener

public class Alarm
    implements Runnable
{

    public Alarm()
    {
        mAlarmPending = false;
        mHandler = new Handler();
    }

    public void setOnAlarmListener(OnAlarmListener alarmListener)
    {
        mAlarmListener = alarmListener;
    }

    public void setAlarm(long millisecondsInFuture)
    {
        long currentTime = System.currentTimeMillis();
        mAlarmPending = true;
        mAlarmTriggerTime = currentTime + millisecondsInFuture;
        if(!mWaitingForCallback)
        {
            mHandler.postDelayed(this, mAlarmTriggerTime - currentTime);
            mWaitingForCallback = true;
        }
    }

    public void cancelAlarm()
    {
        mAlarmTriggerTime = 0L;
        mAlarmPending = false;
    }

    public void run()
    {
        mWaitingForCallback = false;
        if(mAlarmTriggerTime != 0L)
        {
            long currentTime = System.currentTimeMillis();
            if(mAlarmTriggerTime > currentTime)
            {
                mHandler.postDelayed(this, Math.max(0L, mAlarmTriggerTime - currentTime));
                mWaitingForCallback = true;
            } else
            {
                mAlarmPending = false;
                if(mAlarmListener != null)
                    mAlarmListener.onAlarm(this);
            }
        }
    }

    public boolean alarmPending()
    {
        return mAlarmPending;
    }

    private long mAlarmTriggerTime;
    private boolean mWaitingForCallback;
    private Handler mHandler;
    private OnAlarmListener mAlarmListener;
    private boolean mAlarmPending;
}
