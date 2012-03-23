// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelemoji;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelpackage.NetSceneGetPackageList;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;

public class ArtEmojiUpdater
    implements IOnSceneEnd
{

    public ArtEmojiUpdater(OnArtEmojiUpdatedListener onartemojiupdatedlistener)
    {
        a = onartemojiupdatedlistener;
    }

    public final void a()
    {
        Long long1 = Long.valueOf(Util.a((Long)MMCore.f().f().a(4116)));
        boolean flag;
        if(System.currentTimeMillis() - long1.longValue() > b)
            flag = true;
        else
            flag = false;
        if(flag)
        {
            MMCore.g().a(64, this);
            NetSceneGetPackageList netscenegetpackagelist = new NetSceneGetPackageList(2);
            MMCore.g().b(netscenegetpackagelist);
        }
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        if(i == 0 && j == 0)
        {
            int k = netscenebase.b();
            MMCore.f().f().a(4116, Long.valueOf(System.currentTimeMillis()));
            if(k == 64 && a != null)
                a.a();
        }
        a = null;
        MMCore.g().b(64, this);
    }

    private static long b = 0x6ddd00L;
    private OnArtEmojiUpdatedListener a;


    private class OnArtEmojiUpdatedListener
    {

        public abstract void a();
    }

}
