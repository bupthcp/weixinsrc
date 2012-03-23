// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class ForbidInstallInfo extends g
{

    public ForbidInstallInfo()
    {
        option = 0;
        uid = "";
    }

    public ForbidInstallInfo(int i, String s)
    {
        option = 0;
        uid = "";
        option = i;
        uid = s;
    }

    public final String className()
    {
        return "QQPIM.ForbidInstallInfo";
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
        h1.a(uid, "uid");
    }

    public final boolean equals(Object obj)
    {
        ForbidInstallInfo forbidinstallinfo = (ForbidInstallInfo)obj;
        boolean flag;
        if(c.a(option, forbidinstallinfo.option) && c.a(uid, forbidinstallinfo.uid))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getOption()
    {
        return option;
    }

    public final String getUid()
    {
        return uid;
    }

    public final void readFrom(a a1)
    {
        option = a1.a(option, 0, true);
        uid = a1.b(1, true);
    }

    public final void setOption(int i)
    {
        option = i;
    }

    public final void setUid(String s)
    {
        uid = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(option, 0);
        e1.a(uid, 1);
    }

    static final boolean $assertionsDisabled;
    public int option;
    public String uid;

    static 
    {
        boolean flag;
        if(!QQPIM/ForbidInstallInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
