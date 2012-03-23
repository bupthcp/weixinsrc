// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AllAppsView.java

package com.android.launcher2;

import java.util.ArrayList;

// Referenced classes of package com.android.launcher2:
//            Launcher, DragController

public interface AllAppsView
{
    public static interface Watcher
    {

        public abstract void zoomed(float f);
    }


    public abstract void setup(Launcher launcher, DragController dragcontroller);

    public abstract void zoom(float f, boolean flag);

    public abstract boolean isVisible();

    public abstract boolean isAnimating();

    public abstract void setApps(ArrayList arraylist);

    public abstract void addApps(ArrayList arraylist);

    public abstract void removeApps(ArrayList arraylist);

    public abstract void updateApps(ArrayList arraylist);

    public abstract void reset();

    public abstract void dumpState();

    public abstract void surrender();
}
