// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelmulti;

import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.modelqmsg.QContact;
import com.tencent.mm.modelqmsg.QContactStorage;
import com.tencent.mm.modeltmsg.TContact;
import com.tencent.mm.modeltmsg.TContactStorage;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.storage.ContactStorage;
import java.util.*;
import junit.framework.Assert;

public class NetSceneBatchGetContactProfile extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneBatchGetContactProfile(Set set)
    {
        boolean flag;
        if(set != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        a = set;
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        LinkedList linkedlist = new LinkedList();
        for(Iterator iterator = a.iterator(); iterator.hasNext(); linkedlist.add((String)iterator.next()));
        int i;
        if(linkedlist.size() == 0)
        {
            Log.a("MicroMsg.NetSceneBatchGetContactProfile", (new StringBuilder()).append(CodeInfo.a()).append("doScene reqSize ==0").toString());
            i = -1;
        } else
        {
            MMReqRespBatchGetContactProfile mmreqrespbatchgetcontactprofile = new MMReqRespBatchGetContactProfile();
            ((com.tencent.mm.protocal.MMBatchGetContactProfile.Req)mmreqrespbatchgetcontactprofile.f()).a(linkedlist);
            ((com.tencent.mm.protocal.MMBatchGetContactProfile.Req)mmreqrespbatchgetcontactprofile.f()).a(1);
            i = a(idispatcher, ((IReqResp) (mmreqrespbatchgetcontactprofile)), ((IOnGYNetEnd) (this)));
        }
        return i;
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        boolean flag = false;
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        c.a(j, k, s, this);
_L4:
        return;
_L2:
        com.tencent.mm.protocal.MMBatchGetContactProfile.Resp resp;
        b(i);
        resp = (com.tencent.mm.protocal.MMBatchGetContactProfile.Resp)ireqresp.b();
        if(resp != null)
            break; /* Loop/switch isn't completed */
        Log.a("MicroMsg.NetSceneBatchGetContactProfile", "dealResp: resp is null");
_L5:
        if(flag && a.size() > 0)
            a(m(), c);
        Log.d("MicroMsg.NetSceneBatchGetContactProfile", (new StringBuilder()).append("left cnt = ").append(a.size()).toString());
        c.a(j, k, s, this);
        if(true) goto _L4; else goto _L3
_L3:
label0:
        {
            if(resp.b_() != 1)
                break label0;
            Log.a("MicroMsg.NetSceneBatchGetContactProfile", "dealResp : endless loop, should stop");
        }
          goto _L5
        if(resp.b_() != -1) goto _L7; else goto _L6
_L6:
        Log.a("MicroMsg.NetSceneBatchGetContactProfile", "dealResp : server err, can try again");
_L10:
        flag = true;
          goto _L5
_L7:
        List list = resp.a();
        if(list == null) goto _L5; else goto _L8
_L8:
        int l = ((flag) ? 1 : 0);
_L12:
        if(l >= list.size()) goto _L10; else goto _L9
_L9:
        com.tencent.mm.protocal.MMBatchGetContactProfile.ContactProfile contactprofile;
        boolean flag1;
        QContact qcontact;
        contactprofile = (com.tencent.mm.protocal.MMBatchGetContactProfile.ContactProfile)list.get(l);
        if(contactprofile == null || contactprofile.b() == null)
        {
            Log.a("MicroMsg.NetSceneBatchGetContactProfile", "processContactProfile: profile name is null");
            flag1 = flag;
        } else
        if(!a.contains(contactprofile.b()))
        {
            Log.a("MicroMsg.NetSceneBatchGetContactProfile", "processContactProfile: resp data not in req");
            flag1 = flag;
        } else
        {
            a.remove(contactprofile.b());
            Contact contact = MMCore.f().h().c(contactprofile.b());
            if(contact == null || contact.o() == 0)
            {
                Log.a("MicroMsg.NetSceneBatchGetContactProfile", "processContactProfile: did not find this contact");
                flag1 = flag;
            } else
            {
label1:
                {
                    contact.a(contactprofile.b());
                    contact.f(contactprofile.a());
                    contact.d(contactprofile.h() & contactprofile.i());
                    contact.b(contactprofile.c());
                    contact.d(contactprofile.d());
                    contact.e(contactprofile.e());
                    contact.c(contactprofile.f());
                    contact.k(contactprofile.j());
                    contact.m(contactprofile.m());
                    contact.l(contactprofile.l());
                    contact.g(contactprofile.n());
                    contact.n(contactprofile.p());
                    contact.h(contactprofile.q());
                    if(MMCore.f().h().a(contact.s(), contact) == -1)
                        Log.a("MicroMsg.NetSceneBatchGetContactProfile", "processContactProfile:update contact failed");
                    if(!ContactStorageLogic.r(contactprofile.b()))
                        break MISSING_BLOCK_LABEL_632;
                    qcontact = MMCore.f().D().a(contactprofile.b());
                    if(qcontact != null && Util.h(qcontact.b()).length() > 0)
                        break label1;
                    Log.a("MicroMsg.NetSceneBatchGetContactProfile", "processContactProfile: did not find qcontact");
                    flag1 = flag;
                }
            }
        }
_L13:
        if(!flag1) goto _L5; else goto _L11
_L11:
        l++;
          goto _L12
        qcontact.b(contactprofile.s());
        qcontact.b(contactprofile.t());
        qcontact.c(contactprofile.u());
        qcontact.a(52);
        if(!MMCore.f().D().a(contactprofile.b(), qcontact))
            Log.a("MicroMsg.NetSceneBatchGetContactProfile", "processContactProfile:update qcontact failed");
        TContact tcontact;
label2:
        {
            if(!ContactStorageLogic.p(contactprofile.b()))
                break MISSING_BLOCK_LABEL_747;
            tcontact = MMCore.f().F().a(contactprofile.b());
            if(tcontact != null && Util.h(tcontact.b()).length() > 0)
                break label2;
            Log.a("MicroMsg.NetSceneBatchGetContactProfile", "processContactProfile: did not find tcontact");
            flag1 = flag;
        }
          goto _L13
        tcontact.a(contactprofile.t());
        tcontact.b(contactprofile.u());
        tcontact.a(6);
        if(!MMCore.f().F().a(contactprofile.b(), tcontact))
            Log.a("MicroMsg.NetSceneBatchGetContactProfile", "processContactProfile: update tcontact failed");
        flag1 = true;
          goto _L13
    }

    public final int b()
    {
        return 42;
    }

    protected final int c()
    {
        return 50;
    }

    private Set a;
    private IOnSceneEnd c;

    private class MMReqRespBatchGetContactProfile extends MMReqRespBase
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
            return 42;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/batchgetcontactprofile";
        }

        private final com.tencent.mm.protocal.MMBatchGetContactProfile.Req a = new com.tencent.mm.protocal.MMBatchGetContactProfile.Req();
        private final com.tencent.mm.protocal.MMBatchGetContactProfile.Resp b = new com.tencent.mm.protocal.MMBatchGetContactProfile.Resp();

        public MMReqRespBatchGetContactProfile()
        {
        }
    }

}
