// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelavatar;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.IOnSceneEnd;
import com.tencent.mm.modelbase.NetSceneBase;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.ConfigStorage;
import java.io.*;

// Referenced classes of package com.tencent.mm.modelavatar:
//            AvatarStorage, AvatarLogic

public class NetSceneUploadHDHeadImg extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneUploadHDHeadImg(int i, String s)
    {
        f = null;
        String s1 = ConfigStorageLogic.b();
        if(i == 2)
            s1 = ContactStorageLogic.u(s1);
        String s2 = MMCore.f().y().a(s1, true);
        if(a(s, s2) == 0)
        {
            c = s2;
            e = i;
            d = MMCore.f().y().c(s1);
            g = 0;
            h = 0;
        }
    }

    private static int a(String s, String s1)
    {
        Bitmap bitmap = BitmapFactory.decodeFile(s);
        if(bitmap != null) goto _L2; else goto _L1
_L1:
        int i;
        Log.a("MicroMsg.NetSceneUploadHDHeadImg", "decode file fail");
        i = 0 - CodeInfo.b();
_L4:
        return i;
_L2:
        Bitmap bitmap1;
        bitmap1 = Bitmap.createScaledBitmap(bitmap, 640, 640, true);
        bitmap.recycle();
        if(bitmap1 == null)
        {
            Log.a("MicroMsg.NetSceneUploadHDHeadImg", "Scale file fail");
            i = 0 - CodeInfo.b();
            continue; /* Loop/switch isn't completed */
        }
        FileOutputStream fileoutputstream = new FileOutputStream(s1);
        bitmap1.compress(android.graphics.Bitmap.CompressFormat.JPEG, 40, fileoutputstream);
        bitmap1.recycle();
        i = 0;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Log.a("MicroMsg.NetSceneUploadHDHeadImg", "open FileOutputStream fail");
        bitmap1.recycle();
        i = 0 - CodeInfo.b();
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void g()
    {
        if(f != null)
        {
            f.close();
            f = null;
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
        int i = -1;
        a = ionsceneend;
        if(c == null || c.length() == 0)
            Log.a("MicroMsg.NetSceneUploadHDHeadImg", "imgPath is null or length = 0");
        else
        if(!FileOperation.c(c))
        {
            Log.a("MicroMsg.NetSceneUploadHDHeadImg", (new StringBuilder()).append("The img does not exist, imgPath = ").append(c).toString());
        } else
        {
            if(f == null)
            {
                File file = new File(c);
                int j;
                byte abyte0[];
                MMReqRespUploadHDHeadImg mmreqrespuploadhdheadimg;
                try
                {
                    g = (int)file.length();
                    f = new FileInputStream(file);
                }
                catch(FileNotFoundException filenotfoundexception) { }
            }
            j = Math.min(g - h, 8192);
            abyte0 = FileOperation.a(c, h, j);
            if(abyte0 == null)
            {
                Log.a("MicroMsg.NetSceneUploadHDHeadImg", "readFromFile error");
                g();
            } else
            {
                mmreqrespuploadhdheadimg = new MMReqRespUploadHDHeadImg();
                ((com.tencent.mm.protocal.MMUploadHDHeadImg.Req)mmreqrespuploadhdheadimg.f()).a(g);
                ((com.tencent.mm.protocal.MMUploadHDHeadImg.Req)mmreqrespuploadhdheadimg.f()).b(h);
                ((com.tencent.mm.protocal.MMUploadHDHeadImg.Req)mmreqrespuploadhdheadimg.f()).c(e);
                ((com.tencent.mm.protocal.MMUploadHDHeadImg.Req)mmreqrespuploadhdheadimg.f()).a(abyte0);
                ((com.tencent.mm.protocal.MMUploadHDHeadImg.Req)mmreqrespuploadhdheadimg.f()).a(d);
                i = a(idispatcher, ((IReqResp) (mmreqrespuploadhdheadimg)), ((IOnGYNetEnd) (this)));
            }
        }
        return i;
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
        g();
    }

    public final void a(int i, int j, int k, String s, IReqResp ireqresp)
    {
        b(i);
        com.tencent.mm.protocal.MMUploadHDHeadImg.Resp resp = (com.tencent.mm.protocal.MMUploadHDHeadImg.Resp)ireqresp.b();
        Log.d("MicroMsg.NetSceneUploadHDHeadImg", (new StringBuilder()).append("errType:").append(j).append(" errCode:").append(k).toString());
        if(j != 4 && k != 0)
        {
            Log.a("MicroMsg.NetSceneUploadHDHeadImg", (new StringBuilder()).append("errType:").append(j).append(" errCode:").append(k).toString());
            a.a(j, k, s, this);
            g();
        } else
        if(j == 4 || j == 5)
        {
            a.a(j, k, s, this);
            Log.a("MicroMsg.NetSceneUploadHDHeadImg", (new StringBuilder()).append("ErrType:").append(j).toString());
            g();
        } else
        {
            boolean flag;
            if(resp.b_() == -4)
            {
                Log.a("MicroMsg.NetSceneUploadHDHeadImg", (new StringBuilder()).append("retcode == ").append(resp.b_()).toString());
                flag = true;
            } else
            {
                flag = false;
            }
            if(flag)
            {
                Log.a("MicroMsg.NetSceneUploadHDHeadImg", "handleCertainError");
                a.a(j, k, s, this);
                g();
            } else
            {
                h = resp.d();
                if(h < g)
                {
                    Log.d("MicroMsg.NetSceneUploadHDHeadImg", "doScene again");
                    a(m(), a);
                } else
                {
                    MMCore.f().f().a(12297, resp.e());
                    g();
                    AvatarLogic.a(ConfigStorageLogic.b(), true);
                    a.a(j, k, s, this);
                }
            }
        }
    }

    public final int b()
    {
        return 45;
    }

    protected final int c()
    {
        return 200;
    }

    private IOnSceneEnd a;
    private String c;
    private String d;
    private int e;
    private FileInputStream f;
    private int g;
    private int h;

    private class MMReqRespUploadHDHeadImg extends MMReqRespBase
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
            return 45;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/uploadhdheadimg";
        }

        private com.tencent.mm.protocal.MMUploadHDHeadImg.Req a;
        private com.tencent.mm.protocal.MMUploadHDHeadImg.Resp b;

        public MMReqRespUploadHDHeadImg()
        {
            a = new com.tencent.mm.protocal.MMUploadHDHeadImg.Req();
            b = new com.tencent.mm.protocal.MMUploadHDHeadImg.Resp();
        }
    }

}
