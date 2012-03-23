// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class VirusClientInfo extends g
{

    public VirusClientInfo()
    {
        timestamp = 0;
        version = 0;
    }

    public VirusClientInfo(int i, int j)
    {
        timestamp = 0;
        version = 0;
        timestamp = i;
        version = j;
    }

    public final String className()
    {
        return "QQPIM.VirusClientInfo";
    }

    public final Object clone()
    {
        Object obj = null;
        Object obj1 = super.clone();
        obj = obj1;
_L2:
        return obj;
        CloneNotSupportedException clonenotsupportedexception;
        clonenotsupportedexception;
        if(!$assertionsDisabled)
            throw new AssertionError();
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void display(StringBuilder stringbuilder, int i)
    {
        h h1 = new h(stringbuilder, i);
        h1.a(timestamp, "timestamp");
        h1.a(version, "version");
    }

    public final boolean equals(Object obj)
    {
        VirusClientInfo virusclientinfo = (VirusClientInfo)obj;
        boolean flag;
        if(c.a(timestamp, virusclientinfo.timestamp) && c.a(version, virusclientinfo.version))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getTimestamp()
    {
        return timestamp;
    }

    public final int getVersion()
    {
        return version;
    }

    public final void readFrom(a a1)
    {
        timestamp = a1.a(timestamp, 0, true);
        version = a1.a(version, 1, true);
    }

    public final void setTimestamp(int i)
    {
        timestamp = i;
    }

    public final void setVersion(int i)
    {
        version = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(timestamp, 0);
        e1.a(version, 1);
    }

    static final boolean $assertionsDisabled;
    public int timestamp;
    public int version;

    static 
    {
        boolean flag;
        if(!QQPIM/VirusClientInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
