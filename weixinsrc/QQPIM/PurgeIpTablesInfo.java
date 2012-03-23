// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class PurgeIpTablesInfo extends g
{

    public PurgeIpTablesInfo()
    {
        uid = "";
    }

    public PurgeIpTablesInfo(String s)
    {
        uid = "";
        uid = s;
    }

    public final String className()
    {
        return "QQPIM.PurgeIpTablesInfo";
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
        (new h(stringbuilder, i)).a(uid, "uid");
    }

    public final boolean equals(Object obj)
    {
        PurgeIpTablesInfo purgeiptablesinfo = (PurgeIpTablesInfo)obj;
        return c.a(uid, purgeiptablesinfo.uid);
    }

    public final String getUid()
    {
        return uid;
    }

    public final void readFrom(a a1)
    {
        uid = a1.b(0, true);
    }

    public final void setUid(String s)
    {
        uid = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(uid, 0);
    }

    static final boolean $assertionsDisabled;
    public String uid;

    static 
    {
        boolean flag;
        if(!QQPIM/PurgeIpTablesInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
