// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.a.a.a;

import java.io.Serializable;

// Referenced classes of package com.a.a.a:
//            e, a

public abstract class g
    implements Serializable
{

    public g()
    {
    }

    public boolean containField(String s)
    {
        return false;
    }

    public abstract void display(StringBuilder stringbuilder, int i);

    public Object getFieldByName(String s)
    {
        return null;
    }

    public g newInit()
    {
        return null;
    }

    public abstract void readFrom(a a);

    public void recyle()
    {
    }

    public void setFieldByName(String s, Object obj)
    {
    }

    public byte[] toByteArray()
    {
        e e1 = new e();
        writeTo(e1);
        return e1.b();
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        display(stringbuilder, 0);
        return stringbuilder.toString();
    }

    public abstract void writeTo(e e1);

    public static final byte BYTE = 0;
    public static final byte DOUBLE = 5;
    public static final byte FLOAT = 4;
    public static final byte INT = 2;
    public static final int JCE_MAX_STRING_LENGTH = 0x6400000;
    public static final byte LIST = 9;
    public static final byte LONG = 3;
    public static final byte MAP = 8;
    public static final byte SHORT = 1;
    public static final byte SIMPLE_LIST = 13;
    public static final byte STRING1 = 6;
    public static final byte STRING4 = 7;
    public static final byte STRUCT_BEGIN = 10;
    public static final byte STRUCT_END = 11;
    public static final byte ZERO_TAG = 12;
}
