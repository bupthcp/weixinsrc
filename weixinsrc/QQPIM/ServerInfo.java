// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class ServerInfo extends g
{

    public ServerInfo()
    {
        time = 0;
    }

    public ServerInfo(int i)
    {
        time = 0;
        time = i;
    }

    public final String className()
    {
        return "QQPIM.ServerInfo";
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
        (new h(stringbuilder, i)).a(time, "time");
    }

    public final boolean equals(Object obj)
    {
        ServerInfo serverinfo = (ServerInfo)obj;
        return c.a(time, serverinfo.time);
    }

    public final int getTime()
    {
        return time;
    }

    public final void readFrom(a a1)
    {
        time = a1.a(time, 0, true);
    }

    public final void setTime(int i)
    {
        time = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(time, 0);
    }

    static final boolean $assertionsDisabled;
    public int time;

    static 
    {
        boolean flag;
        if(!QQPIM/ServerInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
