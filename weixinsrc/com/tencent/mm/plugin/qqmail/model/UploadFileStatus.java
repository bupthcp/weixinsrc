// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.model;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

public class UploadFileStatus extends BaseProtoBuf
{

    public UploadFileStatus()
    {
    }

    protected static boolean a(a a1, UploadFileStatus uploadfilestatus, int i1)
    {
        boolean flag = true;
        i1;
        JVM INSTR tableswitch 1 6: default 40
    //                   1 44
    //                   2 56
    //                   3 68
    //                   4 80
    //                   5 92
    //                   6 104;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
        flag = false;
_L9:
        return flag;
_L2:
        uploadfilestatus.a(a1.b());
        continue; /* Loop/switch isn't completed */
_L3:
        uploadfilestatus.b(a1.b());
        continue; /* Loop/switch isn't completed */
_L4:
        uploadfilestatus.a(a1.d());
        continue; /* Loop/switch isn't completed */
_L5:
        uploadfilestatus.a(a1.a());
        continue; /* Loop/switch isn't completed */
_L6:
        uploadfilestatus.b(a1.d());
        continue; /* Loop/switch isn't completed */
_L7:
        uploadfilestatus.c(a1.b());
        if(true) goto _L9; else goto _L8
_L8:
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(1, b) + c.a.a.a.a(2, d) + c.a.a.a.a(3, f);
        if(i)
            i1 += c.a.a.a.a(4, h);
        if(k)
            i1 += c.a.a.a.a(5, j);
        if(m)
            i1 += c.a.a.a.a(6, l);
        return i1 + 0;
    }

    public final UploadFileStatus a(int i1)
    {
        h = i1;
        i = true;
        return this;
    }

    public final UploadFileStatus a(long l1)
    {
        f = l1;
        g = true;
        return this;
    }

    public final UploadFileStatus a(String s)
    {
        b = s;
        c = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, d);
        a1.a(3, f);
        if(i)
            a1.a(4, h);
        if(k)
            a1.a(5, j);
        if(m)
            a1.a(6, l);
    }

    public final UploadFileStatus b(long l1)
    {
        j = l1;
        k = true;
        return this;
    }

    public final UploadFileStatus b(String s)
    {
        d = s;
        e = true;
        return this;
    }

    public final byte[] b()
    {
        if(!c || !e || !g)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  path:").append(c).append(" name:").append(e).append(" size:").append(g).append("").toString());
        else
            return super.b();
    }

    public final UploadFileStatus c(String s)
    {
        l = s;
        m = true;
        return this;
    }

    public final String c()
    {
        return b;
    }

    public final String d()
    {
        return d;
    }

    public final long e()
    {
        return f;
    }

    public final int f()
    {
        return h;
    }

    public final long g()
    {
        return j;
    }

    public final String h()
    {
        return l;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("path = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("name = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("size = ").append(f).append("   ").toString();
        if(i)
            s3 = (new StringBuilder()).append(s3).append("state = ").append(h).append("   ").toString();
        if(k)
            s3 = (new StringBuilder()).append(s3).append("requestId = ").append(j).append("   ").toString();
        if(m)
            s3 = (new StringBuilder()).append(s3).append("svrId = ").append(l).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private String b;
    private boolean c;
    private String d;
    private boolean e;
    private long f;
    private boolean g;
    private int h;
    private boolean i;
    private long j;
    private boolean k;
    private String l;
    private boolean m;
}
