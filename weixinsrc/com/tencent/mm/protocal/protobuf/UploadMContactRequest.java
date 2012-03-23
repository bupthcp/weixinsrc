// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest

public class UploadMContactRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public UploadMContactRequest()
    {
        l = new LinkedList();
        o = new LinkedList();
    }

    public final int a()
    {
        int i1 = 0;
        if(e)
            i1 = 0 + c.a.a.a.b.a.b(2, d);
        int j1 = i1 + c.a.a.a.a(3, f);
        if(i)
            j1 += c.a.a.a.b.a.b(4, h);
        return j1 + c.a.a.a.a(5, j) + c.a.a.a.a(7, m) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(6, 8, l) + c.a.a.a.a(8, 8, o));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        if(e)
            a1.a(2, d);
        a1.a(3, f);
        if(i)
            a1.a(4, h);
        a1.a(5, j);
        a1.a(6, 8, l);
        a1.a(7, m);
        a1.a(8, 8, o);
    }

    public final byte[] b()
    {
        if(!c || !g || !k || !n)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" Opcode:").append(g).append(" MobileListSize:").append(k).append(" EmailListSize:").append(n).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("UserName = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Opcode = ").append(f).append("   ").toString();
        if(i)
            s2 = (new StringBuilder()).append(s2).append("Mobile = ").append(h).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("MobileListSize = ").append(j).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("MobileList = ").append(l).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("EmailListSize = ").append(m).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("EmailList = ").append(o).append("   ").toString();
        return (new StringBuilder()).append(s6).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private String d;
    private boolean e;
    private int f;
    private boolean g;
    private String h;
    private boolean i;
    private int j;
    private boolean k;
    private LinkedList l;
    private int m;
    private boolean n;
    private LinkedList o;
}
