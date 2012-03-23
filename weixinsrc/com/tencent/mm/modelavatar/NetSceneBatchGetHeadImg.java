// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelavatar;

import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.MTimerHandler;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.tencent.mm.modelavatar:
//            AvatarUserManager

public class NetSceneBatchGetHeadImg extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneBatchGetHeadImg()
    {
    }

    protected static void a(boolean flag)
    {
        Log.e("MicroMsg.NetSceneBatchGetHeadImg", (new StringBuilder()).append("set writting pause: ").append(flag).append(", handlerunning: ").append(d).toString());
        c = flag;
        if(d)
            if(c)
                e.a(50L);
            else
                e.a(100L);
    }

    static boolean g()
    {
        return c;
    }

    static boolean h()
    {
        d = false;
        return false;
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        a = ionsceneend;
        List list = AvatarUserManager.e();
        int i;
        if(list.size() == 0)
        {
            Log.a("MicroMsg.NetSceneBatchGetHeadImg", (new StringBuilder()).append(CodeInfo.a()).append("doScene ReqSize==0").toString());
            i = -1;
        } else
        {
            MMReqRespBatchGetHeadImg mmreqrespbatchgetheadimg = new MMReqRespBatchGetHeadImg();
            ((com.tencent.mm.protocal.MMBatchGetHeadImg.Req)mmreqrespbatchgetheadimg.f()).a(list);
            i = a(idispatcher, ((IReqResp) (mmreqrespbatchgetheadimg)), ((IOnGYNetEnd) (this)));
        }
        return i;
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        com.tencent.mm.protocal.MMBatchGetHeadImg.Resp resp;
        b(i);
        resp = (com.tencent.mm.protocal.MMBatchGetHeadImg.Resp)ireqresp.b();
        Log.d("MicroMsg.NetSceneBatchGetHeadImg", (new StringBuilder()).append("errType:").append(j).append(" errCode:").append(k).toString());
        if(j == 4 || k == 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetSceneBatchGetHeadImg", (new StringBuilder()).append("errType:").append(j).append(" errCode:").append(k).toString());
        a.a(j, k, s, this);
_L4:
        return;
_L2:
        if(j == 4 || j == 5)
        {
            String s1;
            for(Iterator iterator = ((com.tencent.mm.protocal.MMBatchGetHeadImg.Req)ireqresp.f()).c().iterator(); iterator.hasNext(); Log.a("MicroMsg.NetSceneBatchGetHeadImg", (new StringBuilder()).append("ErrType:").append(j).append(" GiveUp:").append(s1).toString()))
                s1 = (String)iterator.next();

        }
        Iterator iterator1 = resp.b().iterator();
        do
        {
            if(!iterator1.hasNext())
                break;
            com.tencent.mm.protocal.MMBatchGetHeadImg.Resp.ImgPair imgpair = (com.tencent.mm.protocal.MMBatchGetHeadImg.Resp.ImgPair)iterator1.next();
            AvatarUserManager.a(imgpair.a(), imgpair.b());
            if(!d)
            {
                d = true;
                e.a(100L);
            }
        } while(true);
        if(a(m(), a) < 0)
            a.a(3, -1, "doScene failed", this);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        return 19;
    }

    protected final int c()
    {
        return 20;
    }

    private static boolean c = false;
    private static boolean d = false;
    private static MTimerHandler e = new MTimerHandler(new _cls1(), true);
    private IOnSceneEnd a;


    private class MMReqRespBatchGetHeadImg extends MMReqRespBase
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
            return 19;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/batchgetheadimg";
        }

        private com.tencent.mm.protocal.MMBatchGetHeadImg.Req a;
        private com.tencent.mm.protocal.MMBatchGetHeadImg.Resp b;

        public MMReqRespBatchGetHeadImg()
        {
            a = new com.tencent.mm.protocal.MMBatchGetHeadImg.Req();
            b = new com.tencent.mm.protocal.MMBatchGetHeadImg.Resp();
        }
    }


    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            boolean flag = true;
            if(!NetSceneBatchGetHeadImg.g()) goto _L2; else goto _L1
_L1:
            return flag;
_L2:
            AvatarUserManager.AvatarRes avatarres = AvatarUserManager.d();
            if(avatarres == null)
            {
                NetSceneBatchGetHeadImg.h();
                flag = false;
            } else
            if(avatarres.b != null && avatarres.b.length > 10)
            {
                com.tencent.mm.algorithm.CodeInfo.TestTime testtime = new com.tencent.mm.algorithm.CodeInfo.TestTime();
                MMCore.f().y().b(avatarres.a, avatarres.b);
                Log.d("MicroMsg.NetSceneBatchGetHeadImg", (new StringBuilder()).append("avatar save bufimg:").append(avatarres.b.length).append(" user:").append(avatarres.a).append(" time:").append(testtime.b()).toString());
            }
            if(true) goto _L1; else goto _L3
_L3:
        }

        _cls1()
        {
        }
    }

}
