// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   DragScroller.java

package com.android.launcher2;


public interface DragScroller
{

    public abstract void scrollLeft();

    public abstract void scrollRight();

    public abstract boolean onEnterScrollArea(int i, int j, int k);

    public abstract boolean onExitScrollArea();
}
