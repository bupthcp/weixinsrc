// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelshake;

import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.ConfigStorage;
import java.io.*;

public class NetSceneShakeImg extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneShakeImg(int i, int j)
    {
        Log.d("MicroMsg.NetSceneShakeImg", (new StringBuilder()).append("NetSceneShakeImg : imgId = ").append(i).append(", totalLen = ").append(j).toString());
        d = i;
        e = 0;
        f = j;
        FileOperation.a(new File((new StringBuilder()).append(MMCore.f().M()).append("default_shake_img_filename.jpg.tmp").toString()));
    }

    private int a(byte abyte0[])
    {
        if(g == null)
            g = new FileOutputStream(new File(MMCore.f().M(), "default_shake_img_filename.jpg.tmp"));
        g.write(abyte0);
        int i = abyte0.length;
_L2:
        return i;
        IOException ioexception;
        ioexception;
        i = -1;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static boolean e_()
    {
        return a;
    }

    private void g()
    {
        if(g != null)
        {
            g.flush();
            g.close();
            g = null;
        }
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        c = ionsceneend;
        a = true;
        MMReqRespShakeImg mmreqrespshakeimg = new MMReqRespShakeImg();
        ((com.tencent.mm.protocal.MMShakeImg.Req)mmreqrespshakeimg.f()).a(d);
        ((com.tencent.mm.protocal.MMShakeImg.Req)mmreqrespshakeimg.f()).b(e);
        ((com.tencent.mm.protocal.MMShakeImg.Req)mmreqrespshakeimg.f()).c(f);
        return a(idispatcher, ((IReqResp) (mmreqrespshakeimg)), ((IOnGYNetEnd) (this)));
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus securitycheckstatus;
        if(e < 0 || f < 0 || e > f)
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        else
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        return securitycheckstatus;
    }

    protected final void a()
    {
        super.a();
        a = false;
        g();
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        com.tencent.mm.protocal.MMShakeImg.Resp resp = (com.tencent.mm.protocal.MMShakeImg.Resp)ireqresp.b();
        Log.d("MicroMsg.NetSceneShakeImg", (new StringBuilder()).append("errType:").append(j).append(" errCode:").append(k).toString());
        if(j != 4 && k != 0)
        {
            Log.a("MicroMsg.NetSceneShakeImg", (new StringBuilder()).append("errType:").append(j).append(" errCode:").append(k).toString());
            c.a(j, k, s, this);
            a = false;
            g();
        } else
        if(j == 4 || j == 5)
        {
            c.a(j, k, s, this);
            Log.a("MicroMsg.NetSceneShakeImg", (new StringBuilder()).append("ErrType:").append(j).toString());
            a = false;
            g();
        } else
        {
            int l = a(resp.f());
            if(l < 0)
            {
                Log.a("MicroMsg.NetSceneShakeImg", "appendBuf fail");
                c.a(j, k, s, this);
                a = false;
                g();
            } else
            {
                e = l + resp.e();
                f = resp.d();
                if(e < f)
                {
                    a(m(), c);
                } else
                {
                    FileOperation.a(MMCore.f().M(), "default_shake_img_filename.jpg.tmp", "default_shake_img_filename.jpg");
                    a = false;
                    g();
                    MMCore.f().f().a(4107, Integer.valueOf(d));
                    MMCore.f().f().a(4109, Integer.valueOf(f));
                    c.a(j, k, s, this);
                }
            }
        }
    }

    public final int b()
    {
        return 56;
    }

    protected final int c()
    {
        return 10;
    }

    private static boolean a = false;
    private IOnSceneEnd c;
    private int d;
    private int e;
    private int f;
    private FileOutputStream g;


    private class MMReqRespShakeImg extends MMReqRespBase
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
            return 56;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/shakeimg";
        }

        private com.tencent.mm.protocal.MMShakeImg.Req a;
        private com.tencent.mm.protocal.MMShakeImg.Resp b;

        public MMReqRespShakeImg()
        {
            a = new com.tencent.mm.protocal.MMShakeImg.Req();
            b = new com.tencent.mm.protocal.MMShakeImg.Resp();
        }
    }

}
