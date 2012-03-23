// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelgetcontact;

import com.tencent.mm.algorithm.LRUMap;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.platformtools.*;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelgetcontact:
//            GetContactInfoStorage, GetContactInfo, NetSceneGetContact

public class GetContactService
    implements IOnSceneEnd
{

    public GetContactService()
    {
        a = false;
        b = null;
        c = new LRUMap(200);
        d = 50;
        e = new MTimerHandler(new _cls1(), false);
        f = 10000;
        g = new MTimerHandler(new _cls2(), false);
        h = 0L;
        MMCore.g().a(66, this);
        a = false;
    }

    static void a(GetContactService getcontactservice)
    {
        long l;
        l = Util.c();
        if(getcontactservice.a && l - getcontactservice.h > 600L)
            getcontactservice.a = false;
        if(getcontactservice.a) goto _L2; else goto _L1
_L1:
        List list = MMCore.f().z().a();
        if(list != null && list.size() != 0) goto _L3; else goto _L2
_L2:
        return;
_L3:
        ArrayList arraylist;
        int i;
        arraylist = new ArrayList();
        i = 0;
_L4:
        String s;
        if(i >= list.size())
            break MISSING_BLOCK_LABEL_244;
        s = ((GetContactInfo)list.get(i)).c();
        Integer integer = (Integer)getcontactservice.c.b(s);
        Log.d("MicroMsg.GetContactService", (new StringBuilder()).append("username:").append(s).append(" mapCnt:").append(integer).toString());
        if(integer == null)
        {
            getcontactservice.c.a(s, Integer.valueOf(1));
        } else
        {
label0:
            {
                if(integer.intValue() >= 3)
                    break label0;
                getcontactservice.c.a(s, Integer.valueOf(1 + integer.intValue()));
            }
        }
        arraylist.add(s);
_L5:
        i++;
          goto _L4
        Log.d("MicroMsg.GetContactService", (new StringBuilder()).append("LRUMap Max now :").append(s).toString());
          goto _L5
        Log.d("MicroMsg.GetContactService", (new StringBuilder()).append("tryStartNetscene req lst:").append(arraylist.size()).append(" running:").append(getcontactservice.a).toString());
        if(!getcontactservice.a && arraylist.size() > 0)
        {
            getcontactservice.h = l;
            getcontactservice.a = true;
            getcontactservice.b = new NetSceneGetContact(arraylist);
            MMCore.g().b(getcontactservice.b);
        }
        if(true) goto _L2; else goto _L6
_L6:
    }

    static boolean b(GetContactService getcontactservice)
    {
        getcontactservice.a = false;
        return false;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        if(netscenebase.b() == 66)
        {
            b = null;
            if(i != 0 || j != 0)
            {
                Log.d("MicroMsg.GetContactService", (new StringBuilder()).append("onGYNetEnd errType:").append(i).append(" errCode:").append(j).append(" will retry").toString());
                g.a(10000L);
            } else
            {
                com.tencent.mm.protocal.MMGetContact.Resp resp = ((NetSceneGetContact)netscenebase).d();
                Log.d("MicroMsg.GetContactService", (new StringBuilder()).append("onGYNetEnd succ:").append(resp.e().size()).append(" failed:").append(resp.b().size()).append(" errName:").append(resp.d().size()).toString());
                List list = resp.e();
                for(int k = 0; k < list.size(); k++)
                {
                    Log.d("MicroMsg.GetContactService", (new StringBuilder()).append("onSceneEnd mod contact: ").append(((com.tencent.mm.protocal.MMSync.CmdModContact)list.get(k)).p()).toString());
                    com.tencent.mm.modelmulti.NetSceneSync.SyncDoCmd.a((com.tencent.mm.protocal.MMSync.CmdModContact)list.get(k));
                    MMCore.f().z().a(((com.tencent.mm.protocal.MMSync.CmdModContact)list.get(k)).p());
                }

                for(int l = 0; l < resp.d().size(); l++)
                {
                    Log.d("MicroMsg.GetContactService", (new StringBuilder()).append("onSceneEnd getFailed ErrName:").append((String)resp.d().get(l)).toString());
                    MMCore.f().z().a((String)resp.d().get(l));
                }

                a = false;
                e.a(50L);
            }
        }
    }

    public final void a(String s)
    {
        Log.d("MicroMsg.GetContactService", (new StringBuilder()).append("add Contact :").append(s).toString());
        if(!Util.i(s))
        {
            GetContactInfo getcontactinfo = new GetContactInfo();
            getcontactinfo.a(s);
            getcontactinfo.a(Util.c());
            MMCore.f().z().a(getcontactinfo);
            e.a(50L);
        }
    }

    protected void finalize()
    {
        MMCore.g().b(66, this);
        super.finalize();
    }

    private boolean a;
    private NetSceneGetContact b;
    private LRUMap c;
    private int d;
    private MTimerHandler e;
    private int f;
    private MTimerHandler g;
    private long h;

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            GetContactService.a(a);
            return false;
        }

        private GetContactService a;

        _cls1()
        {
            a = GetContactService.this;
            super();
        }
    }


    private class _cls2
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            GetContactService.b(a);
            GetContactService.a(a);
            return false;
        }

        private GetContactService a;

        _cls2()
        {
            a = GetContactService.this;
            super();
        }
    }

}
