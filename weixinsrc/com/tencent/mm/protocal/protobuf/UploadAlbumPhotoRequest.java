// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, SKBuiltinBuffer_t

public class UploadAlbumPhotoRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public UploadAlbumPhotoRequest()
    {
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f);
        if(k)
            i1 += 4 + c.a.a.a.b.a.a(5);
        if(m)
            i1 += 4 + c.a.a.a.b.a.a(6);
        int j1 = i1 + c.a.a.a.a(7, n);
        if(q)
            j1 += c.a.a.a.b.a.b(8, p);
        if(s)
            j1 += c.a.a.a.b.a.b(9, r);
        return j1 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(4, h.a()));
    }

    public final UploadAlbumPhotoRequest a(int i1)
    {
        d = i1;
        e = true;
        return this;
    }

    public final UploadAlbumPhotoRequest a(BaseRequest baserequest)
    {
        b = baserequest;
        c = true;
        return this;
    }

    public final UploadAlbumPhotoRequest a(SKBuiltinBuffer_t skbuiltinbuffer_t)
    {
        h = skbuiltinbuffer_t;
        i = true;
        return this;
    }

    public final UploadAlbumPhotoRequest a(String s1)
    {
        p = s1;
        q = true;
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
        if(k)
            a1.a(5, j);
        if(m)
            a1.a(6, l);
        a1.a(7, n);
        if(q)
            a1.a(8, p);
        if(s)
            a1.a(9, r);
    }

    public final UploadAlbumPhotoRequest b(int i1)
    {
        f = i1;
        g = true;
        return this;
    }

    public final UploadAlbumPhotoRequest b(String s1)
    {
        r = s1;
        s = true;
        return this;
    }

    public final byte[] b()
    {
        if(!c || !e || !g || !i || !o)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" StartPos:").append(e).append(" TotalLen:").append(g).append(" Photo:").append(i).append(" Type:").append(o).append("").toString());
        else
            return super.b();
    }

    public final UploadAlbumPhotoRequest c()
    {
        j = 0F;
        k = true;
        return this;
    }

    public final UploadAlbumPhotoRequest d()
    {
        l = 0F;
        m = true;
        return this;
    }

    public final UploadAlbumPhotoRequest e()
    {
        n = 1;
        o = true;
        return this;
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("BaseRequest = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("StartPos = ").append(d).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("TotalLen = ").append(f).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("Photo = ").append(h).append("   ").toString();
        if(k)
            s5 = (new StringBuilder()).append(s5).append("Longitude = ").append(j).append("   ").toString();
        if(m)
            s5 = (new StringBuilder()).append(s5).append("Latitude = ").append(l).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("Type = ").append(n).append("   ").toString();
        if(q)
            s6 = (new StringBuilder()).append(s6).append("ClientId = ").append(p).append("   ").toString();
        if(s)
            s6 = (new StringBuilder()).append(s6).append("Description = ").append(r).append("   ").toString();
        return (new StringBuilder()).append(s6).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private SKBuiltinBuffer_t h;
    private boolean i;
    private float j;
    private boolean k;
    private float l;
    private boolean m;
    private int n;
    private boolean o;
    private String p;
    private boolean q;
    private String r;
    private boolean s;
}
