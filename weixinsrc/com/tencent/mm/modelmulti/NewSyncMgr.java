// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelmulti;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.ConfigStorage;

// Referenced classes of package com.tencent.mm.modelmulti:
//            NetSceneSync

public class NewSyncMgr
{

    public NewSyncMgr()
    {
    }

    public static void a(long l, int i)
    {
        Log.c("MicroMsg.NewSyncMgr", (new StringBuilder()).append("dealWithSelector, selector = ").append(l).toString());
        long l1 = 95L & l;
        if(l1 != 0L)
        {
            MMCore.f().f().a(8196, Long.valueOf(l1));
            MMCore.g().b(new NetSceneSync(i));
        }
    }
}
