// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelpmsg;

import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import java.io.IOException;
import java.io.RandomAccessFile;

// Referenced classes of package com.tencent.mm.modelpmsg:
//            PushMessage

public class NetSceneGetPSMImg extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetPSMImg(String s)
    {
        c = s;
        f = 0;
        g = 0;
        d = null;
        e = null;
    }

    private boolean a(String s, byte abyte0[], int i)
    {
        boolean flag = false;
        if(i != 0) goto _L2; else goto _L1
_L1:
        if(e == null && d == null) goto _L4; else goto _L3
_L3:
        Log.a("MicroMsg.NetSceneGetPSMImg", "writeFile param error");
_L6:
        return flag;
_L4:
        d = PushMessage.a(s);
        if(d == null)
        {
            Log.a("MicroMsg.NetSceneGetPSMImg", (new StringBuilder()).append("writeFile getPath From url failed:[").append(s).append("]").toString());
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            e = new RandomAccessFile(d, "rw");
        }
        catch(Exception exception)
        {
            Log.a("MicroMsg.NetSceneGetPSMImg", (new StringBuilder()).append("writeFile open file error [").append(d).append("] e:").append(exception.getMessage()).toString());
            continue; /* Loop/switch isn't completed */
        }
_L2:
        e.seek(i);
        e.write(abyte0, 0, abyte0.length);
        flag = true;
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        Log.a("MicroMsg.NetSceneGetPSMImg", (new StringBuilder()).append("writeFile write file error [").append(d).append("]  e:").append(ioexception.getMessage()).toString());
        if(true) goto _L6; else goto _L5
_L5:
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        MMReqRespGetPSMImg mmreqrespgetpsmimg = new MMReqRespGetPSMImg();
        com.tencent.mm.protocal.MMGetPSMImg.Req req = (com.tencent.mm.protocal.MMGetPSMImg.Req)mmreqrespgetpsmimg.f();
        req.a(c);
        req.a(f);
        Log.e("MicroMsg.NetSceneGetPSMImg", (new StringBuilder()).append("doscene url:[").append(c).append("] + offset:").append(f).append(" totallen:").append(g).toString());
        return a(idispatcher, ((IReqResp) (mmreqrespgetpsmimg)), ((IOnGYNetEnd) (this)));
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus securitycheckstatus;
        String s = ((com.tencent.mm.protocal.MMGetPSMImg.Req)ireqresp.f()).b();
        boolean flag;
        if(s == null)
            flag = false;
        else
        if(s.indexOf("weixin://") != 0)
            flag = false;
        else
            flag = true;
        if(flag) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetSceneGetPSMImg", (new StringBuilder()).append("security checked failed : url invalid:").append(c).toString());
        securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
_L4:
        return securitycheckstatus;
_L2:
        if(f < 0 || g < 0)
        {
            Log.a("MicroMsg.NetSceneGetPSMImg", (new StringBuilder()).append("security checked failed : offset:").append(f).append(" total:").append(g).toString());
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
            continue; /* Loop/switch isn't completed */
        }
        if(f == 0)
        {
            if(g != 0)
            {
                Log.a("MicroMsg.NetSceneGetPSMImg", (new StringBuilder()).append("security checked failed : offset:").append(f).append(" total:").append(g).toString());
                securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
                continue; /* Loop/switch isn't completed */
            }
        } else
        if(f >= g)
        {
            Log.a("MicroMsg.NetSceneGetPSMImg", (new StringBuilder()).append("security checked failed : offset:").append(f).append(" total:").append(g).toString());
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
            continue; /* Loop/switch isn't completed */
        }
        securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        if(j == 0 && k == 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetSceneGetPSMImg", (new StringBuilder()).append("onGYNetEnd  errType:").append(j).append(" errCode:").append(k).toString());
        a.a(j, k, s, this);
_L4:
        return;
_L2:
        com.tencent.mm.protocal.MMGetPSMImg.Resp resp = (com.tencent.mm.protocal.MMGetPSMImg.Resp)ireqresp.b();
        Log.d("MicroMsg.NetSceneGetPSMImg", (new StringBuilder()).append("onGYNetEnd url:[").append(c).append("] + offset:").append(f).append(" Resp[ totallen:").append(resp.d()).append(" bufSize:").append(resp.b().length).append(" ]").toString());
        if(resp.d() > 0)
            g = resp.d();
        if(!a(c, resp.b(), f))
        {
            a.a(3, -1, s, this);
        } else
        {
            f = f + resp.b().length;
            if(g <= f)
            {
                Log.d("MicroMsg.NetSceneGetPSMImg", (new StringBuilder()).append("down url:[").append(c).append("] final size: ").append(g).toString());
                a.a(j, k, s, this);
            } else
            if(a(m(), a) < 0)
                a.a(j, k, s, this);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        return 35;
    }

    protected final int c()
    {
        return 10;
    }

    public final String f()
    {
        return c;
    }

    private IOnSceneEnd a;
    private String c;
    private String d;
    private RandomAccessFile e;
    private int f;
    private int g;

    private class MMReqRespGetPSMImg extends MMReqRespBase
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
            return 35;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/getpsmimg";
        }

        private final com.tencent.mm.protocal.MMGetPSMImg.Req a = new com.tencent.mm.protocal.MMGetPSMImg.Req();
        private final com.tencent.mm.protocal.MMGetPSMImg.Resp b = new com.tencent.mm.protocal.MMGetPSMImg.Resp();

        public MMReqRespGetPSMImg()
        {
        }
    }

}
