// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import com.tencent.mm.algorithm.CnToSpell;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.*;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.storage.ContactStorage;
import java.util.*;

// Referenced classes of package com.tencent.mm.modelfriend:
//            QQGroupStorage, QQGroup, QQListStorage, FriendExt, 
//            QQList, FriendExtStorage

public class NetSceneGetQQGroup extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetQQGroup(int i, int j)
    {
        c = null;
        d = null;
        com.tencent.mm.protocal.MMGetQQGroup.Req req = (com.tencent.mm.protocal.MMGetQQGroup.Req)a.f();
        req.a(i);
        req.b(j);
        d = new CnToSpell();
    }

    private static void a(List list)
    {
        Map map = MMCore.f().s().a();
        int i = 0;
        while(i < list.size()) 
        {
            com.tencent.mm.protocal.MMGetQQGroup.Resp.QQGroup qqgroup1 = (com.tencent.mm.protocal.MMGetQQGroup.Resp.QQGroup)list.get(i);
            Log.d("MicroMsg.NetSceneGetQQGroup", (new StringBuilder()).append("id:").append(qqgroup1.a()).append(" name:").append(qqgroup1.d()).append(" mem:").append(qqgroup1.b()).append(" wei:").append(qqgroup1.c()).append(" md5:").append(qqgroup1.e()).toString());
            QQGroup qqgroup2;
            if(qqgroup1.a() < 0)
            {
                qqgroup2 = null;
            } else
            {
                qqgroup2 = new QQGroup();
                qqgroup2.b(qqgroup1.a());
                qqgroup2.b(qqgroup1.d());
                qqgroup2.c(qqgroup1.b());
                qqgroup2.d(qqgroup1.c());
                qqgroup2.a(qqgroup1.e());
            }
            if(qqgroup2 == null)
                Log.a("MicroMsg.NetSceneGetQQGroup", (new StringBuilder()).append("Error Resp Group Info index:").append(i).toString());
            else
            if(qqgroup2.c() != 0)
            {
                Iterator iterator;
                QQGroup qqgroup;
                boolean flag;
                boolean flag1;
                QQGroup qqgroup3;
                if(map != null)
                    qqgroup3 = (QQGroup)map.get(Integer.valueOf(qqgroup2.b()));
                else
                    qqgroup3 = null;
                if(qqgroup3 == null)
                {
                    qqgroup2.e((int)Util.c());
                    qqgroup2.f((int)Util.c());
                    qqgroup2.g(1);
                    boolean flag3 = MMCore.f().s().a(qqgroup2);
                    Log.d("MicroMsg.NetSceneGetQQGroup", (new StringBuilder()).append("Insert name:").append(qqgroup2.g()).append(" ret:").append(flag3).toString());
                } else
                {
                    qqgroup3.g(-1);
                    Log.d("MicroMsg.NetSceneGetQQGroup", (new StringBuilder()).append(qqgroup2.f()).append(" ").append(qqgroup3.f()).append(" ").append(qqgroup2.b()).toString());
                    if(!qqgroup3.f().equals(qqgroup2.f()))
                    {
                        qqgroup2.f((int)Util.c());
                        qqgroup2.g(1);
                        qqgroup2.a(-1);
                        boolean flag2 = MMCore.f().s().b(qqgroup2);
                        Log.d("MicroMsg.NetSceneGetQQGroup", (new StringBuilder()).append("Update name:").append(qqgroup2.g()).append(" ret:").append(flag2).toString());
                    }
                }
            }
            i++;
        }
        if(map != null)
        {
            iterator = map.keySet().iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                qqgroup = (QQGroup)map.get(iterator.next());
                if(qqgroup.e() == 0)
                {
                    flag = MMCore.f().s().b(qqgroup.b());
                    Log.d("MicroMsg.NetSceneGetQQGroup", (new StringBuilder()).append("delete name:").append(qqgroup.g()).append(" ret:").append(flag).toString());
                    flag1 = MMCore.f().q().a(qqgroup.b());
                    Log.d("MicroMsg.NetSceneGetQQGroup", (new StringBuilder()).append("delete QQList name:").append(qqgroup.g()).append(" ret:").append(flag1).toString());
                }
            } while(true);
        }
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        com.tencent.mm.protocal.MMGetQQGroup.Req req;
        c = ionsceneend;
        req = (com.tencent.mm.protocal.MMGetQQGroup.Req)a.f();
        if(req.b() != 1) goto _L2; else goto _L1
_L1:
        QQGroup qqgroup = MMCore.f().s().a(req.c());
        if(qqgroup != null && qqgroup.e() != 0) goto _L2; else goto _L3
_L3:
        int i;
        Log.a("MicroMsg.NetSceneGetQQGroup", "Err group not exist or group no need update.");
        i = -1;
_L5:
        return i;
_L2:
        i = a(idispatcher, a, ((IOnGYNetEnd) (this)));
        if(true) goto _L5; else goto _L4
_L4:
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetSceneGetQQGroup", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).toString());
        c.a(j, k, s, this);
_L4:
        return;
_L2:
        com.tencent.mm.protocal.MMGetQQGroup.Req req;
        com.tencent.mm.protocal.MMGetQQGroup.Resp resp;
        Log.d("MicroMsg.NetSceneGetQQGroup", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).toString());
        req = (com.tencent.mm.protocal.MMGetQQGroup.Req)ireqresp.f();
        resp = (com.tencent.mm.protocal.MMGetQQGroup.Resp)ireqresp.b();
        if(req.b() != 0)
            break; /* Loop/switch isn't completed */
        a(resp.b());
_L8:
        c.a(j, k, s, this);
        if(true) goto _L4; else goto _L3
_L3:
        ArrayList arraylist;
        ArrayList arraylist1;
        ArrayList arraylist2;
        int l;
        boolean flag = MMCore.f().q().a(req.c());
        Log.d("MicroMsg.NetSceneGetQQGroup", (new StringBuilder()).append("delete QQList id:").append(req.c()).append(" ret:").append(flag).toString());
        arraylist = new ArrayList();
        arraylist1 = new ArrayList();
        arraylist2 = new ArrayList();
        l = 0;
_L6:
        com.tencent.mm.protocal.MMGetQQGroup.Resp.QQFriend qqfriend;
        int i1;
        QQList qqlist1;
        if(l >= resp.c().size())
            break MISSING_BLOCK_LABEL_797;
        qqfriend = (com.tencent.mm.protocal.MMGetQQGroup.Resp.QQFriend)resp.c().get(l);
        i1 = req.c();
        Log.e("MicroMsg.NetSceneGetQQGroup", "friend");
        if(qqfriend.l() >= 0L)
            break; /* Loop/switch isn't completed */
        qqlist1 = null;
_L7:
        arraylist.add(qqlist1);
        com.tencent.mm.protocal.MMGetQQGroup.Resp.QQFriend qqfriend1 = (com.tencent.mm.protocal.MMGetQQGroup.Resp.QQFriend)resp.c().get(l);
        FriendExt friendext = new FriendExt();
        friendext.a(qqfriend1.b());
        friendext.b(qqfriend1.c());
        friendext.b(qqfriend1.f());
        friendext.c(qqfriend1.e());
        friendext.d(qqfriend1.d());
        friendext.a(qqfriend1.k());
        arraylist1.add(friendext);
        ImgFlag imgflag = new ImgFlag();
        imgflag.b(3);
        imgflag.a(true);
        imgflag.a(((com.tencent.mm.protocal.MMGetQQGroup.Resp.QQFriend)resp.c().get(l)).k());
        arraylist2.add(imgflag);
        l++;
        if(true) goto _L6; else goto _L5
_L5:
        QQList qqlist;
label0:
        {
            qqlist = new QQList();
            qqlist.a(qqfriend.l());
            AvatarLogic.a(qqlist.c(), 3);
            qqlist.b(i1);
            qqlist.a(qqfriend.g());
            if(qqfriend.g() == 0)
                break MISSING_BLOCK_LABEL_596;
            if(qqfriend.k() != null && !qqfriend.k().equals(""))
                break label0;
            qqlist1 = null;
        }
          goto _L7
        Contact contact = MMCore.f().h().c(qqfriend.k());
        if(contact != null && contact.s().equals(qqfriend.k()) && contact.l())
            qqlist.a(2);
        else
            qqlist.a(1);
        qqlist.a(qqfriend.k());
        qqlist.b(qqfriend.j());
        qqlist.h(qqfriend.h());
        qqlist.i(d.b(qqfriend.h()));
        qqlist.j(d.a(qqfriend.h()));
        qqlist.c(d.b(qqfriend.j()));
        qqlist.d(d.a(qqfriend.j()));
        qqlist.e(qqfriend.i());
        qqlist.f(d.b(qqfriend.i()));
        qqlist.g(d.a(qqfriend.i()));
        Log.e("MicroMsg.NetSceneGetQQGroup", (new StringBuilder()).append("QQ Friend nickname: ").append(qqlist.g()).append("  remark: ").append(qqlist.h()).toString());
        qqlist1 = qqlist;
          goto _L7
        QQListStorage qqliststorage = MMCore.f().q();
        req.c();
        qqliststorage.a(arraylist);
        MMCore.f().E().a(arraylist1);
        MMCore.f().B().a(arraylist2);
        QQGroup qqgroup = new QQGroup();
        qqgroup.b(req.c());
        qqgroup.g(0);
        qqgroup.f((int)Util.c());
        qqgroup.a(48);
        MMCore.f().s().b(qqgroup);
          goto _L8
    }

    public final int b()
    {
        return 31;
    }

    public final int f()
    {
        return ((com.tencent.mm.protocal.MMGetQQGroup.Req)a.f()).b();
    }

    private final IReqResp a = new MMReqRespGetQQGroup();
    private IOnSceneEnd c;
    private CnToSpell d;

    private class MMReqRespGetQQGroup extends MMReqRespBase
    {

        protected final com.tencent.mm.protocal.MMBase.Req a()
        {
            return a;
        }

        public final com.tencent.mm.protocal.MMBase.Resp b()
        {
            return b;
        }

        public final int c()
        {
            return 31;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/getqqgroup";
        }

        private final com.tencent.mm.protocal.MMGetQQGroup.Req a = new com.tencent.mm.protocal.MMGetQQGroup.Req();
        private final com.tencent.mm.protocal.MMGetQQGroup.Resp b = new com.tencent.mm.protocal.MMGetQQGroup.Resp();

        public MMReqRespGetQQGroup()
        {
        }
    }

}
