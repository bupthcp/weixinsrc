// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   TweenCallback.java

package com.android.launcher2;


interface TweenCallback
{

    public abstract void onTweenValueChanged(float f, float f1);

    public abstract void onTweenStarted();

    public abstract void onTweenFinished();
}
