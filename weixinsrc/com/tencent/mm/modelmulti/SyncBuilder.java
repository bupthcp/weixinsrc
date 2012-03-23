// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelmulti;

import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.OpLogStorage;
import java.util.*;

final class SyncBuilder
{

    private SyncBuilder()
    {
    }

    public static com.tencent.mm.protocal.MMSync.CmdItem a(com.tencent.mm.storage.OpLogStorage.OpKvStat opkvstat)
    {
        com.tencent.mm.protocal.MMSync.CmdKvStat cmdkvstat = new com.tencent.mm.protocal.MMSync.CmdKvStat();
        ArrayList arraylist = new ArrayList();
        com.tencent.mm.protocal.MMSync.CmdKvStat.CmdKvStatItem cmdkvstatitem;
        for(Iterator iterator = opkvstat.b().iterator(); iterator.hasNext(); arraylist.add(cmdkvstatitem))
        {
            com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem opkvstatitem = (com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem)iterator.next();
            cmdkvstatitem = new com.tencent.mm.protocal.MMSync.CmdKvStat.CmdKvStatItem();
            cmdkvstatitem.a(opkvstatitem.a());
            cmdkvstatitem.a(opkvstatitem.b());
            Log.d("MicroMsg.SyncBuilder", (new StringBuilder()).append("add kv stat: key=").append(opkvstatitem.a()).append(", value=").append(opkvstatitem.b()).toString());
        }

        cmdkvstat.b(arraylist.size());
        cmdkvstat.a(arraylist);
        return cmdkvstat;
    }

    public static void a()
    {
        ErrLog errlog = MMCore.f().W();
        if(errlog != null)
        {
            String s;
            for(int i = 1024; errlog.a() && i > 0; i -= s.length())
            {
                com.tencent.mm.model.ErrLog.Error error = errlog.c();
                s = error.toString();
                Log.c("MicroMsg.SyncBuilder", s);
                MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpReport(error.a, error.b, error.c));
            }

        }
    }
}
