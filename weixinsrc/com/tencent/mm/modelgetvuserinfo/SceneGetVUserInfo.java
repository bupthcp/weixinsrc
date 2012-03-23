// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelgetvuserinfo;

import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;

// Referenced classes of package com.tencent.mm.modelgetvuserinfo:
//            VUserInfoStorage

public final class SceneGetVUserInfo
{

    private SceneGetVUserInfo()
    {
    }

    public static String a(int i)
    {
        String s = MMCore.f().R().a(i, true);
        if(!FileOperation.c(s))
        {
            a(false);
            s = null;
        }
        return s;
    }

    public static void a(boolean flag)
    {
        if(MMCore.f().c()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        long l = Util.a((Long)MMCore.f().f().a(0x10203), 0L);
        long l1 = Util.d();
        if(0x493e0L <= l1 - l && (!flag || 0x240c8400L <= l1 - l))
        {
            MMCore.f().f().a(0x10203, Long.valueOf(l1));
            new DoGetVuserinfo();
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private class DoGetVuserinfo
        implements IOnSceneEnd
    {

        public final void a(int i, int j, String s, NetSceneBase netscenebase)
        {
            MMCore.g().b(57, this);
        }

        public DoGetVuserinfo()
        {
            MMCore.g().a(57, this);
            NetSceneGetVUserInfo netscenegetvuserinfo = new NetSceneGetVUserInfo();
            MMCore.g().b(netscenegetvuserinfo);
        }
    }

}
