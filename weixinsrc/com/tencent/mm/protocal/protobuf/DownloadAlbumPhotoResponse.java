// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            ResponseProtoBuf, BaseResponse, SKBuiltinBuffer_t, AlbumPhotoId

public class DownloadAlbumPhotoResponse extends BaseProtoBuf
    implements ResponseProtoBuf
{

    public DownloadAlbumPhotoResponse()
    {
    }

    public static DownloadAlbumPhotoResponse a(byte abyte0[])
    {
        a a1;
        int i1;
        DownloadAlbumPhotoResponse downloadalbumphotoresponse;
        a1 = new a(abyte0, a);
        i1 = a(a1);
        downloadalbumphotoresponse = new DownloadAlbumPhotoResponse();
_L9:
        if(i1 <= 0)
            break MISSING_BLOCK_LABEL_463;
        i1;
        JVM INSTR tableswitch 1 6: default 68
    //                   1 88
    //                   2 194
    //                   3 213
    //                   4 232
    //                   5 338
    //                   6 444;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L7:
        break MISSING_BLOCK_LABEL_444;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        boolean flag = false;
_L10:
        if(!flag)
            a1.g();
        i1 = a(a1);
        if(true) goto _L9; else goto _L8
_L8:
        LinkedList linkedlist2 = a1.a(1);
        for(int l1 = 0; l1 < linkedlist2.size(); l1++)
        {
            byte abyte3[] = (byte[])linkedlist2.get(l1);
            BaseResponse baseresponse = new BaseResponse();
            a a4 = new a(abyte3, a);
            for(boolean flag3 = true; flag3; flag3 = com.tencent.mm.protocal.protobuf.BaseResponse.a(a4, baseresponse, a(a4)));
            downloadalbumphotoresponse.b = baseresponse;
            downloadalbumphotoresponse.c = true;
        }

        flag = true;
          goto _L10
_L3:
        downloadalbumphotoresponse.d = a1.a();
        downloadalbumphotoresponse.e = true;
        flag = true;
          goto _L10
_L4:
        downloadalbumphotoresponse.f = a1.a();
        downloadalbumphotoresponse.g = true;
        flag = true;
          goto _L10
_L5:
        LinkedList linkedlist1 = a1.a(4);
        for(int k1 = 0; k1 < linkedlist1.size(); k1++)
        {
            byte abyte2[] = (byte[])linkedlist1.get(k1);
            SKBuiltinBuffer_t skbuiltinbuffer_t = new SKBuiltinBuffer_t();
            a a3 = new a(abyte2, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.protocal.protobuf.SKBuiltinBuffer_t.a(a3, skbuiltinbuffer_t, a(a3)));
            downloadalbumphotoresponse.h = skbuiltinbuffer_t;
            downloadalbumphotoresponse.i = true;
        }

        flag = true;
          goto _L10
_L6:
        LinkedList linkedlist = a1.a(5);
        for(int j1 = 0; j1 < linkedlist.size(); j1++)
        {
            byte abyte1[] = (byte[])linkedlist.get(j1);
            AlbumPhotoId albumphotoid = new AlbumPhotoId();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.AlbumPhotoId.a(a2, albumphotoid, a(a2)));
            downloadalbumphotoresponse.j = albumphotoid;
            downloadalbumphotoresponse.k = true;
        }

        flag = true;
          goto _L10
        downloadalbumphotoresponse.l = a1.a();
        downloadalbumphotoresponse.m = true;
        flag = true;
          goto _L10
        return downloadalbumphotoresponse.h();
    }

    private DownloadAlbumPhotoResponse h()
    {
        if(!c || !e || !g || !i || !k || !m)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  BaseResponse:").append(c).append(" StartPos:").append(e).append(" TotalLen:").append(g).append(" Photo:").append(i).append(" PhotoId:").append(k).append(" Type:").append(m).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        return 0 + c.a.a.a.a(2, d) + c.a.a.a.a(3, f) + c.a.a.a.a(6, l) + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(4, h.a()) + c.a.a.a.b(5, j.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.a(2, d);
        a1.a(3, f);
        a1.b(4, h.a());
        h.a(a1);
        a1.b(5, j.a());
        j.a(a1);
        a1.a(6, l);
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

    public final SKBuiltinBuffer_t f()
    {
        return h;
    }

    public final AlbumPhotoId g()
    {
        return j;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("BaseResponse = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("StartPos = ").append(d).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("TotalLen = ").append(f).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("Photo = ").append(h).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("PhotoId = ").append(j).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("Type = ").append(l).append("   ").toString();
        return (new StringBuilder()).append(s6).append(")").toString();
    }

    private BaseResponse b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private SKBuiltinBuffer_t h;
    private boolean i;
    private AlbumPhotoId j;
    private boolean k;
    private int l;
    private boolean m;
}
