// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class SoftServerInfo extends g
{

    public SoftServerInfo()
    {
        status = 0;
    }

    public SoftServerInfo(int i)
    {
        status = 0;
        status = i;
    }

    public final String className()
    {
        return "QQPIM.SoftServerInfo";
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
        (new h(stringbuilder, i)).a(status, "status");
    }

    public final boolean equals(Object obj)
    {
        SoftServerInfo softserverinfo = (SoftServerInfo)obj;
        return c.a(status, softserverinfo.status);
    }

    public final int getStatus()
    {
        return status;
    }

    public final void readFrom(a a1)
    {
        status = a1.a(status, 0, true);
    }

    public final void setStatus(int i)
    {
        status = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(status, 0);
    }

    static final boolean $assertionsDisabled;
    public int status;

    static 
    {
        boolean flag;
        if(!QQPIM/SoftServerInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
