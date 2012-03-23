// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class KillProcessInfo extends g
{

    public KillProcessInfo()
    {
        process = "";
    }

    public KillProcessInfo(String s)
    {
        process = "";
        process = s;
    }

    public final String className()
    {
        return "QQPIM.KillProcessInfo";
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
        (new h(stringbuilder, i)).a(process, "process");
    }

    public final boolean equals(Object obj)
    {
        KillProcessInfo killprocessinfo = (KillProcessInfo)obj;
        return c.a(process, killprocessinfo.process);
    }

    public final String getProcess()
    {
        return process;
    }

    public final void readFrom(a a1)
    {
        process = a1.b(0, true);
    }

    public final void setProcess(String s)
    {
        process = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(process, 0);
    }

    static final boolean $assertionsDisabled;
    public String process;

    static 
    {
        boolean flag;
        if(!QQPIM/KillProcessInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
