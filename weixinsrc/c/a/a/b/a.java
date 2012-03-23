// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package c.a.a.b;

import c.a.a.a.a.b;
import com.tencent.mm.protobuf.ByteString;
import java.util.LinkedList;

public final class a
{

    public a(byte abyte0[], c.a.a.b.a.b b1)
    {
        c = 0;
        b = c.a.a.a.a.b.a(abyte0);
        a = b1;
    }

    public final int a()
    {
        return b.e();
    }

    public final LinkedList a(int i)
    {
        return b.a(i);
    }

    public final String b()
    {
        return b.f();
    }

    public final float c()
    {
        return b.c();
    }

    public final long d()
    {
        return b.d();
    }

    public final ByteString e()
    {
        return b.g();
    }

    public final int f()
    {
        c = b.a();
        return b(c);
    }

    public final void g()
    {
        int i;
        StringBuffer stringbuffer;
        i = c.a.a.a.a.a(c);
        stringbuffer = new StringBuffer();
        stringbuffer.append("FieldNumber: ").append(b(c)).append(" - ");
        i;
        JVM INSTR tableswitch 0 5: default 76
    //                   0 148
    //                   1 105
    //                   2 128
    //                   3 76
    //                   4 76
    //                   5 82;
           goto _L1 _L2 _L3 _L4 _L1 _L1 _L5
_L1:
        stringbuffer.toString();
        return;
_L5:
        stringbuffer.append("float value: ").append(Float.toString(b.c()));
        continue; /* Loop/switch isn't completed */
_L3:
        stringbuffer.append("double value: ").append(Double.toString(b.b()));
        continue; /* Loop/switch isn't completed */
_L4:
        stringbuffer.append("Length delimited (String or ByteString) value: ").append(b.f());
        continue; /* Loop/switch isn't completed */
_L2:
        stringbuffer.append("varint (long, int or boolean) value: ").append(b.h());
        if(true) goto _L1; else goto _L6
_L6:
    }

    private final c.a.a.b.a.b a;
    private final b b;
    private int c;
}
