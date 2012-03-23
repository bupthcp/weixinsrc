// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class InstallInfo extends g
{

    public InstallInfo()
    {
        option = 0;
        url = "";
    }

    public InstallInfo(int i, String s)
    {
        option = 0;
        url = "";
        option = i;
        url = s;
    }

    public final String className()
    {
        return "QQPIM.InstallInfo";
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
        h1.a(option, "option");
        h1.a(url, "url");
    }

    public final boolean equals(Object obj)
    {
        InstallInfo installinfo = (InstallInfo)obj;
        boolean flag;
        if(c.a(option, installinfo.option) && c.a(url, installinfo.url))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getOption()
    {
        return option;
    }

    public final String getUrl()
    {
        return url;
    }

    public final void readFrom(a a1)
    {
        option = a1.a(option, 0, true);
        url = a1.b(1, true);
    }

    public final void setOption(int i)
    {
        option = i;
    }

    public final void setUrl(String s)
    {
        url = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(option, 0);
        e1.a(url, 1);
    }

    static final boolean $assertionsDisabled;
    public int option;
    public String url;

    static 
    {
        boolean flag;
        if(!QQPIM/InstallInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
