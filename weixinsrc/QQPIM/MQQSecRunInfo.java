// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class MQQSecRunInfo extends g
{

    public MQQSecRunInfo()
    {
        option = 0;
    }

    public MQQSecRunInfo(int i)
    {
        option = 0;
        option = i;
    }

    public final String className()
    {
        return "QQPIM.MQQSecRunInfo";
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
        (new h(stringbuilder, i)).a(option, "option");
    }

    public final boolean equals(Object obj)
    {
        MQQSecRunInfo mqqsecruninfo = (MQQSecRunInfo)obj;
        return c.a(option, mqqsecruninfo.option);
    }

    public final int getOption()
    {
        return option;
    }

    public final void readFrom(a a1)
    {
        option = a1.a(option, 0, true);
    }

    public final void setOption(int i)
    {
        option = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(option, 0);
    }

    static final boolean $assertionsDisabled;
    public int option;

    static 
    {
        boolean flag;
        if(!QQPIM/MQQSecRunInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
