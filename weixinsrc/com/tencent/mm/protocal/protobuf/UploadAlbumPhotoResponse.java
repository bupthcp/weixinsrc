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

public class UploadAlbumPhotoResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public UploadAlbumPhotoResponse()
    {
    }

    public static UploadAlbumPhotoResponse a(byte abyte0[])
    {
        a a1;
        int l;
        UploadAlbumPhotoResponse uploadalbumphotoresponse;
        a1 = new a(abyte0, a);
        l = a(a1);
        uploadalbumphotoresponse = new UploadAlbumPhotoResponse();
_L8:
        if(l <= 0)
            break MISSING_BLOCK_LABEL_353;
        l;
        JVM INSTR tableswitch 1 5: default 64
    //                   1 84
    //                   2 190
    //                   3 209
    //                   4 228
    //                   5 334;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_334;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        boolean flag = false;
_L9:
        if(!flag)
            a1.g();
        l = a(a1);
        if(true) goto _L8; else goto _L7
_L7:
        LinkedList linkedlist1 = a1.a(1);
        for(int j1 = 0; j1 < linkedlist1.size(); j1++)
        {
            byte abyte2[] = (byte[])linkedlist1.get(j1);
            BaseResponse baseresponse = new BaseResponse();
            a a3 = new a(abyte2, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a3, baseresponse, a(a3)));
            uploadalbumphotoresponse.b = baseresponse;
            uploadalbumphotoresponse.c = true;
        }

        flag = true;
          goto _L9
_L3:
        uploadalbumphotoresponse.d = a1.a();
        uploadalbumphotoresponse.e = true;
        flag = true;
          goto _L9
_L4:
        uploadalbumphotoresponse.f = a1.a();
        uploadalbumphotoresponse.g = true;
        flag = true;
          goto _L9
_L5:
        LinkedList linkedlist = a1.a(4);
        for(int i1 = 0; i1 < linkedlist.size(); i1++)
        {
            byte abyte1[] = (byte[])linkedlist.get(i1);
            AlbumPhotoId albumphotoid = new AlbumPhotoId();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.AlbumPhotoId.a(a2, albumphotoid, a(a2)));
            uploadalbumphotoresponse.h = albumphotoid;
            uploadalbumphotoresponse.i = true;
        }

        flag = true;
          goto _L9
        uploadalbumphotoresponse.j = a1.b();
        uploadalbumphotoresponse.k = true;
        flag = true;
          goto _L9
        return uploadalbumphotoresponse.h();
    }

    private UploadAlbumPhotoResponse h()
    {
        if(!c || !e || !g || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" StartPos:").append(e).append(" TotalLen:").append(g).append(" PhotoId:").append(i).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        int l = 0 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f);
        if(k)
            l += c.a.a.a.b.a.b(5, j);
        return l + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(4, h.a()));
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
    }

    public final byte[] b()
    {
        h();
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

    public final int e()
    {
        return f;
    }

    public final AlbumPhotoId f()
    {
        return h;
    }

    public final String g()
    {
        return j;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("StartPos = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("TotalLen = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("PhotoId = ").append(h).append("   ").toString();
        if(k)
            s4 = (new StringBuilder()).append(s4).append("ClientId = ").append(j).append("   ").toString();
        return (new StringBuilder()).append(s4).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private AlbumPhotoId h;
    private boolean i;
    private String j;
    private boolean k;
}
