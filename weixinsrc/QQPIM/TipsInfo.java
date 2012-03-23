// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class TipsInfo extends g
{

    public TipsInfo()
    {
        title = "";
        msg = "";
        type = 0;
        atype = 0;
    }

    public TipsInfo(String s, String s1, int i, int j)
    {
        title = "";
        msg = "";
        type = 0;
        atype = 0;
        title = s;
        msg = s1;
        type = i;
        atype = j;
    }

    public final String className()
    {
        return "QQPIM.TipsInfo";
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
        h1.a(title, "title");
        h1.a(msg, "msg");
        h1.a(type, "type");
        h1.a(atype, "atype");
    }

    public final boolean equals(Object obj)
    {
        TipsInfo tipsinfo = (TipsInfo)obj;
        boolean flag;
        if(c.a(title, tipsinfo.title) && c.a(msg, tipsinfo.msg) && c.a(type, tipsinfo.type) && c.a(atype, tipsinfo.atype))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getAtype()
    {
        return atype;
    }

    public final String getMsg()
    {
        return msg;
    }

    public final String getTitle()
    {
        return title;
    }

    public final int getType()
    {
        return type;
    }

    public final void readFrom(a a1)
    {
        title = a1.b(0, true);
        msg = a1.b(1, true);
        type = a1.a(type, 2, true);
        atype = a1.a(atype, 3, true);
    }

    public final void setAtype(int i)
    {
        atype = i;
    }

    public final void setMsg(String s)
    {
        msg = s;
    }

    public final void setTitle(String s)
    {
        title = s;
    }

    public final void setType(int i)
    {
        type = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(title, 0);
        e1.a(msg, 1);
        e1.a(type, 2);
        e1.a(atype, 3);
    }

    static final boolean $assertionsDisabled;
    public int atype;
    public String msg;
    public String title;
    public int type;

    static 
    {
        boolean flag;
        if(!QQPIM/TipsInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
