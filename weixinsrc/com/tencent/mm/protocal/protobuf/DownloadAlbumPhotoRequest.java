// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, AlbumPhotoId

public class DownloadAlbumPhotoRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public DownloadAlbumPhotoRequest()
    {
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f) + c.a.a.a.a(5, j) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(4, h.a()));
    }

    public final DownloadAlbumPhotoRequest a(int l)
    {
        d = l;
        e = true;
        return this;
    }

    public final DownloadAlbumPhotoRequest a(AlbumPhotoId albumphotoid)
    {
        h = albumphotoid;
        i = true;
        return this;
    }

    public final DownloadAlbumPhotoRequest a(BaseRequest baserequest)
    {
        b = baserequest;
        c = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, f);
        a1.b(4, h.a());
        h.a(a1);
        a1.a(5, j);
    }

    public final DownloadAlbumPhotoRequest b(int l)
    {
        f = l;
        g = true;
        return this;
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !k)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" StartPos:").append(e).append(" TotalLen:").append(g).append(" PhotoId:").append(i).append(" Type:").append(k).append("").toString());
        else
            return super.b();
    }

    public final DownloadAlbumPhotoRequest c()
    {
        j = 2;
        k = true;
        return this;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("StartPos = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("TotalLen = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("PhotoId = ").append(h).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("Type = ").append(j).append("   ").toString();
        return (new StringBuilder()).append(s5).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private AlbumPhotoId h;
    private boolean i;
    private int j;
    private boolean k;
}
