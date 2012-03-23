// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            RequestProtoBuf, BaseRequest, EmojiUploadInfoReq

public class UploadEmojiRequest extends BaseProtoBuf
    implements RequestProtoBuf
{

    public UploadEmojiRequest()
    {
        f = new LinkedList();
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(2, d) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.a(3, 8, f));
    }

    public final UploadEmojiRequest a(int i)
    {
        d = i;
        e = true;
        return this;
    }

    public final UploadEmojiRequest a(BaseRequest baserequest)
    {
        b = baserequest;
        c = true;
        return this;
    }

    public final UploadEmojiRequest a(EmojiUploadInfoReq emojiuploadinforeq)
    {
        if(!g)
            g = true;
        f.add(emojiuploadinforeq);
        return this;
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
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseRequest:").append(c).append(" EmojiItemCount:").append(e).append("").toString());
        else
            return super.b();
    }

    public final LinkedList c()
    {
        return f;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseRequest = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("EmojiItemCount = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("EmojiItem = ").append(f).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private BaseRequest b;
    private boolean c;
    private int d;
    private boolean e;
    private LinkedList f;
    private boolean g;
}
