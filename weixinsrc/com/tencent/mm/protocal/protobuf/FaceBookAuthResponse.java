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

public class FaceBookAuthResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public FaceBookAuthResponse()
    {
    }

    public static FaceBookAuthResponse a(byte abyte0[])
    {
        a a1;
        int i;
        FaceBookAuthResponse facebookauthresponse;
        a1 = new a(abyte0, a);
        i = a(a1);
        facebookauthresponse = new FaceBookAuthResponse();
_L6:
        if(i <= 0)
            break MISSING_BLOCK_LABEL_220;
        i;
        JVM INSTR tableswitch 1 3: default 56
    //                   1 76
    //                   2 182
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
        LinkedList linkedlist = a1.a(1);
        for(int j = 0; j < linkedlist.size(); j++)
        {
            byte abyte1[] = (byte[])linkedlist.get(j);
            BaseResponse baseresponse = new BaseResponse();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a2, baseresponse, a(a2)));
            facebookauthresponse.b = baseresponse;
            facebookauthresponse.c = true;
        }

        flag = true;
          goto _L7
_L3:
        facebookauthresponse.d = a1.d();
        facebookauthresponse.e = true;
        flag = true;
          goto _L7
        facebookauthresponse.f = a1.b();
        facebookauthresponse.g = true;
        flag = true;
          goto _L7
        return facebookauthresponse.f();
    }

    private FaceBookAuthResponse f()
    {
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" FBUserID:").append(e).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        int i = 0 + c.a.a.a.b.a.b(2, d);
        if(g)
            i += c.a.a.a.b.a.b(3, f);
        return i + (0 + c.a.a.a.b(1, b.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        if(g)
            a1.a(3, f);
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

    public final long d()
    {
        return d;
    }

    public final String e()
    {
        return f;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("FBUserID = ").append(d).append("   ").toString();
        if(g)
            s2 = (new StringBuilder()).append(s2).append("FBUserName = ").append(f).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private long d;
    private boolean e;
    private String f;
    private boolean g;
}
