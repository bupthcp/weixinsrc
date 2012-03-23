// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, AlbumPhotoId

public class GetLatestTLPhotoResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public GetLatestTLPhotoResponse()
    {
    }

    public static GetLatestTLPhotoResponse a(byte abyte0[])
    {
        a a1;
        int i;
        GetLatestTLPhotoResponse getlatesttlphotoresponse;
        a1 = new a(abyte0, a);
        i = a(a1);
        getlatesttlphotoresponse = new GetLatestTLPhotoResponse();
_L2:
        boolean flag;
        if(i <= 0)
            break MISSING_BLOCK_LABEL_284;
        switch(i)
        {
        default:
            flag = false;
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_178;
        }
_L3:
        if(!flag)
            a1.g();
        i = a(a1);
        if(true) goto _L2; else goto _L1
_L1:
        LinkedList linkedlist1 = a1.a(1);
        for(int k = 0; k < linkedlist1.size(); k++)
        {
            byte abyte2[] = (byte[])linkedlist1.get(k);
            BaseResponse baseresponse = new BaseResponse();
            a a3 = new a(abyte2, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a3, baseresponse, a(a3)));
            getlatesttlphotoresponse.b = baseresponse;
            getlatesttlphotoresponse.c = true;
        }

        flag = true;
          goto _L3
        LinkedList linkedlist = a1.a(2);
        for(int j = 0; j < linkedlist.size(); j++)
        {
            byte abyte1[] = (byte[])linkedlist.get(j);
            AlbumPhotoId albumphotoid = new AlbumPhotoId();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.AlbumPhotoId.a(a2, albumphotoid, a(a2)));
            getlatesttlphotoresponse.d = albumphotoid;
            getlatesttlphotoresponse.e = true;
        }

        flag = true;
          goto _L3
        return getlatesttlphotoresponse.d();
    }

    private GetLatestTLPhotoResponse d()
    {
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" PhotoId:").append(e).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        return 0 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.b(2, d.a());
        d.a(a1);
    }

    public final byte[] b()
    {
        d();
        return super.b();
    }

    public final BaseResponse c()
    {
        return b;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("PhotoId = ").append(d).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private AlbumPhotoId d;
    private boolean e;
}
