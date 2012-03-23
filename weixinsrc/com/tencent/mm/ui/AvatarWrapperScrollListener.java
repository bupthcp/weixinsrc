// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.widget.AbsListView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;

public class AvatarWrapperScrollListener
    implements android.widget.AbsListView.OnScrollListener
{

    public AvatarWrapperScrollListener()
    {
        this(null);
    }

    public AvatarWrapperScrollListener(android.widget.AbsListView.OnScrollListener onscrolllistener)
    {
        a = onscrolllistener;
    }

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        if(a != null)
            a.onScroll(abslistview, i, j, k);
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        if(i != 0)
        {
            MMCore.f().v();
            com.tencent.mm.modelavatar.AvatarLogic.AvatarSerivce.b();
        } else
        {
            MMCore.f().v();
            com.tencent.mm.modelavatar.AvatarLogic.AvatarSerivce.c();
        }
        if(a != null)
            a.onScrollStateChanged(abslistview, i);
    }

    private android.widget.AbsListView.OnScrollListener a;
}
