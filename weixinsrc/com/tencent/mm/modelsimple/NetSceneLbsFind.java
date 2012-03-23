// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelsimple;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.ImgFlag;
import com.tencent.mm.modelavatar.ImgFlagStorage;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.MTimerHandler;
import com.tencent.mm.storage.ConfigStorage;
import java.util.ArrayList;
import java.util.List;

public class NetSceneLbsFind extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneLbsFind(int i, float f1, float f2, int j, int k, String s, String s1)
    {
        h = new MTimerHandler(new _cls1(), false);
        if(i != 1 && i != 2)
            Log.a("MicroMsg.NetSceneLbs", (new StringBuilder()).append("OpCode Error :").append(i).toString());
        com.tencent.mm.protocal.MMLbsFind.Req req = (com.tencent.mm.protocal.MMLbsFind.Req)c.f();
        req.a(i);
        req.a(f1);
        req.b(f2);
        req.b(j);
        req.a(s);
        req.b(s1);
        req.c(k);
        Log.d("MicroMsg.NetSceneLbs", (new StringBuilder()).append("Req: opcode:").append(i).append(" lon:").append(f1).append(" lat:").append(f2).append(" pre:").append(j).append(" gpsSource:").append(k).append(" mac").append(s).append(" cell:").append(s1).toString());
    }

    static int a(NetSceneLbsFind netscenelbsfind)
    {
        return netscenelbsfind.f;
    }

    public static String a(List list)
    {
        String s = "";
        if(list == null || list.size() <= 0)
        {
            s = "";
        } else
        {
            int i = 0;
            while(i < list.size()) 
            {
                String s1;
                if(list.get(i) != null && ((MacInfo)list.get(i)).a.length() == d)
                {
                    String s2 = (new StringBuilder()).append(s).append("<mac ").toString();
                    String s3 = (new StringBuilder()).append(s2).append("macDbm=\"").append(((MacInfo)list.get(i)).b).append("\"").toString();
                    String s4 = (new StringBuilder()).append(s3).append(">").toString();
                    String s5 = (new StringBuilder()).append(s4).append(((MacInfo)list.get(i)).a).toString();
                    s1 = (new StringBuilder()).append(s5).append("</mac>").toString();
                } else
                {
                    s1 = s;
                }
                i++;
                s = s1;
            }
        }
        return s;
    }

    static int b(NetSceneLbsFind netscenelbsfind)
    {
        return netscenelbsfind.e;
    }

    public static String b(List list)
    {
        String s;
        if(list == null || list.size() <= 0)
        {
            s = "";
        } else
        {
            s = "";
            int i = 0;
            while(i < list.size()) 
            {
                String s1 = (new StringBuilder()).append(s).append("<cell ").toString();
                String s2 = (new StringBuilder()).append(s1).append("mcc=\"").append(((CellInfo)list.get(i)).a).append("\" ").toString();
                String s3 = (new StringBuilder()).append(s2).append("mnc=\"").append(((CellInfo)list.get(i)).b).append("\" ").toString();
                String s4 = (new StringBuilder()).append(s3).append("lac=\"").append(((CellInfo)list.get(i)).c).append("\" ").toString();
                String s5 = (new StringBuilder()).append(s4).append("type=\"").append(((CellInfo)list.get(i)).e).append("\" ").toString();
                String s6 = (new StringBuilder()).append(s5).append("stationId=\"").append(((CellInfo)list.get(i)).f).append("\" ").toString();
                String s7 = (new StringBuilder()).append(s6).append("networkId=\"").append(((CellInfo)list.get(i)).g).append("\" ").toString();
                String s8 = (new StringBuilder()).append(s7).append("systemId=\"").append(((CellInfo)list.get(i)).h).append("\" ").toString();
                String s9 = (new StringBuilder()).append(s8).append("dbm=\"").append(((CellInfo)list.get(i)).i).append("\" ").toString();
                String s10 = (new StringBuilder()).append(s9).append(" >").toString();
                String s11 = (new StringBuilder()).append(s10).append(((CellInfo)list.get(i)).d).toString();
                String s12 = (new StringBuilder()).append(s11).append("</cell>").toString();
                i++;
                s = s12;
            }
        }
        return s;
    }

    static String c(NetSceneLbsFind netscenelbsfind)
    {
        return netscenelbsfind.g;
    }

    static IOnSceneEnd d(NetSceneLbsFind netscenelbsfind)
    {
        return netscenelbsfind.a;
    }

    public static boolean g()
    {
        Long long1 = (Long)MMCore.f().f().a(8210);
        long l = System.currentTimeMillis();
        boolean flag;
        if(long1 == null)
            flag = true;
        else
        if(l > long1.longValue())
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        return a(idispatcher, c, ((IOnGYNetEnd) (this)));
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMLbsFind.Resp resp;
        b(i);
        Log.d("MicroMsg.NetSceneLbs", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).toString());
        resp = (com.tencent.mm.protocal.MMLbsFind.Resp)ireqresp.b();
        ArrayList arraylist = new ArrayList();
        for(int l = 0; l < resp.e().size(); l++)
        {
            ImgFlag imgflag = new ImgFlag();
            imgflag.a(((com.tencent.mm.protocal.MMLbsFind.Resp.LbsContactInfo)resp.e().get(l)).c());
            imgflag.b(((com.tencent.mm.protocal.MMLbsFind.Resp.LbsContactInfo)resp.e().get(l)).e());
            imgflag.a(true);
            arraylist.add(imgflag);
        }

        MMCore.f().B().b(arraylist);
        e = k;
        f = j;
        g = s;
        if(f() != 1) goto _L2; else goto _L1
_L1:
        if(j == 0 || k != -2001) goto _L4; else goto _L3
_L3:
        MMCore.f().f().a(8210, Long.valueOf(0L));
        a.a(j, k, s, this);
_L6:
        return;
_L4:
        MMCore.f().f().a(8210, Long.valueOf(System.currentTimeMillis() + (long)(1000 * resp.d())));
        h.a(1L);
_L2:
        if(f() == 2)
        {
            MMCore.f().f().a(8210, Long.valueOf(0L));
            a.a(j, k, s, this);
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public final int b()
    {
        return 43;
    }

    public final int f()
    {
        return ((com.tencent.mm.protocal.MMLbsFind.Req)c.f()).b();
    }

    public final List h()
    {
        return ((com.tencent.mm.protocal.MMLbsFind.Resp)c.b()).e();
    }

    private static final int d = "00-00-00-00-00-00".length();
    private IOnSceneEnd a;
    private final IReqResp c = new MMReqRespLbsFind();
    private int e;
    private int f;
    private String g;
    private MTimerHandler h;


    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            NetSceneLbsFind.d(a).a(NetSceneLbsFind.a(a), NetSceneLbsFind.b(a), NetSceneLbsFind.c(a), a);
            return false;
        }

        private NetSceneLbsFind a;

        _cls1()
        {
            a = NetSceneLbsFind.this;
            super();
        }
    }


    private class MMReqRespLbsFind extends MMReqRespBase
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
            return 43;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/lbsfind";
        }

        private final com.tencent.mm.protocal.MMLbsFind.Req a = new com.tencent.mm.protocal.MMLbsFind.Req();
        private final com.tencent.mm.protocal.MMLbsFind.Resp b = new com.tencent.mm.protocal.MMLbsFind.Resp();

        public MMReqRespLbsFind()
        {
        }
    }


    private class MacInfo
    {

        public String a;
        public String b;

        public MacInfo(String s, String s1)
        {
            a = s;
            b = s1;
        }
    }


    private class CellInfo
    {

        public String a;
        public String b;
        public String c;
        public String d;
        public String e;
        public String f;
        public String g;
        public String h;
        public String i;

        public CellInfo(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
                String s7, String s8)
        {
            a = s;
            b = s1;
            c = s2;
            e = s5;
            d = s3;
            f = s6;
            g = s7;
            h = s8;
            i = s4;
        }
    }

}
