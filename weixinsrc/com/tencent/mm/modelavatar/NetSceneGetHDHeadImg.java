// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelavatar;

import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import java.io.*;

// Referenced classes of package com.tencent.mm.modelavatar:
//            AvatarStorage, HDHeadImgInfoStorage, HDHeadImgInfo

public class NetSceneGetHDHeadImg extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneGetHDHeadImg(String s)
    {
        h = null;
        c = s;
        e = 1;
        if(ContactStorageLogic.t(s))
        {
            c = ContactStorageLogic.u(s);
            e = 2;
        }
        Log.d("MicroMsg.NetSceneGetHDHeadImg", (new StringBuilder()).append("init Headimage in_username:").append(s).append(" out_username").append(c).append(" in_type:").append(1).append(" out_type:").append(e).toString());
        f = 480;
        g = 480;
        d = "jpg";
    }

    private int a(byte abyte0[])
    {
        if(h == null)
            h = new FileOutputStream(new File(j));
        h.write(abyte0);
        int k = abyte0.length;
_L2:
        return k;
        IOException ioexception;
        ioexception;
        k = -1;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private void h()
    {
        if(h != null)
        {
            h.flush();
            h.close();
            h = null;
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
        boolean flag;
        flag = false;
        a = ionsceneend;
        if(c != null && c.length() != 0) goto _L2; else goto _L1
_L1:
        int k;
        Log.a("MicroMsg.NetSceneGetHDHeadImg", "username is null");
        k = -1;
_L4:
        return k;
_L2:
        HDHeadImgInfoStorage hdheadimginfostorage;
        HDHeadImgInfo hdheadimginfo;
        HDHeadImgInfo hdheadimginfo1;
        hdheadimginfostorage = MMCore.f().C();
        i = MMCore.f().y().a(c, true);
        if(FileOperation.c(i))
        {
            Log.c("MicroMsg.NetSceneGetHDHeadImg", (new StringBuilder()).append("The HDAvatar of ").append(c).append(" is already exists").toString());
            k = ((flag) ? 1 : 0);
            continue; /* Loop/switch isn't completed */
        }
        j = (new StringBuilder()).append(i).append(".tmp").toString();
        hdheadimginfo = hdheadimginfostorage.a(c);
        if(hdheadimginfo != null)
            break; /* Loop/switch isn't completed */
        FileOperation.d(j);
        HDHeadImgInfo hdheadimginfo2 = new HDHeadImgInfo();
        hdheadimginfo2.a(c);
        hdheadimginfo2.e(e);
        hdheadimginfo2.b(d);
        hdheadimginfo2.a(f);
        hdheadimginfo2.b(g);
        hdheadimginfostorage.a(hdheadimginfo2);
        hdheadimginfo1 = hdheadimginfo2;
_L5:
        MMReqRespGetHDHeadImg mmreqrespgethdheadimg = new MMReqRespGetHDHeadImg();
        ((com.tencent.mm.protocal.MMGetHDHeadImg.Req)mmreqrespgethdheadimg.f()).a(c);
        ((com.tencent.mm.protocal.MMGetHDHeadImg.Req)mmreqrespgethdheadimg.f()).a(f);
        ((com.tencent.mm.protocal.MMGetHDHeadImg.Req)mmreqrespgethdheadimg.f()).b(g);
        ((com.tencent.mm.protocal.MMGetHDHeadImg.Req)mmreqrespgethdheadimg.f()).b(d);
        ((com.tencent.mm.protocal.MMGetHDHeadImg.Req)mmreqrespgethdheadimg.f()).e(e);
        ((com.tencent.mm.protocal.MMGetHDHeadImg.Req)mmreqrespgethdheadimg.f()).c(hdheadimginfo1.h());
        ((com.tencent.mm.protocal.MMGetHDHeadImg.Req)mmreqrespgethdheadimg.f()).d(hdheadimginfo1.i());
        k = a(idispatcher, ((IReqResp) (mmreqrespgethdheadimg)), ((IOnGYNetEnd) (this)));
        if(true) goto _L4; else goto _L3
_L3:
        String s = j;
        if(hdheadimginfo != null && s != null && s.length() != 0 && hdheadimginfo.j() == e && hdheadimginfo.g().equals(d) && hdheadimginfo.e() == f && hdheadimginfo.f() == g && (new File(s)).length() == (long)hdheadimginfo.i())
            flag = true;
        if(!flag)
        {
            FileOperation.d(j);
            hdheadimginfo.b();
            hdheadimginfo.a(c);
            hdheadimginfo.e(e);
            hdheadimginfo.b(d);
            hdheadimginfo.a(f);
            hdheadimginfo.b(g);
            hdheadimginfostorage.a(c, hdheadimginfo);
        }
        hdheadimginfo1 = hdheadimginfo;
          goto _L5
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus securitycheckstatus;
        if(c == null || c.length() == 0)
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.c;
        else
            securitycheckstatus = com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
        return securitycheckstatus;
    }

    protected final void a()
    {
        super.a();
        h();
    }

    public final void a(int k, int l, int i1, String s, IReqResp ireqresp)
    {
        b(k);
        com.tencent.mm.protocal.MMGetHDHeadImg.Resp resp = (com.tencent.mm.protocal.MMGetHDHeadImg.Resp)ireqresp.b();
        Log.d("MicroMsg.NetSceneGetHDHeadImg", (new StringBuilder()).append("errType:").append(l).append(" errCode:").append(i1).toString());
        if(l != 4 && i1 != 0)
        {
            Log.a("MicroMsg.NetSceneGetHDHeadImg", (new StringBuilder()).append("errType:").append(l).append(" errCode:").append(i1).toString());
            a.a(l, i1, s, this);
            h();
        } else
        if(l == 4 || l == 5)
        {
            a.a(l, i1, s, this);
            Log.a("MicroMsg.NetSceneGetHDHeadImg", (new StringBuilder()).append("ErrType:").append(l).toString());
            h();
        } else
        {
            int j1 = resp.b_();
            boolean flag;
            if(j1 == -4 || j1 == -54 || j1 == -55)
            {
                Log.a("MicroMsg.NetSceneGetHDHeadImg", (new StringBuilder()).append("retcode == ").append(resp.b_()).toString());
                flag = true;
            } else
            {
                flag = false;
            }
            if(flag)
            {
                Log.a("MicroMsg.NetSceneGetHDHeadImg", "handleCertainError");
                a.a(l, i1, s, this);
                h();
            } else
            {
                int k1 = a(resp.f());
                if(k1 < 0)
                {
                    Log.a("MicroMsg.NetSceneGetHDHeadImg", "appendBuf fail");
                    a.a(l, i1, s, this);
                    h();
                } else
                {
                    HDHeadImgInfoStorage hdheadimginfostorage = MMCore.f().C();
                    HDHeadImgInfo hdheadimginfo = hdheadimginfostorage.a(c);
                    hdheadimginfo.d(k1 + resp.e());
                    hdheadimginfo.c(resp.d());
                    hdheadimginfostorage.a(c, hdheadimginfo);
                    if(!hdheadimginfo.a())
                    {
                        Log.d("MicroMsg.NetSceneGetHDHeadImg", "doScene again");
                        a(m(), a);
                    } else
                    {
                        (new File(j)).renameTo(new File(i));
                        try
                        {
                            byte abyte0[] = new byte[hdheadimginfo.h()];
                            FileInputStream fileinputstream = new FileInputStream(i);
                            fileinputstream.read(abyte0);
                            fileinputstream.close();
                            MMCore.f().y().a(c, abyte0);
                        }
                        catch(Exception exception) { }
                        h();
                        a.a(l, i1, s, this);
                    }
                }
            }
        }
    }

    public final int b()
    {
        return 46;
    }

    protected final int c()
    {
        return 10;
    }

    public final String g()
    {
        return c;
    }

    private IOnSceneEnd a;
    private String c;
    private String d;
    private int e;
    private int f;
    private int g;
    private FileOutputStream h;
    private String i;
    private String j;

    private class MMReqRespGetHDHeadImg extends MMReqRespBase
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
            return 46;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/gethdheadimg";
        }

        private com.tencent.mm.protocal.MMGetHDHeadImg.Req a;
        private com.tencent.mm.protocal.MMGetHDHeadImg.Resp b;

        public MMReqRespGetHDHeadImg()
        {
            a = new com.tencent.mm.protocal.MMGetHDHeadImg.Req();
            b = new com.tencent.mm.protocal.MMGetHDHeadImg.Resp();
        }
    }

}
