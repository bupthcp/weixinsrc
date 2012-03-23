// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, SKBuiltinString_t, SKBuiltinBuffer_t

public class CreateChatRoomResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public CreateChatRoomResponse()
    {
        l = new LinkedList();
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(5, j) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()) + c.a.a.a.b(3, f.a()) + c.a.a.a.b(4, h.a()) + c.a.a.a.a(6, 8, l) + c.a.a.a.b(7, m.a()) + c.a.a.a.b(8, o.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.b(2, d.a());
        d.a(a1);
        a1.b(3, f.a());
        f.a(a1);
        a1.b(4, h.a());
        h.a(a1);
        a1.a(5, j);
        a1.a(6, 8, l);
        a1.b(7, m.a());
        m.a(a1);
        a1.b(8, o.a());
        o.a(a1);
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k || !n || !p)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" Topic:").append(e).append(" PYInitial:").append(g).append(" QuanPin:").append(i).append(" MemberCount:").append(k).append(" ChatRoomName:").append(n).append(" ImgBuf:").append(p).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Topic = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("PYInitial = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("QuanPin = ").append(h).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("MemberCount = ").append(j).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("MemberList = ").append(l).append("   ").toString();
        String s7 = (new StringBuilder()).append(s6).append("ChatRoomName = ").append(m).append("   ").toString();
        String s8 = (new StringBuilder()).append(s7).append("ImgBuf = ").append(o).append("   ").toString();
        return (new StringBuilder()).append(s8).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private SKBuiltinString_t d;
    private boolean e;
    private SKBuiltinString_t f;
    private boolean g;
    private SKBuiltinString_t h;
    private boolean i;
    private int j;
    private boolean k;
    private LinkedList l;
    private SKBuiltinString_t m;
    private boolean n;
    private SKBuiltinBuffer_t o;
    private boolean p;
}
