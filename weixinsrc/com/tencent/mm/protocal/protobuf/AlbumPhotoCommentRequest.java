// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, AlbumPhotoId, CommentInfo

public class AlbumPhotoCommentRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public AlbumPhotoCommentRequest()
    {
    }

    public final int a()
    {
        int j = 0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()) + c.a.a.a.b(3, f.a());
        if(i)
            j += c.a.a.a.b(4, h.a());
        return j + 0;
    }

    public final AlbumPhotoCommentRequest a(BaseRequest baserequest)
    {
        b = baserequest;
        c = true;
        return this;
    }

    public final AlbumPhotoCommentRequest a(CommentInfo commentinfo)
    {
        f = commentinfo;
        g = true;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.b(2, d.a());
        d.a(a1);
        a1.b(3, f.a());
        f.a(a1);
        if(i)
        {
            a1.b(4, h.a());
            h.a(a1);
        }
    }

    public final AlbumPhotoCommentRequest b(CommentInfo commentinfo)
    {
        h = commentinfo;
        i = true;
        return this;
    }

    public final byte[] b()
    {
        if(!c || !e || !g)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" PhotoId:").append(e).append(" CommentInfo:").append(g).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("PhotoId = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("CommentInfo = ").append(f).append("   ").toString();
        if(i)
            s3 = (new StringBuilder()).append(s3).append("ReferCommentInfo = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private AlbumPhotoId d;
    private boolean e;
    private CommentInfo f;
    private boolean g;
    private CommentInfo h;
    private boolean i;
}
