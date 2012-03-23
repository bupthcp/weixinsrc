// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PagedViewCellLayout.java

package com.android.launcher2;

import android.view.View;

interface Page
{

    public abstract int getPageChildCount();

    public abstract View getChildOnPageAt(int i);

    public abstract void removeAllViewsOnPage();

    public abstract void removeViewOnPageAt(int i);

    public abstract int indexOfChildOnPage(View view);
}
