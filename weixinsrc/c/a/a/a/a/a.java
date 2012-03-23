// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package c.a.a.a.a;

import java.io.IOException;

public final class a extends IOException
{

    public a(String s)
    {
        super(s);
    }

    static a a()
    {
        return new a("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    static a b()
    {
        return new a("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static a c()
    {
        return new a("CodedInputStream encountered a malformed varint.");
    }
}
