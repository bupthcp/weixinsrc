// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest

public class MailComposeSendRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public MailComposeSendRequest()
    {
    }

    public final int a()
    {
        int i1 = 0;
        if(e)
            i1 = 0 + c.a.a.a.b.a.b(2, d);
        if(g)
            i1 += c.a.a.a.b.a.b(3, f);
        if(i)
            i1 += c.a.a.a.b.a.b(4, h);
        if(k)
            i1 += c.a.a.a.b.a.b(5, j);
        if(m)
            i1 += c.a.a.a.b.a.b(6, l);
        if(o)
            i1 += c.a.a.a.b.a.b(7, n);
        if(q)
            i1 += c.a.a.a.b.a.b(8, p);
        if(s)
            i1 += c.a.a.a.b.a.b(9, r);
        return i1 + c.a.a.a.a(10, t) + (0 + c.a.a.a.b(1, b.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        if(e)
            a1.a(2, d);
        if(g)
            a1.a(3, f);
        if(i)
            a1.a(4, h);
        if(k)
            a1.a(5, j);
        if(m)
            a1.a(6, l);
        if(o)
            a1.a(7, n);
        if(q)
            a1.a(8, p);
        if(s)
            a1.a(9, r);
        a1.a(10, t);
    }

    public final byte[] b()
    {
        if(!c || !u)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" ReplyType:").append(u).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseRequest = ").append(b).append("   ").toString();
        if(e)
            s2 = (new StringBuilder()).append(s2).append("MailAccount = ").append(d).append("   ").toString();
        if(g)
            s2 = (new StringBuilder()).append(s2).append("OldMailID = ").append(f).append("   ").toString();
        if(i)
            s2 = (new StringBuilder()).append(s2).append("Subject = ").append(h).append("   ").toString();
        if(k)
            s2 = (new StringBuilder()).append(s2).append("RcptTo = ").append(j).append("   ").toString();
        if(m)
            s2 = (new StringBuilder()).append(s2).append("Cc = ").append(l).append("   ").toString();
        if(o)
            s2 = (new StringBuilder()).append(s2).append("Bcc = ").append(n).append("   ").toString();
        if(q)
            s2 = (new StringBuilder()).append(s2).append("From = ").append(p).append("   ").toString();
        if(s)
            s2 = (new StringBuilder()).append(s2).append("MailContent = ").append(r).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ReplyType = ").append(t).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private String d;
    private boolean e;
    private String f;
    private boolean g;
    private String h;
    private boolean i;
    private String j;
    private boolean k;
    private String l;
    private boolean m;
    private String n;
    private boolean o;
    private String p;
    private boolean q;
    private String r;
    private boolean s;
    private int t;
    private boolean u;
}
