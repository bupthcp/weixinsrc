// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.ConfigStorage;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelfriend:
//            FriendLogic

public class NetSceneUploadMContact extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneUploadMContact(List list, List list1)
    {
        g = 0;
        f = 0;
        c = list;
        d = list1;
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        MMReqRespUploadMContact mmreqrespuploadmcontact = new MMReqRespUploadMContact();
        com.tencent.mm.protocal.MMUploadMContact.Req req = (com.tencent.mm.protocal.MMUploadMContact.Req)mmreqrespuploadmcontact.f();
        req.b(e);
        req.a(ConfigStorageLogic.b());
        int i = 200;
        LinkedList linkedlist = new LinkedList();
        LinkedList linkedlist1 = new LinkedList();
        do
        {
            if(i <= 0)
                break;
            if(c != null && f < c.size())
            {
                if(c.get(f) != null)
                    linkedlist.add(c.get(f));
                f = 1 + f;
                i--;
            }
            if(d != null && g < d.size())
            {
                if(d.get(g) != null)
                    linkedlist1.add(d.get(g));
                g = 1 + g;
                i--;
            }
        } while(d != null && g < d.size() || c != null && f < c.size());
        req.a(linkedlist);
        req.b(linkedlist1);
        Log.e("MicroMsg.NetSceneUploadMContact", (new StringBuilder()).append("doscene in:[").append(d.size()).append(",").append(c.size()).append("] index:[").append(g).append(",").append(f).append("] req:[").append(req.f().size()).append(",").append(req.e().size()).append("]").toString());
        return a(idispatcher, ((IReqResp) (mmreqrespuploadmcontact)), ((IOnGYNetEnd) (this)));
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMUploadMContact.Req req = (com.tencent.mm.protocal.MMUploadMContact.Req)ireqresp.f();
        int i = req.f().size() + req.e().size();
        com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus securitycheckstatus;
        if(i == 0 || i > 200)
        {
            Log.a("MicroMsg.NetSceneUploadMContact", "security checked failed : exceed max send count");
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        } else
        if(req.d() == null || req.d().length() <= 0)
        {
            Log.a("MicroMsg.NetSceneUploadMContact", "security checked failed : moblie null");
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        } else
        if(req.b() == null || req.b().length() <= 0)
        {
            Log.a("MicroMsg.NetSceneUploadMContact", "security checked failed : username null");
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        } else
        {
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        }
        return securitycheckstatus;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetSceneUploadMContact", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).toString());
        a.a(j, k, s, this);
_L4:
        return;
_L2:
        com.tencent.mm.protocal.MMUploadMContact.Req req = (com.tencent.mm.protocal.MMUploadMContact.Req)ireqresp.f();
        Log.e("MicroMsg.NetSceneUploadMContact", (new StringBuilder()).append("onGYNetEnd in:[").append(d.size()).append(",").append(c.size()).append("] index:[").append(g).append(",").append(f).append("] req:[").append(req.f().size()).append(",").append(req.e().size()).append("]").toString());
        FriendLogic.b(req.f());
        FriendLogic.b(req.e());
        if((d == null || g >= d.size()) && (c == null || f >= c.size()))
            a.a(j, k, s, this);
        else
        if(a(m(), a) < 0)
            a.a(j, k, s, this);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        return 29;
    }

    protected final int c()
    {
        return 10;
    }

    private IOnSceneEnd a;
    private final List c;
    private final List d;
    private final String e = (String)MMCore.f().f().a(6);
    private int f;
    private int g;

    private class MMReqRespUploadMContact extends MMReqRespBase
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
            return 29;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/uploadmcontact";
        }

        private final com.tencent.mm.protocal.MMUploadMContact.Req a = new com.tencent.mm.protocal.MMUploadMContact.Req();
        private final com.tencent.mm.protocal.MMUploadMContact.Resp b = new com.tencent.mm.protocal.MMUploadMContact.Resp();

        public MMReqRespUploadMContact()
        {
        }
    }

}
