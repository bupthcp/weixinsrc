// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SymmetricalLinearTween.java

package com.android.launcher2;

import android.os.Handler;
import android.os.SystemClock;

// Referenced classes of package com.android.launcher2:
//            TweenCallback

class SymmetricalLinearTween
{

    public SymmetricalLinearTween(boolean initial, int duration, TweenCallback callback)
    {
        mTick = new Runnable() {

            public void run()
            {
                long base = mBase;
                long now = SystemClock.uptimeMillis();
                long diff = now - base;
                int duration = mDuration;
                float val = (float)diff / (float)duration;
                if(!mDirection)
                    val = 1.0F - val;
                if(val > 1.0F)
                    val = 1.0F;
                else
                if(val < 0.0F)
                    val = 0.0F;
                float old = mValue;
                mValue = val;
                mCallback.onTweenValueChanged(val, old);
                int frame = (int)(diff / 33L);
                long next = base + (long)((frame + 1) * 33);
                if(diff < (long)duration)
                    mHandler.postAtTime(this, next);
                if(diff >= (long)duration)
                {
                    mCallback.onTweenFinished();
                    mRunning = false;
                }
            }

            final SymmetricalLinearTween this$0;

            
            {
                this$0 = SymmetricalLinearTween.this;
                super();
            }
        }
;
        mValue = initial ? 1.0F : 0.0F;
        mDirection = initial;
        mDuration = duration;
        mCallback = callback;
        mHandler = new Handler();
    }

    public void start(boolean direction)
    {
        start(direction, SystemClock.uptimeMillis());
    }

    public void start(boolean direction, long baseTime)
    {
        if(direction != mDirection)
        {
            if(!mRunning)
            {
                mBase = baseTime;
                mRunning = true;
                mCallback.onTweenStarted();
                long next = SystemClock.uptimeMillis() + 33L;
                mHandler.postAtTime(mTick, next);
            } else
            {
                long now = SystemClock.uptimeMillis();
                long diff = now - mBase;
                mBase = (now + diff) - (long)mDuration;
            }
            mDirection = direction;
        }
    }

    private static final int FPS = 30;
    private static final int FRAME_TIME = 33;
    Handler mHandler;
    int mDuration;
    TweenCallback mCallback;
    boolean mRunning;
    long mBase;
    boolean mDirection;
    float mValue;
    Runnable mTick;
}
