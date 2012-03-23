// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            SKBuiltinBuffer_t

public class AlbumPhoto extends BaseProtoBuf
{

    public AlbumPhoto()
    {
    }

    protected static boolean a(a a1, AlbumPhoto albumphoto, int j)
    {
        boolean flag = false;
        j;
        JVM INSTR tableswitch 1 4: default 32
    //                   1 34
    //                   2 52
    //                   3 70
    //                   4 175;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        return flag;
_L2:
        albumphoto.b = a1.b();
        albumphoto.c = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L3:
        albumphoto.d = a1.a();
        albumphoto.e = true;
        flag = true;
        continue; /* Loop/switch isn't completed */
_L4:
        LinkedList linkedlist = a1.a(3);
        for(int k = ((flag) ? 1 : 0); k < linkedlist.size(); k++)
        {
            byte abyte0[] = (byte[])linkedlist.get(k);
            SKBuiltinBuffer_t skbuiltinbuffer_t = new SKBuiltinBuffer_t();
            a a2 = new a(abyte0, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.SKBuiltinBuffer_t.a(a2, skbuiltinbuffer_t, a(a2)));
            albumphoto.f = skbuiltinbuffer_t;
            albumphoto.g = true;
        }

        flag = true;
        continue; /* Loop/switch isn't completed */
_L5:
        albumphoto.h = a1.a();
        albumphoto.i = true;
        flag = true;
        if(true) goto _L1; else goto _L6
_L6:
    }

    public final int a()
    {
        int j = 0;
        if(c)
            j = 0 + c.a.a.a.b.a.b(1, b);
        return j + c.a.a.a.a(2, d) + c.a.a.a.a(4, h) + (0 + c.a.a.a.b(3, f.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        if(c)
            a1.a(1, b);
        a1.a(2, d);
        a1.b(3, f.a());
        f.a(a1);
        a1.a(4, h);
    }

    public final byte[] b()
    {
        if(!e || !g || !i)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  Type:").append(e).append(" Photo:").append(g).append(" DelFlag:").append(i).append("").toString());
        else
            return super.b();
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        if(c)
            s = (new StringBuilder()).append(s).append("Id = ").append(b).append("   ").toString();
        String s1 = (new StringBuilder()).append(s).append("Type = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("Photo = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("DelFlag = ").append(h).append("   ").toString();
        return (new StringBuilder()).append(s3).append(")").toString();
    }

    private String b;
    private boolean c;
    private int d;
    private boolean e;
    private SKBuiltinBuffer_t f;
    private boolean g;
    private int h;
    private boolean i;
}
