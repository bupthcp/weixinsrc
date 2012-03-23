// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal.protobuf;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.protocal.protobuf:
//            AlbumPhotoId, SKBuiltinBuffer_t

public class AlbumPhotoData extends BaseProtoBuf
{

    public AlbumPhotoData()
    {
    }

    protected static boolean a(a a1, AlbumPhotoData albumphotodata, int i)
    {
        boolean flag = false;
        i;
        JVM INSTR tableswitch 1 2: default 24
    //                   1 26
    //                   2 131;
           goto _L1 _L2 _L3
_L1:
        return flag;
_L2:
        LinkedList linkedlist1 = a1.a(1);
        for(int k = ((flag) ? 1 : 0); k < linkedlist1.size(); k++)
        {
            byte abyte1[] = (byte[])linkedlist1.get(k);
            AlbumPhotoId albumphotoid = new AlbumPhotoId();
            a a3 = new a(abyte1, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.protocal.protobuf.AlbumPhotoId.a(a3, albumphotoid, a(a3)));
            albumphotodata.b = albumphotoid;
            albumphotodata.c = true;
        }

        flag = true;
        continue; /* Loop/switch isn't completed */
_L3:
        LinkedList linkedlist = a1.a(2);
        for(int j = ((flag) ? 1 : 0); j < linkedlist.size(); j++)
        {
            byte abyte0[] = (byte[])linkedlist.get(j);
            SKBuiltinBuffer_t skbuiltinbuffer_t = new SKBuiltinBuffer_t();
            a a2 = new a(abyte0, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.protocal.protobuf.SKBuiltinBuffer_t.a(a2, skbuiltinbuffer_t, a(a2)));
            albumphotodata.d = skbuiltinbuffer_t;
            albumphotodata.e = true;
        }

        flag = true;
        if(true) goto _L1; else goto _L4
_L4:
    }

    public final int a()
    {
        return 0 + (0 + c.a.a.a.b(1, b.a()) + c.a.a.a.b(2, d.a()));
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.b(1, b.a());
        b.a(a1);
        a1.b(2, d.a());
        d.a(a1);
    }

    public final byte[] b()
    {
        if(!c || !e)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  PhotoId:").append(c).append(" AttrData:").append(e).append("").toString());
        else
            return super.b();
    }

    public final AlbumPhotoId c()
    {
        return b;
    }

    public final SKBuiltinBuffer_t d()
    {
        return d;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("PhotoId = ").append(b).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("AttrData = ").append(d).append("   ").toString();
        return (new StringBuilder()).append(s2).append(")").toString();
    }

    private AlbumPhotoId b;
    private boolean c;
    private SKBuiltinBuffer_t d;
    private boolean e;
}
