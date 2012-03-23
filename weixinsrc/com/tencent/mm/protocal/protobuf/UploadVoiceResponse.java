// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse

public class UploadVoiceResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public UploadVoiceResponse()
    {
    }

    public static UploadVoiceResponse a(byte abyte0[])
    {
        a a1;
        int i1;
        UploadVoiceResponse uploadvoiceresponse;
        a1 = new a(abyte0, a);
        i1 = a(a1);
        uploadvoiceresponse = new UploadVoiceResponse();
_L14:
        if(i1 <= 0)
            break MISSING_BLOCK_LABEL_405;
        i1;
        JVM INSTR tableswitch 1 11: default 88
    //                   1 108
    //                   2 127
    //                   3 146
    //                   4 165
    //                   5 184
    //                   6 203
    //                   7 222
    //                   8 241
    //                   9 260
    //                   10 279
    //                   11 386;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L12:
        break MISSING_BLOCK_LABEL_386;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        boolean flag = false;
_L15:
        if(!flag)
            a1.g();
        i1 = a(a1);
        if(true) goto _L14; else goto _L13
_L13:
        uploadvoiceresponse.b = a1.b();
        uploadvoiceresponse.c = true;
        flag = true;
          goto _L15
_L3:
        uploadvoiceresponse.d = a1.b();
        uploadvoiceresponse.e = true;
        flag = true;
          goto _L15
_L4:
        uploadvoiceresponse.f = a1.a();
        uploadvoiceresponse.g = true;
        flag = true;
          goto _L15
_L5:
        uploadvoiceresponse.h = a1.a();
        uploadvoiceresponse.i = true;
        flag = true;
          goto _L15
_L6:
        uploadvoiceresponse.j = a1.a();
        uploadvoiceresponse.k = true;
        flag = true;
          goto _L15
_L7:
        uploadvoiceresponse.l = a1.b();
        uploadvoiceresponse.m = true;
        flag = true;
          goto _L15
_L8:
        uploadvoiceresponse.n = a1.a();
        uploadvoiceresponse.o = true;
        flag = true;
          goto _L15
_L9:
        uploadvoiceresponse.p = a1.a();
        uploadvoiceresponse.q = true;
        flag = true;
          goto _L15
_L10:
        uploadvoiceresponse.r = a1.a();
        uploadvoiceresponse.s = true;
        flag = true;
          goto _L15
_L11:
        LinkedList linkedlist = a1.a(10);
        for(int j1 = 0; j1 < linkedlist.size(); j1++)
        {
            byte abyte1[] = (byte[])linkedlist.get(j1);
            BaseResponse baseresponse = new BaseResponse();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a2, baseresponse, a(a2)));
            uploadvoiceresponse.t = baseresponse;
            uploadvoiceresponse.u = true;
        }

        flag = true;
          goto _L15
        uploadvoiceresponse.v = a1.a();
        uploadvoiceresponse.w = true;
        flag = true;
          goto _L15
        return uploadvoiceresponse.h();
    }

    private UploadVoiceResponse h()
    {
        if(!g || !i || !k || !o || !q || !s || !u)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Offset:").append(g).append(" Length:").append(i).append(" CreateTime:").append(k).append(" MsgId:").append(o).append(" VoiceLength:").append(q).append(" EndFlag:").append(s).append(" BaseResponse:").append(u).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        int i1 = 0;
        if(c)
            i1 = 0 + c.a.a.a.b.a.b(1, b);
        if(e)
            i1 += c.a.a.a.b.a.b(2, d);
        int j1 = i1 + c.a.a.a.a(3, f) + c.a.a.a.a(4, h) + c.a.a.a.a(5, j);
        if(m)
            j1 += c.a.a.a.b.a.b(6, l);
        int k1 = j1 + c.a.a.a.a(7, n) + c.a.a.a.a(8, p) + c.a.a.a.a(9, r);
        if(w)
            k1 += c.a.a.a.a(11, v);
        return k1 + (0 + c.a.a.a.b(10, t.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        if(c)
            a1.a(1, b);
        if(e)
            a1.a(2, d);
        a1.a(3, f);
        a1.a(4, h);
        a1.a(5, j);
        if(m)
            a1.a(6, l);
        a1.a(7, n);
        a1.a(8, p);
        a1.a(9, r);
        a1.b(10, t.a());
        t.a(a1);
        if(w)
            a1.a(11, v);
    }

    public final byte[] b()
    {
        h();
        return super.b();
    }

    public final int c()
    {
        return f;
    }

    public final int d()
    {
        return h;
    }

    public final String e()
    {
        return l;
    }

    public final int f()
    {
        return n;
    }

    public final BaseResponse g()
    {
        return t;
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s1 = (new StringBuilder()).append(s1).append("FromUserName = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("ToUserName = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Offset = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Length = ").append(h).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("CreateTime = ").append(j).append("   ").toString();
        if(m)
            s4 = (new StringBuilder()).append(s4).append("ClientMsgId = ").append(l).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("MsgId = ").append(n).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("VoiceLength = ").append(p).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("EndFlag = ").append(r).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("BaseResponse = ").append(t).append("   ").toString();
        if(w)
            s8 = (new StringBuilder()).append(s8).append("CancelFlag = ").append(v).append("   ").toString();
        return (new StringBuilder()).append(s8).append(")").toString();
    }

    private String b;
    private boolean c;
    private String d;
    private boolean e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
    private int j;
    private boolean k;
    private String l;
    private boolean m;
    private int n;
    private boolean o;
    private int p;
    private boolean q;
    private int r;
    private boolean s;
    private BaseResponse t;
    private boolean u;
    private int v;
    private boolean w;
}
