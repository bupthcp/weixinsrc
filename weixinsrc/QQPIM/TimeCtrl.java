// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class TimeCtrl extends g
{

    public TimeCtrl()
    {
        time = 0;
        bEngross = true;
    }

    public TimeCtrl(int i, boolean flag)
    {
        time = 0;
        bEngross = true;
        time = i;
        bEngross = flag;
    }

    public final String className()
    {
        return "QQPIM.TimeCtrl";
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
        h1.a(time, "time");
        h1.a(bEngross, "bEngross");
    }

    public final boolean equals(Object obj)
    {
        TimeCtrl timectrl = (TimeCtrl)obj;
        boolean flag;
        if(c.a(time, timectrl.time) && c.a(bEngross, timectrl.bEngross))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean getBEngross()
    {
        return bEngross;
    }

    public final int getTime()
    {
        return time;
    }

    public final void readFrom(a a1)
    {
        time = a1.a(time, 0, true);
        bEngross = a1.a(1, true);
    }

    public final void setBEngross(boolean flag)
    {
        bEngross = flag;
    }

    public final void setTime(int i)
    {
        time = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(time, 0);
        e1.a(bEngross, 1);
    }

    static final boolean $assertionsDisabled;
    public boolean bEngross;
    public int time;

    static 
    {
        boolean flag;
        if(!QQPIM/TimeCtrl.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
