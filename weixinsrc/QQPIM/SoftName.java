// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class SoftName extends g
{

    public SoftName()
    {
        uid = "";
        softname = "";
    }

    public SoftName(String s, String s1)
    {
        uid = "";
        softname = "";
        uid = s;
        softname = s1;
    }

    public final String className()
    {
        return "QQPIM.SoftName";
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
        h1.a(uid, "uid");
        h1.a(softname, "softname");
    }

    public final boolean equals(Object obj)
    {
        SoftName softname1 = (SoftName)obj;
        boolean flag;
        if(c.a(uid, softname1.uid) && c.a(softname, softname1.softname))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getSoftname()
    {
        return softname;
    }

    public final String getUid()
    {
        return uid;
    }

    public final void readFrom(a a1)
    {
        uid = a1.b(0, true);
        softname = a1.b(1, true);
    }

    public final void setSoftname(String s)
    {
        softname = s;
    }

    public final void setUid(String s)
    {
        uid = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(uid, 0);
        e1.a(softname, 1);
    }

    static final boolean $assertionsDisabled;
    public String softname;
    public String uid;

    static 
    {
        boolean flag;
        if(!QQPIM/SoftName.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
