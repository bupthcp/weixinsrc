// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package c.a.a.c;

import c.a.a.b;
import com.tencent.mm.protobuf.ByteString;
import java.io.OutputStream;
import java.util.LinkedList;

public final class a
{

    public a(byte abyte0[])
    {
        a = abyte0;
        c = c.a.a.a.b.a.a(abyte0);
    }

    public final void a()
    {
        if(b != null)
        {
            b.write(a);
            b.flush();
        }
    }

    public final void a(int i, double d)
    {
        c.a(i, d);
    }

    public final void a(int i, float f)
    {
        c.a(i, f);
    }

    public final void a(int i, int j)
    {
        c.a(i, j);
    }

    public final void a(int i, int j, LinkedList linkedlist)
    {
        if(linkedlist == null) goto _L2; else goto _L1
_L1:
        j;
        JVM INSTR tableswitch 1 8: default 52
    //                   1 249
    //                   2 179
    //                   3 214
    //                   4 109
    //                   5 144
    //                   6 76
    //                   7 281
    //                   8 323;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L11:
        break MISSING_BLOCK_LABEL_323;
_L3:
        throw new IllegalArgumentException((new StringBuilder("The data type was not found, the id used was ")).append(j).toString());
_L9:
        int j2 = 0;
_L13:
        if(j2 < linkedlist.size()) goto _L12; else goto _L2
_L2:
        return;
_L12:
        a(i, (ByteString)linkedlist.get(j2));
        j2++;
          goto _L13
_L7:
        int i2 = 0;
        while(i2 < linkedlist.size()) 
        {
            a(i, ((Double)linkedlist.get(i2)).doubleValue());
            i2++;
        }
          goto _L2
_L8:
        int l1 = 0;
        while(l1 < linkedlist.size()) 
        {
            a(i, ((Float)linkedlist.get(l1)).floatValue());
            l1++;
        }
          goto _L2
_L5:
        int k1 = 0;
        while(k1 < linkedlist.size()) 
        {
            a(i, ((Integer)linkedlist.get(k1)).intValue());
            k1++;
        }
          goto _L2
_L6:
        int j1 = 0;
        while(j1 < linkedlist.size()) 
        {
            a(i, ((Long)linkedlist.get(j1)).longValue());
            j1++;
        }
          goto _L2
_L4:
        int i1 = 0;
        while(i1 < linkedlist.size()) 
        {
            a(i, (String)linkedlist.get(i1));
            i1++;
        }
          goto _L2
_L10:
        int l = 0;
        while(l < linkedlist.size()) 
        {
            boolean flag = ((Boolean)linkedlist.get(l)).booleanValue();
            c.a(i, flag);
            l++;
        }
          goto _L2
        int k = 0;
        while(k < linkedlist.size()) 
        {
            b b1 = (b)linkedlist.get(k);
            b(i, b1.a());
            b1.a(this);
            k++;
        }
          goto _L2
    }

    public final void a(int i, long l)
    {
        c.a(i, l);
    }

    public final void a(int i, ByteString bytestring)
    {
        c.a(i, bytestring);
    }

    public final void a(int i, String s)
    {
        c.a(i, s);
    }

    public final void b(int i, int j)
    {
        c.b(i, j);
    }

    private final byte a[];
    private final OutputStream b = null;
    private final c.a.a.a.b.a c;
}
