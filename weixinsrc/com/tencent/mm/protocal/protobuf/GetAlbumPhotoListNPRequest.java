// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, AlbumPhotoId

public class GetAlbumPhotoListNPRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public GetAlbumPhotoListNPRequest()
    {
    }

    public final int a()
    {
        int j = 0;
        if(e)
            j = 0 + c.a.a.a.b.a.b(2, d);
        return j + c.a.a.a.a(4, h) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(3, f.a()));
    }

    public final GetAlbumPhotoListNPRequest a(AlbumPhotoId albumphotoid)
    {
        f = albumphotoid;
        g = true;
        return this;
    }

    public final GetAlbumPhotoListNPRequest a(BaseRequest baserequest)
    {
        b = baserequest;
        c = true;
        return this;
    }

    public final GetAlbumPhotoListNPRequest a(String s)
    {
        d = s;
        e = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        if(e)
            a1.a(2, d);
        a1.b(3, f.a());
        f.a(a1);
        a1.a(4, h);
    }

    public final byte[] b()
    {
        if(!c || !g || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" PhotoId:").append(g).append(" Type:").append(i).append("").toString());
        else
            return super.b();
    }

    public final GetAlbumPhotoListNPRequest c()
    {
        h = 1;
        i = true;
        return this;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("Username = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("PhotoId = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Type = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private String d;
    private boolean e;
    private AlbumPhotoId f;
    private boolean g;
    private int h;
    private boolean i;
}
