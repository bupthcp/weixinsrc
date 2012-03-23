// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, CmdList, SKBuiltinBuffer_t

public class NewSyncAlbumResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public NewSyncAlbumResponse()
    {
    }

    public static NewSyncAlbumResponse a(byte abyte0[])
    {
        a a1;
        int j;
        NewSyncAlbumResponse newsyncalbumresponse;
        a1 = new a(abyte0, a);
        j = a(a1);
        newsyncalbumresponse = new NewSyncAlbumResponse();
_L7:
        if(j <= 0)
            break MISSING_BLOCK_LABEL_417;
        j;
        JVM INSTR tableswitch 1 4: default 60
    //                   1 80
    //                   2 186
    //                   3 292
    //                   4 311;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_311;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        boolean flag = false;
_L8:
        if(!flag)
            a1.g();
        j = a(a1);
        if(true) goto _L7; else goto _L6
_L6:
        LinkedList linkedlist2 = a1.a(1);
        for(int i1 = 0; i1 < linkedlist2.size(); i1++)
        {
            byte abyte3[] = (byte[])linkedlist2.get(i1);
            BaseResponse baseresponse = new BaseResponse();
            a a4 = new a(abyte3, a);
            for(boolean flag3 = true; flag3; flag3 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a4, baseresponse, a(a4)));
            newsyncalbumresponse.b = baseresponse;
            newsyncalbumresponse.c = true;
        }

        flag = true;
          goto _L8
_L3:
        LinkedList linkedlist1 = a1.a(2);
        for(int l = 0; l < linkedlist1.size(); l++)
        {
            byte abyte2[] = (byte[])linkedlist1.get(l);
            CmdList cmdlist = new CmdList();
            a a3 = new a(abyte2, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.protocal.protobuf.CmdList.a(a3, cmdlist, a(a3)));
            newsyncalbumresponse.d = cmdlist;
            newsyncalbumresponse.e = true;
        }

        flag = true;
          goto _L8
_L4:
        newsyncalbumresponse.f = a1.a();
        newsyncalbumresponse.g = true;
        flag = true;
          goto _L8
        LinkedList linkedlist = a1.a(4);
        for(int k = 0; k < linkedlist.size(); k++)
        {
            byte abyte1[] = (byte[])linkedlist.get(k);
            SKBuiltinBuffer_t skbuiltinbuffer_t = new SKBuiltinBuffer_t();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.SKBuiltinBuffer_t.a(a2, skbuiltinbuffer_t, a(a2)));
            newsyncalbumresponse.h = skbuiltinbuffer_t;
            newsyncalbumresponse.i = true;
        }

        flag = true;
          goto _L8
        return newsyncalbumresponse.f();
    }

    private NewSyncAlbumResponse f()
    {
        if(!c || !e || !g || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" CmdList:").append(e).append(" ContinueFlag:").append(g).append(" KeyBuf:").append(i).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(3, f) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()) + c.a.a.a.b(4, h.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.b(2, d.a());
        d.a(a1);
        a1.a(3, f);
        a1.b(4, h.a());
        h.a(a1);
    }

    public final byte[] b()
    {
        f();
        return super.b();
    }

    public final BaseResponse c()
    {
        return b;
    }

    public final CmdList d()
    {
        return d;
    }

    public final SKBuiltinBuffer_t e()
    {
        return h;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("CmdList = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ContinueFlag = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("KeyBuf = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private CmdList d;
    private boolean e;
    private int f;
    private boolean g;
    private SKBuiltinBuffer_t h;
    private boolean i;
}
