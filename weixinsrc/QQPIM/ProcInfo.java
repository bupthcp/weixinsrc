// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class ProcInfo extends g
{

    public ProcInfo()
    {
        file = "";
        desc = "";
        uid = "";
    }

    public ProcInfo(String s, String s1, String s2)
    {
        file = "";
        desc = "";
        uid = "";
        file = s;
        desc = s1;
        uid = s2;
    }

    public final String className()
    {
        return "QQPIM.ProcInfo";
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
        h1.a(file, "file");
        h1.a(desc, "desc");
        h1.a(uid, "uid");
    }

    public final boolean equals(Object obj)
    {
        ProcInfo procinfo = (ProcInfo)obj;
        boolean flag;
        if(c.a(file, procinfo.file) && c.a(desc, procinfo.desc) && c.a(uid, procinfo.uid))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getDesc()
    {
        return desc;
    }

    public final String getFile()
    {
        return file;
    }

    public final String getUid()
    {
        return uid;
    }

    public final void readFrom(a a1)
    {
        file = a1.b(0, true);
        desc = a1.b(1, false);
        uid = a1.b(2, false);
    }

    public final void setDesc(String s)
    {
        desc = s;
    }

    public final void setFile(String s)
    {
        file = s;
    }

    public final void setUid(String s)
    {
        uid = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(file, 0);
        if(desc != null)
            e1.a(desc, 1);
        if(uid != null)
            e1.a(uid, 2);
    }

    static final boolean $assertionsDisabled;
    public String desc;
    public String file;
    public String uid;

    static 
    {
        boolean flag;
        if(!QQPIM/ProcInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
