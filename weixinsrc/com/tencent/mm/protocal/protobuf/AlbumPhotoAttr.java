// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            LikeUserInfo

public class AlbumPhotoAttr extends BaseProtoBuf
{

    public AlbumPhotoAttr()
    {
        n = new LinkedList();
    }

    public static AlbumPhotoAttr a(byte abyte0[])
    {
        a a1 = new a(abyte0, a);
        int i1 = a(a1);
        AlbumPhotoAttr albumphotoattr = new AlbumPhotoAttr();
        for(; i1 > 0; i1 = a(a1))
            if(!a(a1, albumphotoattr, i1))
                a1.g();

        return albumphotoattr.i();
    }

    protected static boolean a(a a1, AlbumPhotoAttr albumphotoattr, int i1)
    {
        boolean flag = false;
        i1;
        JVM INSTR tableswitch 1 9: default 52
    //                   1 54
    //                   2 72
    //                   3 90
    //                   4 108
    //                   5 126
    //                   6 144
    //                   7 162
    //                   8 279
    //                   9 297;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L1:
        return flag;
_L2:
        albumphotoattr.b = a1.c();
        albumphotoattr.c = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L3:
        albumphotoattr.d = a1.c();
        albumphotoattr.e = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L4:
        albumphotoattr.f = a1.b();
        albumphotoattr.g = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L5:
        albumphotoattr.h = a1.b();
        albumphotoattr.i = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L6:
        albumphotoattr.j = a1.b();
        albumphotoattr.k = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L7:
        albumphotoattr.l = a1.a();
        albumphotoattr.m = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L8:
        LinkedList linkedlist = a1.a(7);
        for(int j1 = ((flag) ? 1 : 0); j1 < linkedlist.size(); j1++)
        {
            byte abyte0[] = (byte[])linkedlist.get(j1);
            LikeUserInfo likeuserinfo = new LikeUserInfo();
            a a2 = new a(abyte0, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.LikeUserInfo.a(a2, likeuserinfo, a(a2)));
            if(!albumphotoattr.o)
                albumphotoattr.o = true;
            albumphotoattr.n.add(likeuserinfo);
        }

        flag = true;
        continue; /* Loop/switch isn't completed */
_L9:
        albumphotoattr.p = a1.a();
        albumphotoattr.q = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L10:
        albumphotoattr.r = a1.b();
        albumphotoattr.s = true;
        flag = true;
        if(true) goto _L1; else goto _L11
_L11:
    }

    private AlbumPhotoAttr i()
    {
        if(!c || !e || !m || !q)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Longitude:").append(c).append(" Latitude:").append(e).append(" LikeCount:").append(m).append(" LikeFlag:").append(q).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        int i1 = 0 + (4 + c.a.a.a.b.a.a(1)) + (4 + c.a.a.a.b.a.a(2));
        if(g)
            i1 += c.a.a.a.b.a.b(3, f);
        if(i)
            i1 += c.a.a.a.b.a.b(4, h);
        if(k)
            i1 += c.a.a.a.b.a.b(5, j);
        int j1 = i1 + c.a.a.a.a(6, l) + c.a.a.a.a(8, p);
        if(s)
            j1 += c.a.a.a.b.a.b(9, r);
        return j1 + (0 + c.a.a.a.a(7, 8, n));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        a1.a(2, d);
        if(g)
            a1.a(3, f);
        if(i)
            a1.a(4, h);
        if(k)
            a1.a(5, j);
        a1.a(6, l);
        a1.a(7, 8, n);
        a1.a(8, p);
        if(s)
            a1.a(9, r);
    }

    public final byte[] b()
    {
        i();
        return super.b();
    }

    public final float c()
    {
        return b;
    }

    public final float d()
    {
        return d;
    }

    public final String e()
    {
        return f;
    }

    public final String f()
    {
        return h;
    }

    public final int g()
    {
        return l;
    }

    public final int h()
    {
        return p;
    }

    public String toString()
    {
        String s1 = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s2 = (new StringBuilder()).append(s1).append("Longitude = ").append(b).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("Latitude = ").append(d).append("   ").toString();
        if(g)
            s3 = (new StringBuilder()).append(s3).append("CNCity = ").append(f).append("   ").toString();
        if(i)
            s3 = (new StringBuilder()).append(s3).append("TWCity = ").append(h).append("   ").toString();
        if(k)
            s3 = (new StringBuilder()).append(s3).append("ENCity = ").append(j).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("LikeCount = ").append(l).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("LikeUserList = ").append(n).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("LikeFlag = ").append(p).append("   ").toString();
        if(s)
            s6 = (new StringBuilder()).append(s6).append("Description = ").append(r).append("   ").toString();
        return (new StringBuilder()).append(s6).append(")").toString();
    }

    private float b;
    private boolean c;
    private float d;
    private boolean e;
    private String f;
    private boolean g;
    private String h;
    private boolean i;
    private String j;
    private boolean k;
    private int l;
    private boolean m;
    private LinkedList n;
    private boolean o;
    private int p;
    private boolean q;
    private String r;
    private boolean s;
}
