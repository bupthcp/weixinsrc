// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, SKBuiltinBuffer_t, BaseResponse

public class DownloadVoiceResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public DownloadVoiceResponse()
    {
    }

    public static DownloadVoiceResponse a(byte abyte0[])
    {
        a a1;
        int i1;
        DownloadVoiceResponse downloadvoiceresponse;
        a1 = new a(abyte0, a);
        i1 = a(a1);
        downloadvoiceresponse = new DownloadVoiceResponse();
_L12:
        if(i1 <= 0)
            break MISSING_BLOCK_LABEL_451;
        i1;
        JVM INSTR tableswitch 1 10: default 84
    //                   1 104
    //                   2 123
    //                   3 142
    //                   4 84
    //                   5 161
    //                   6 180
    //                   7 199
    //                   8 306
    //                   9 325
    //                   10 432;
           goto _L1 _L2 _L3 _L4 _L1 _L5 _L6 _L7 _L8 _L9 _L10
_L10:
        break MISSING_BLOCK_LABEL_432;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        boolean flag = false;
_L13:
        if(!flag)
            a1.g();
        i1 = a(a1);
        if(true) goto _L12; else goto _L11
_L11:
        downloadvoiceresponse.b = a1.a();
        downloadvoiceresponse.c = true;
        flag = true;
          goto _L13
_L3:
        downloadvoiceresponse.d = a1.a();
        downloadvoiceresponse.e = true;
        flag = true;
          goto _L13
_L4:
        downloadvoiceresponse.f = a1.a();
        downloadvoiceresponse.g = true;
        flag = true;
          goto _L13
_L5:
        downloadvoiceresponse.h = a1.a();
        downloadvoiceresponse.i = true;
        flag = true;
          goto _L13
_L6:
        downloadvoiceresponse.j = a1.b();
        downloadvoiceresponse.k = true;
        flag = true;
          goto _L13
_L7:
        LinkedList linkedlist1 = a1.a(7);
        for(int k1 = 0; k1 < linkedlist1.size(); k1++)
        {
            byte abyte2[] = (byte[])linkedlist1.get(k1);
            SKBuiltinBuffer_t skbuiltinbuffer_t = new SKBuiltinBuffer_t();
            a a3 = new a(abyte2, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.protocal.protobuf.SKBuiltinBuffer_t.a(a3, skbuiltinbuffer_t, a(a3)));
            downloadvoiceresponse.l = skbuiltinbuffer_t;
            downloadvoiceresponse.m = true;
        }

        flag = true;
          goto _L13
_L8:
        downloadvoiceresponse.n = a1.a();
        downloadvoiceresponse.o = true;
        flag = true;
          goto _L13
_L9:
        LinkedList linkedlist = a1.a(9);
        for(int j1 = 0; j1 < linkedlist.size(); j1++)
        {
            byte abyte1[] = (byte[])linkedlist.get(j1);
            BaseResponse baseresponse = new BaseResponse();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a2, baseresponse, a(a2)));
            downloadvoiceresponse.p = baseresponse;
            downloadvoiceresponse.q = true;
        }

        flag = true;
          goto _L13
        downloadvoiceresponse.r = a1.a();
        downloadvoiceresponse.s = true;
        flag = true;
          goto _L13
        return downloadvoiceresponse.g();
    }

    private DownloadVoiceResponse g()
    {
        if(!c || !e || !g || !i || !m || !o || !q)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  MsgId:").append(c).append(" Offset:").append(e).append(" Length:").append(g).append(" VoiceLength:").append(i).append(" Data:").append(m).append(" EndFlag:").append(o).append(" BaseResponse:").append(q).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(1, b) + c.a.a.a.a(2, d) + c.a.a.a.a(3, f) + c.a.a.a.a(5, h);
        if(k)
            i1 += c.a.a.a.b.a.b(6, j);
        int j1 = i1 + c.a.a.a.a(8, n);
        if(s)
            j1 += c.a.a.a.a(10, r);
        return j1 + (0 + c.a.a.a.b(7, l.a()) + c.a.a.a.b(9, p.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, d);
        a1.a(3, f);
        a1.a(5, h);
        if(k)
            a1.a(6, j);
        a1.b(7, l.a());
        l.a(a1);
        a1.a(8, n);
        a1.b(9, p.a());
        p.a(a1);
        if(s)
            a1.a(10, r);
    }

    public final byte[] b()
    {
        g();
        return super.b();
    }

    public final int c()
    {
        return d;
    }

    public final SKBuiltinBuffer_t d()
    {
        return l;
    }

    public final BaseResponse e()
    {
        return p;
    }

    public final int f()
    {
        return r;
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("MsgId = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Offset = ").append(d).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("Length = ").append(f).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("VoiceLength = ").append(h).append("   ").toString();
        if(k)
            s5 = (new StringBuilder()).append(s5).append("ClientMsgId = ").append(j).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("Data = ").append(l).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("EndFlag = ").append(n).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("BaseResponse = ").append(p).append("   ").toString();
        if(s)
            s8 = (new StringBuilder()).append(s8).append("CancelFlag = ").append(r).append("   ").toString();
        return (new StringBuilder()).append(s8).append(")").toString();
    }

    private int b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
    private String j;
    private boolean k;
    private SKBuiltinBuffer_t l;
    private boolean m;
    private int n;
    private boolean o;
    private BaseResponse p;
    private boolean q;
    private int r;
    private boolean s;
}
