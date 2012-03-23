// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class SUI extends g
{

    public SUI()
    {
        id = 0;
        time = 0;
        desc = "";
    }

    public SUI(int i, int j, String s)
    {
        id = 0;
        time = 0;
        desc = "";
        id = i;
        time = j;
        desc = s;
    }

    public final String className()
    {
        return "QQPIM.SUI";
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
        h1.a(id, "id");
        h1.a(time, "time");
        h1.a(desc, "desc");
    }

    public final boolean equals(Object obj)
    {
        SUI sui = (SUI)obj;
        boolean flag;
        if(c.a(id, sui.id) && c.a(time, sui.time) && c.a(desc, sui.desc))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getDesc()
    {
        return desc;
    }

    public final int getId()
    {
        return id;
    }

    public final int getTime()
    {
        return time;
    }

    public final void readFrom(a a1)
    {
        id = a1.a(id, 0, true);
        time = a1.a(time, 1, true);
        desc = a1.b(2, true);
    }

    public final void setDesc(String s)
    {
        desc = s;
    }

    public final void setId(int i)
    {
        id = i;
    }

    public final void setTime(int i)
    {
        time = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(id, 0);
        e1.a(time, 1);
        e1.a(desc, 2);
    }

    static final boolean $assertionsDisabled = false;
    private static final long serialVersionUID = 0x95a5b38fec75e879L;
    public String desc;
    public int id;
    public int time;

    static 
    {
        boolean flag;
        if(!QQPIM/SUI.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
