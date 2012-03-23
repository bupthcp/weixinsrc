// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import com.tencent.mm.algorithm.CnToSpell;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.protocal.protobuf.*;
import com.tencent.mm.storage.*;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.LinkedList;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelfriend:
//            FacebookFriendStorage, AddrUploadStorage, FacebookFriend, FriendExt, 
//            FriendExtStorage, AddrUpload

public class NetSceneGetMFriend extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetMFriend()
    {
        c = null;
        d = null;
        d = new CnToSpell();
        com.tencent.mm.protocal.MMGetMFriend.Req req = (com.tencent.mm.protocal.MMGetMFriend.Req)a.f();
        req.a.a("");
        req.a.a(0);
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        return a(idispatcher, a, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        if(j != 4 || k != -68) goto _L2; else goto _L1
_L1:
        c.a(j, k, ((com.tencent.mm.protocal.MMGetMFriend.Resp)ireqresp.b()).a.c().d().c(), this);
_L11:
        return;
_L2:
        com.tencent.mm.protocal.MMGetMFriend.Resp resp;
        com.tencent.mm.protocal.MMGetMFriend.Req req;
        int l;
        int i1;
        if(j != 0 || k != 0)
        {
            Log.a("MicroMsg.NetSceneGetMFriend", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).toString());
            c.a(j, k, s, this);
            continue; /* Loop/switch isn't completed */
        }
        Log.d("MicroMsg.NetSceneGetMFriend", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).toString());
        resp = (com.tencent.mm.protocal.MMGetMFriend.Resp)ireqresp.b();
        req = (com.tencent.mm.protocal.MMGetMFriend.Req)ireqresp.f();
        String s1 = Util.h((String)MMCore.f().f().a(0x10124));
        if(req.a.c() == 1 && !Util.i(resp.a.e()) && !resp.a.e().equals(s1))
        {
            MMCore.f().f().a(0x10124, resp.a.e());
            MMCore.f().x().b();
        }
        if(resp.a.d() == null)
            Log.a("MicroMsg.NetSceneGetMFriend", "onGYNetEnd  friendlist null");
        l = MMCore.f().e().b();
        i1 = 0;
_L4:
        MFriend mfriend;
        if(i1 >= resp.a.d().size())
            break MISSING_BLOCK_LABEL_1099;
        mfriend = (MFriend)resp.a.d().get(i1);
        if(mfriend != null)
            break; /* Loop/switch isn't completed */
        Log.a("MicroMsg.NetSceneGetMFriend", "Err getFriendList null");
_L5:
        i1++;
        if(true) goto _L4; else goto _L3
_L3:
        AddrUpload addrupload;
label0:
        {
            addrupload = MMCore.f().t().d(mfriend.e());
            if(addrupload != null || req.a.c() == 1)
                break label0;
            Log.a("MicroMsg.NetSceneGetMFriend", "Err MD5 not found is AddrUploadStg");
        }
          goto _L5
        FacebookFriend facebookfriend = new FacebookFriend();
        if(req.a.c() != 1) goto _L7; else goto _L6
_L6:
label1:
        {
            if(mfriend.l() != null)
                break label1;
            Log.a("MicroMsg.NetSceneGetMFriend", "ERR: facebook friend return null info");
        }
          goto _L5
        facebookfriend.a(mfriend.l().c());
        facebookfriend.a(mfriend.l().e());
        AvatarLogic.a((new StringBuilder()).append("").append(mfriend.l().c()).toString());
        facebookfriend.a(mfriend.l().d());
        facebookfriend.i(mfriend.k());
        facebookfriend.g(mfriend.h());
        facebookfriend.f(mfriend.g());
        facebookfriend.h(mfriend.i());
        facebookfriend.d(mfriend.j());
        facebookfriend.c(mfriend.f());
        facebookfriend.c(mfriend.d());
        facebookfriend.d(d.b(mfriend.d()));
        facebookfriend.e(d.a(mfriend.d()));
        facebookfriend.b(mfriend.c());
_L9:
        FriendExt friendext = new FriendExt();
        friendext.a(mfriend.c());
        friendext.b(mfriend.g());
        friendext.c(mfriend.h());
        friendext.d(mfriend.i());
        friendext.a(mfriend.f());
        friendext.b(mfriend.j());
        Contact contact = null;
        if(!Util.i(mfriend.c()))
        {
            contact = MMCore.f().h().c(mfriend.c());
            if(contact != null && mfriend.c().equals(contact.s()) && !Util.i(mfriend.k()) && !mfriend.k().equals(contact.y()))
            {
                contact.f(mfriend.k());
                contact.a(256L);
                MMCore.f().h().a(contact.s(), contact);
            } else
            {
                contact = null;
            }
        }
        if(Util.i(mfriend.c()))
        {
            boolean flag;
            if(req.a.c() == 1)
                flag = true;
            else
                flag = false;
            Assert.assertTrue("mobile friend never go here", flag);
            facebookfriend.b(102);
        } else
        if(contact == null || !contact.l())
        {
            facebookfriend.b(100);
            if(addrupload != null)
            {
                addrupload.c(1);
                addrupload.g(mfriend.c());
                addrupload.h(mfriend.d());
                addrupload.i(d.b(mfriend.d()));
                addrupload.j(d.a(mfriend.d()));
                addrupload.a(18304);
                MMCore.f().t().a(addrupload.b(), addrupload);
            }
        } else
        {
            facebookfriend.b(101);
            if(addrupload != null)
            {
                addrupload.c(2);
                addrupload.g(mfriend.c());
                addrupload.h(mfriend.d());
                addrupload.i(contact.w());
                addrupload.j(contact.x());
                addrupload.a(18304);
                MMCore.f().t().a(addrupload.b(), addrupload);
            }
        }
        if(req.a.c() == 1)
            MMCore.f().x().a(facebookfriend);
        MMCore.f().E().a(friendext);
          goto _L5
_L7:
        if(!Util.i(mfriend.c())) goto _L9; else goto _L8
_L8:
        Log.b("MicroMsg.NetSceneGetMFriend", "username null for mobile");
          goto _L5
        MMCore.f().e().b(l);
        MMCore.f().e().a(l);
        c.a(j, k, s, this);
        if(true) goto _L11; else goto _L10
_L10:
    }

    public final int b()
    {
        return 32;
    }

    public final void g()
    {
        com.tencent.mm.protocal.MMGetMFriend.Req req = (com.tencent.mm.protocal.MMGetMFriend.Req)a.f();
        req.a.a((String)MMCore.f().f().a(0x10124));
        req.a.a(1);
    }

    private final IReqResp a = new MMReqRespGetMFriend();
    private IOnSceneEnd c;
    private CnToSpell d;

    private class MMReqRespGetMFriend extends MMReqRespBase
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
            return 32;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/getmfriend";
        }

        private final com.tencent.mm.protocal.MMGetMFriend.Req a = new com.tencent.mm.protocal.MMGetMFriend.Req();
        private final com.tencent.mm.protocal.MMGetMFriend.Resp b = new com.tencent.mm.protocal.MMGetMFriend.Resp();

        public MMReqRespGetMFriend()
        {
        }
    }

}
