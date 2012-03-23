// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import com.tencent.mm.protobuf.ByteString;

public class BaseRequest extends BaseProtoBuf
{

    public BaseRequest()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(1, b) + c.a.a.a.a(2, d) + c.a.a.a.a(3, f) + c.a.a.a.a(4, h) + c.a.a.a.a(5, j);
        if(m)
            i1 += c.a.a.a.a(6, l);
        return i1 + 0;
    }

    public final BaseRequest a(int i1)
    {
        d = i1;
        e = true;
        return this;
    }

    public final BaseRequest a(ByteString bytestring)
    {
        b = bytestring;
        c = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, d);
        a1.a(3, f);
        a1.a(4, h);
        a1.a(5, j);
        if(m)
            a1.a(6, l);
    }

    public final BaseRequest b(int i1)
    {
        h = i1;
        i = true;
        return this;
    }

    public final BaseRequest b(ByteString bytestring)
    {
        f = bytestring;
        g = true;
        return this;
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  SessionKey:").append(c).append(" Uin:").append(e).append(" DeviceID:").append(g).append(" ClientVersion:").append(i).append(" DeviceType:").append(k).append("").toString());
        else
            return super.b();
    }

    public final BaseRequest c(int i1)
    {
        l = i1;
        m = true;
        return this;
    }

    public final BaseRequest c(ByteString bytestring)
    {
        j = bytestring;
        k = true;
        return this;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("SessionKey = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Uin = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("DeviceID = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("ClientVersion = ").append(h).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("DeviceType = ").append(j).append("   ").toString();
        if(m)
            s5 = (new StringBuilder()).append(s5).append("Scene = ").append(l).append("   ").toString();
        return (new StringBuilder()).append(s5).append(")").toString();
    }

    private ByteString b;
    private boolean c;
    private int d;
    private boolean e;
    private ByteString f;
    private boolean g;
    private int h;
    private boolean i;
    private ByteString j;
    private boolean k;
    private int l;
    private boolean m;
}
