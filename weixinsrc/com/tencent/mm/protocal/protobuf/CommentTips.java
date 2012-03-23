// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            CommentInfo

public class CommentTips extends BaseProtoBuf
{

    public CommentTips()
    {
    }

    public static CommentTips a(byte abyte0[])
    {
        a a1;
        int i;
        CommentTips commenttips;
        a1 = new a(abyte0, a);
        i = a(a1);
        commenttips = new CommentTips();
_L6:
        if(i <= 0)
            break MISSING_BLOCK_LABEL_307;
        i;
        JVM INSTR tableswitch 1 3: default 56
    //                   1 76
    //                   2 95
    //                   3 201;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_201;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        boolean flag = false;
_L7:
        if(!flag)
            a1.g();
        i = a(a1);
        if(true) goto _L6; else goto _L5
_L5:
        commenttips.b = a1.b();
        commenttips.c = true;
        flag = true;
          goto _L7
_L3:
        LinkedList linkedlist1 = a1.a(2);
        for(int k = 0; k < linkedlist1.size(); k++)
        {
            byte abyte2[] = (byte[])linkedlist1.get(k);
            CommentInfo commentinfo1 = new CommentInfo();
            a a3 = new a(abyte2, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.protocal.protobuf.CommentInfo.a(a3, commentinfo1, a(a3)));
            commenttips.d = commentinfo1;
            commenttips.e = true;
        }

        flag = true;
          goto _L7
        LinkedList linkedlist = a1.a(3);
        for(int j = 0; j < linkedlist.size(); j++)
        {
            byte abyte1[] = (byte[])linkedlist.get(j);
            CommentInfo commentinfo = new CommentInfo();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.CommentInfo.a(a2, commentinfo, a(a2)));
            commenttips.f = commentinfo;
            commenttips.g = true;
        }

        flag = true;
          goto _L7
        return commenttips.f();
    }

    private CommentTips f()
    {
        if(!e || !g)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  CommentInfo:").append(e).append(" ReferCommentInfo:").append(g).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        int i = 0;
        if(c)
            i = 0 + c.a.a.a.b.a.b(1, b);
        return i + (0 + c.a.a.a.b(2, d.a()) + c.a.a.a.b(3, f.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        if(c)
            a1.a(1, b);
        a1.b(2, d.a());
        d.a(a1);
        a1.b(3, f.a());
        f.a(a1);
    }

    public final byte[] b()
    {
        f();
        return super.b();
    }

    public final String c()
    {
        return b;
    }

    public final CommentInfo d()
    {
        return d;
    }

    public final CommentInfo e()
    {
        return f;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s = (new StringBuilder()).append(s).append("PhotoId = ").append(b).append("   ").toString();
        String s1 = (new StringBuilder()).append(s).append("CommentInfo = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("ReferCommentInfo = ").append(f).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private String b;
    private boolean c;
    private CommentInfo d;
    private boolean e;
    private CommentInfo f;
    private boolean g;
}
