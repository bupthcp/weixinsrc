// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class BaseInfo extends g
{

    public BaseInfo()
    {
        tipsid = "";
    }

    public BaseInfo(String s)
    {
        tipsid = "";
        tipsid = s;
    }

    public final String className()
    {
        return "QQPIM.BaseInfo";
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
        (new h(stringbuilder, i)).a(tipsid, "tipsid");
    }

    public final boolean equals(Object obj)
    {
        BaseInfo baseinfo = (BaseInfo)obj;
        return c.a(tipsid, baseinfo.tipsid);
    }

    public final String getTipsid()
    {
        return tipsid;
    }

    public final void readFrom(a a1)
    {
        tipsid = a1.b(0, true);
    }

    public final void setTipsid(String s)
    {
        tipsid = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(tipsid, 0);
    }

    static final boolean $assertionsDisabled;
    public String tipsid;

    static 
    {
        boolean flag;
        if(!QQPIM/BaseInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
