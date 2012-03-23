// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class SoftUpdateInfo extends g
{

    public SoftUpdateInfo()
    {
        url = "";
    }

    public SoftUpdateInfo(String s)
    {
        url = "";
        url = s;
    }

    public final String className()
    {
        return "QQPIM.SoftUpdateInfo";
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
        (new h(stringbuilder, i)).a(url, "url");
    }

    public final boolean equals(Object obj)
    {
        SoftUpdateInfo softupdateinfo = (SoftUpdateInfo)obj;
        return c.a(url, softupdateinfo.url);
    }

    public final String getUrl()
    {
        return url;
    }

    public final void readFrom(a a1)
    {
        url = a1.b(0, true);
    }

    public final void setUrl(String s)
    {
        url = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(url, 0);
    }

    static final boolean $assertionsDisabled;
    public String url;

    static 
    {
        boolean flag;
        if(!QQPIM/SoftUpdateInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
