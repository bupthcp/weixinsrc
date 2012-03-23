// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class OpenUIInfo extends g
{

    public OpenUIInfo()
    {
        uiid = 0;
    }

    public OpenUIInfo(int i)
    {
        uiid = 0;
        uiid = i;
    }

    public final String className()
    {
        return "QQPIM.OpenUIInfo";
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
        (new h(stringbuilder, i)).a(uiid, "uiid");
    }

    public final boolean equals(Object obj)
    {
        OpenUIInfo openuiinfo = (OpenUIInfo)obj;
        return c.a(uiid, openuiinfo.uiid);
    }

    public final int getUiid()
    {
        return uiid;
    }

    public final void readFrom(a a1)
    {
        uiid = a1.a(uiid, 0, true);
    }

    public final void setUiid(int i)
    {
        uiid = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(uiid, 0);
    }

    static final boolean $assertionsDisabled;
    public int uiid;

    static 
    {
        boolean flag;
        if(!QQPIM/OpenUIInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
