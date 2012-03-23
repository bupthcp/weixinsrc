// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelmulti;

import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.SmileyUtil;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;
import java.util.*;
import junit.framework.Assert;

public class NetSceneSendMsg extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneSendMsg(String s)
    {
        e = new LinkedList();
        Log.c("MicroMsg.NetSceneSendMsg", "empty msg sender created");
        f = s;
    }

    public NetSceneSendMsg(String s, String s1, String s2, int i, int j)
    {
        boolean flag = true;
        super();
        e = new LinkedList();
        MsgInfo msginfo = new MsgInfo();
        msginfo.d(flag);
        msginfo.a(s1);
        msginfo.b(MsgInfoStorageLogic.c(s1));
        msginfo.e(flag);
        msginfo.b(s2);
        msginfo.c(i);
        long l = MMCore.f().i().a(msginfo);
        if(l == -1L)
            flag = false;
        Assert.assertTrue(flag);
        Log.c("MicroMsg.NetSceneSendMsg", (new StringBuilder()).append("new msg inserted to db , local id = ").append(l).toString());
        if((j & 4) != 0)
            g.add(Long.valueOf(l));
        f = s;
    }

    private void a(int i)
    {
        MsgInfo msginfo = (MsgInfo)e.get(i);
        msginfo.a(8);
        msginfo.d(5);
        MMCore.f().i().a(msginfo.b(), msginfo);
        for(Iterator iterator = d.iterator(); iterator.hasNext(); ((IOnSendMsgFailNotify)iterator.next()).b(msginfo.h()));
    }

    public static void a(IOnSendMsgFailNotify ionsendmsgfailnotify)
    {
        if(!d.contains(ionsendmsgfailnotify))
            d.add(ionsendmsgfailnotify);
    }

    public static void b(IOnSendMsgFailNotify ionsendmsgfailnotify)
    {
        d.remove(ionsendmsgfailnotify);
    }

    private void g()
    {
        for(int i = 0; i < e.size(); i++)
            a(i);

    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        com.tencent.mm.protocal.MMSendMsg.Req req;
        List list;
        a = ionsceneend;
        c = new MMReqRespSendMsg();
        req = (com.tencent.mm.protocal.MMSendMsg.Req)c.f();
        list = MMCore.f().i().a();
        if(list != null && list.size() != 0) goto _L2; else goto _L1
_L1:
        int i;
        Log.c("MicroMsg.NetSceneSendMsg", "no sending message");
        i = -2;
_L4:
        return i;
_L2:
        if(h.size() > 10)
        {
            int l = -1 + h.size();
            List list1 = h;
            int j;
            MsgInfo msginfo;
            com.tencent.mm.protocal.MMSendMsg.Req.ReqCmd reqcmd;
            int i1;
            if(l > 10)
                i1 = l + -10;
            else
                i1 = 0;
            h = list1.subList(i1, l);
        }
        h.add(new SceneInfo(4));
        Log.e("MicroMsg.NetSceneSendMsg", (new StringBuilder()).append("sceneInfo.size=").append(h.size()).toString());
        e.clear();
        j = 0;
        while(j < list.size()) 
        {
            msginfo = (MsgInfo)list.get(j);
            if(msginfo.f() == 1)
            {
                reqcmd = new com.tencent.mm.protocal.MMSendMsg.Req.ReqCmd();
                reqcmd.a(f);
                reqcmd.b(msginfo.h());
                reqcmd.a(msginfo.g() / 1000L);
                reqcmd.a(msginfo.d());
                reqcmd.c(msginfo.i());
                reqcmd.d((new StringBuilder()).append(msginfo.h()).append(msginfo.b()).append(System.currentTimeMillis()).toString());
                String s = msginfo.i();
                int k;
                if(g.contains(Long.valueOf(msginfo.b())))
                    k = 4;
                else
                    k = 0;
                if(s == null || s.length() <= 0)
                {
                    k = 0;
                } else
                {
                    if(SmileyUtil.a(s))
                        k |= 2;
                    if(SmileyUtil.b(s))
                        k |= 1;
                }
                reqcmd.b(k);
                req.b().add(reqcmd);
                e.add(msginfo);
            }
            j++;
        }
        i = a(idispatcher, c, ((IOnGYNetEnd) (this)));
        if(i < 0)
            g();
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus securitycheckstatus;
        if(e.size() > 0)
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        else
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        return securitycheckstatus;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        g();
        MMCore.f().W().a("sendmsg", (new StringBuilder()).append("").append(j).append("-").append(k).toString());
_L4:
        int l = a(m(), a);
        List list;
        int i1;
        com.tencent.mm.protocal.MMSendMsg.Resp.RespCmd respcmd;
        long l1;
        MsgInfo msginfo;
        if(l == -2)
            a.a(0, 0, s, this);
        else
        if(l < 0)
            a.a(3, -1, s, this);
_L5:
        return;
_L2:
        list = ((com.tencent.mm.protocal.MMSendMsg.Resp)ireqresp.b()).b();
        if(e.size() != list.size()) goto _L4; else goto _L3
_L3:
        i1 = 0;
_L6:
label0:
        {
            if(i1 >= list.size())
                break MISSING_BLOCK_LABEL_355;
            respcmd = (com.tencent.mm.protocal.MMSendMsg.Resp.RespCmd)list.get(i1);
            if(respcmd.a() == 0)
                break label0;
            Log.a("MicroMsg.NetSceneSendMsg", (new StringBuilder()).append("send msg failed: item ret code=").append(respcmd.a()).toString());
            a(i1);
            a.a(4, respcmd.a(), s, this);
        }
          goto _L5
        l1 = ((MsgInfo)e.get(i1)).b();
        Log.c("MicroMsg.NetSceneSendMsg", (new StringBuilder()).append("msg local id = ").append(l1).append(", SvrId = ").append(respcmd.b()).append(" sent successfully!").toString());
        msginfo = MMCore.f().i().a(l1);
        msginfo.a(74);
        msginfo.b(respcmd.b());
        msginfo.d(2);
        msginfo.b(MsgInfoStorageLogic.a(msginfo.h(), respcmd.g()));
        MMCore.f().i().a(l1, msginfo);
        i1++;
          goto _L6
        Log.c("MicroMsg.NetSceneSendMsg", (new StringBuilder()).append("total ").append(i1).append(" msgs sent successfully").toString());
        b(i);
          goto _L4
    }

    public final int b()
    {
        return 4;
    }

    protected final int c()
    {
        return 10;
    }

    public final List k_()
    {
        return h;
    }

    private static final List d = new ArrayList();
    private static final Set g = new HashSet();
    private static List h = new LinkedList();
    private IOnSceneEnd a;
    private IReqResp c;
    private final List e;
    private final String f;


    private class MMReqRespSendMsg extends MMReqRespBase
    {

        public final volatile com.tencent.mm.protocal.MMBase.Req a()
        {
            return a;
        }

        public final com.tencent.mm.protocal.MMBase.Resp b()
        {
            return b;
        }

        public final int c()
        {
            return 4;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/sendmsg";
        }

        private final com.tencent.mm.protocal.MMSendMsg.Req a = new com.tencent.mm.protocal.MMSendMsg.Req();
        private final com.tencent.mm.protocal.MMSendMsg.Resp b = new com.tencent.mm.protocal.MMSendMsg.Resp();

        public MMReqRespSendMsg()
        {
        }
    }

}
