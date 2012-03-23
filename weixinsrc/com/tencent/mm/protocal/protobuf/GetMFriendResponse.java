// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, MFriend

public class GetMFriendResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public GetMFriendResponse()
    {
        f = new LinkedList();
    }

    public static GetMFriendResponse a(byte abyte0[])
    {
        a a1;
        int j;
        GetMFriendResponse getmfriendresponse;
        a1 = new a(abyte0, a);
        j = a(a1);
        getmfriendresponse = new GetMFriendResponse();
_L7:
        if(j <= 0)
            break MISSING_BLOCK_LABEL_341;
        j;
        JVM INSTR tableswitch 1 4: default 60
    //                   1 80
    //                   2 186
    //                   3 205
    //                   4 322;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_322;
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
        LinkedList linkedlist1 = a1.a(1);
        for(int l = 0; l < linkedlist1.size(); l++)
        {
            byte abyte2[] = (byte[])linkedlist1.get(l);
            BaseResponse baseresponse = new BaseResponse();
            a a3 = new a(abyte2, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a3, baseresponse, a(a3)));
            getmfriendresponse.b = baseresponse;
            getmfriendresponse.c = true;
        }

        flag = true;
          goto _L8
_L3:
        getmfriendresponse.d = a1.a();
        getmfriendresponse.e = true;
        flag = true;
          goto _L8
_L4:
        LinkedList linkedlist = a1.a(3);
        for(int k = 0; k < linkedlist.size(); k++)
        {
            byte abyte1[] = (byte[])linkedlist.get(k);
            MFriend mfriend = new MFriend();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.MFriend.a(a2, mfriend, a(a2)));
            if(!getmfriendresponse.g)
                getmfriendresponse.g = true;
            getmfriendresponse.f.add(mfriend);
        }

        flag = true;
          goto _L8
        getmfriendresponse.h = a1.b();
        getmfriendresponse.i = true;
        flag = true;
          goto _L8
        return getmfriendresponse.f();
    }

    private GetMFriendResponse f()
    {
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" Count:").append(e).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        int j = 0 + c.a.a.a.a(2, d);
        if(i)
            j += c.a.a.a.b.a.b(4, h);
        return j + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(3, 8, f));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, 8, f);
        if(i)
            a1.a(4, h);
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

    public final LinkedList d()
    {
        return f;
    }

    public final String e()
    {
        return h;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Count = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("FriendList = ").append(f).append("   ").toString();
        if(i)
            s3 = (new StringBuilder()).append(s3).append("MD5 = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private LinkedList f;
    private boolean g;
    private String h;
    private boolean i;
}
