// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package c.a.a;

import com.tencent.mm.protobuf.ByteString;
import java.util.LinkedList;

// Referenced classes of package c.a.a:
//            b

public final class a
{

    private a()
    {
    }

    public static int a(int i, int j)
    {
        int k;
        if(j >= 0)
            k = c.a.a.a.b.a.a(i) + c.a.a.a.b.a.b(j);
        else
            k = 10 + c.a.a.a.b.a.a(i);
        return k;
    }

    public static int a(int i, int j, LinkedList linkedlist)
    {
        if(linkedlist == null)
            break MISSING_BLOCK_LABEL_428;
        j;
        JVM INSTR tableswitch 1 8: default 52
    //                   1 297
    //                   2 211
    //                   3 254
    //                   4 118
    //                   5 165
    //                   6 76
    //                   7 337
    //                   8 383;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L1:
        throw new IllegalArgumentException((new StringBuilder("The data type was not found, the id used was ")).append(j).toString());
_L7:
        int k;
        int j4;
        k = 0;
        j4 = 0;
_L12:
        if(j4 < linkedlist.size()) goto _L11; else goto _L10
_L10:
        return k;
_L11:
        int k4 = k + a(i, (ByteString)linkedlist.get(j4));
        j4++;
        k = k4;
          goto _L12
_L5:
        k = 0;
        int l3 = 0;
        while(l3 < linkedlist.size()) 
        {
            ((Double)linkedlist.get(l3)).doubleValue();
            int i4 = k + (8 + c.a.a.a.b.a.a(i));
            l3++;
            k = i4;
        }
          goto _L10
_L6:
        k = 0;
        int j3 = 0;
        while(j3 < linkedlist.size()) 
        {
            ((Float)linkedlist.get(j3)).floatValue();
            int k3 = k + (4 + c.a.a.a.b.a.a(i));
            j3++;
            k = k3;
        }
          goto _L10
_L3:
        k = 0;
        int l2 = 0;
        while(l2 < linkedlist.size()) 
        {
            int i3 = k + a(i, ((Integer)linkedlist.get(l2)).intValue());
            l2++;
            k = i3;
        }
          goto _L10
_L4:
        k = 0;
        int j2 = 0;
        while(j2 < linkedlist.size()) 
        {
            int k2 = k + c.a.a.a.b.a.b(i, ((Long)linkedlist.get(j2)).longValue());
            j2++;
            k = k2;
        }
          goto _L10
_L2:
        k = 0;
        int l1 = 0;
        while(l1 < linkedlist.size()) 
        {
            int i2 = k + c.a.a.a.b.a.b(i, (String)linkedlist.get(l1));
            l1++;
            k = i2;
        }
          goto _L10
_L8:
        k = 0;
        int j1 = 0;
        while(j1 < linkedlist.size()) 
        {
            ((Boolean)linkedlist.get(j1)).booleanValue();
            int k1 = k + (1 + c.a.a.a.b.a.a(i));
            j1++;
            k = k1;
        }
          goto _L10
_L9:
        k = 0;
        int l = 0;
        while(l < linkedlist.size()) 
        {
            int i1 = k + b(i, ((b)linkedlist.get(l)).a());
            l++;
            k = i1;
        }
          goto _L10
        k = 0;
          goto _L10
    }

    public static int a(int i, long l)
    {
        return c.a.a.a.b.a.b(i, l);
    }

    public static int a(int i, ByteString bytestring)
    {
        int j;
        if(bytestring == null)
            j = 0;
        else
            j = c.a.a.a.b.a.a(i) + c.a.a.a.b.a.b(bytestring.a()) + bytestring.a();
        return j;
    }

    public static int a(int i, String s)
    {
        return c.a.a.a.b.a.b(i, s);
    }

    public static int b(int i, int j)
    {
        return j + (c.a.a.a.b.a.a(i) + c.a.a.a.b.a.b(j));
    }
}
