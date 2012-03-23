// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Launcher.java

package com.android.launcher2;

import android.animation.Animator;

// Referenced classes of package com.android.launcher2:
//            Launcher

interface LauncherTransitionable
{

    public abstract void onLauncherTransitionStart(Launcher launcher, Animator animator, boolean flag);

    public abstract void onLauncherTransitionEnd(Launcher launcher, Animator animator, boolean flag);
}
