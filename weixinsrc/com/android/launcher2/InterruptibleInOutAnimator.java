// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   InterruptibleInOutAnimator.java

package com.android.launcher2;

import android.animation.*;

public class InterruptibleInOutAnimator
{

    public InterruptibleInOutAnimator(long duration, float fromValue, float toValue)
    {
        mFirstRun = true;
        mTag = null;
        mDirection = 0;
        mAnimator = ValueAnimator.ofFloat(new float[] {
            fromValue, toValue
        }).setDuration(duration);
        mOriginalDuration = duration;
        mOriginalFromValue = fromValue;
        mOriginalToValue = toValue;
        mAnimator.addListener(new AnimatorListenerAdapter() {

            public void onAnimationEnd(Animator animation)
            {
                mDirection = 0;
            }

            final InterruptibleInOutAnimator this$0;

            
            {
                this$0 = InterruptibleInOutAnimator.this;
                super();
            }
        }
);
    }

    private void animate(int direction)
    {
        long currentPlayTime = mAnimator.getCurrentPlayTime();
        float toValue = direction != 1 ? mOriginalFromValue : mOriginalToValue;
        float startValue = mFirstRun ? mOriginalFromValue : ((Float)mAnimator.getAnimatedValue()).floatValue();
        cancel();
        mDirection = direction;
        long duration = mOriginalDuration - currentPlayTime;
        mAnimator.setDuration(Math.max(0L, Math.min(duration, mOriginalDuration)));
        mAnimator.setFloatValues(new float[] {
            startValue, toValue
        });
        mAnimator.start();
        mFirstRun = false;
    }

    public void cancel()
    {
        mAnimator.cancel();
        mDirection = 0;
    }

    public void end()
    {
        mAnimator.end();
        mDirection = 0;
    }

    public boolean isStopped()
    {
        return mDirection == 0;
    }

    public void animateIn()
    {
        animate(1);
    }

    public void animateOut()
    {
        animate(2);
    }

    public void setTag(Object tag)
    {
        mTag = tag;
    }

    public Object getTag()
    {
        return mTag;
    }

    public ValueAnimator getAnimator()
    {
        return mAnimator;
    }

    private long mOriginalDuration;
    private float mOriginalFromValue;
    private float mOriginalToValue;
    private ValueAnimator mAnimator;
    private boolean mFirstRun;
    private Object mTag;
    private static final int STOPPED = 0;
    private static final int IN = 1;
    private static final int OUT = 2;
    private int mDirection;

}
