// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   LauncherAnimatorUpdateListener.java

package com.android.launcher2;

import android.animation.ValueAnimator;

abstract class LauncherAnimatorUpdateListener
    implements android.animation.ValueAnimator.AnimatorUpdateListener
{

    LauncherAnimatorUpdateListener()
    {
    }

    public void onAnimationUpdate(ValueAnimator animation)
    {
        float b = ((Float)animation.getAnimatedValue()).floatValue();
        float a = 1.0F - b;
        onAnimationUpdate(a, b);
    }

    abstract void onAnimationUpdate(float f, float f1);
}
