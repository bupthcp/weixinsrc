// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, AlbumPhotoData

public class GetTLPhotoListNPResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public GetTLPhotoListNPResponse()
    {
        f = new LinkedList();
    }

    public static GetTLPhotoListNPResponse a(byte abyte0[])
    {
        a a1;
        int i;
        GetTLPhotoListNPResponse gettlphotolistnpresponse;
        a1 = new a(abyte0, a);
        i = a(a1);
        gettlphotolistnpresponse = new GetTLPhotoListNPResponse();
_L6:
        if(i <= 0)
            break MISSING_BLOCK_LABEL_318;
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
        LinkedList linkedlist1 = a1.a(1);
        for(int k = 0; k < linkedlist1.size(); k++)
        {
            byte abyte2[] = (byte[])linkedlist1.get(k);
            BaseResponse baseresponse = new BaseResponse();
            a a3 = new a(abyte2, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a3, baseresponse, a(a3)));
            gettlphotolistnpresponse.b = baseresponse;
            gettlphotolistnpresponse.c = true;
        }

        flag = true;
          goto _L7
_L3:
        gettlphotolistnpresponse.d = a1.a();
        gettlphotolistnpresponse.e = true;
        flag = true;
          goto _L7
        LinkedList linkedlist = a1.a(3);
        for(int j = 0; j < linkedlist.size(); j++)
        {
            byte abyte1[] = (byte[])linkedlist.get(j);
            AlbumPhotoData albumphotodata = new AlbumPhotoData();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.AlbumPhotoData.a(a2, albumphotodata, a(a2)));
            if(!gettlphotolistnpresponse.g)
                gettlphotolistnpresponse.g = true;
            gettlphotolistnpresponse.f.add(albumphotodata);
        }

        flag = true;
          goto _L7
        return gettlphotolistnpresponse.f();
    }

    private GetTLPhotoListNPResponse f()
    {
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" Count:").append(e).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(2, d) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(3, 8, f));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, 8, f);
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

    public final int d()
    {
        return d;
    }

    public final LinkedList e()
    {
        return f;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Count = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("PhotoList = ").append(f).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private LinkedList f;
    private boolean g;
}
