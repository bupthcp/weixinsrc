// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class RankInfo extends g
{

    public RankInfo()
    {
        rank = 0;
        modelrank = 0;
        total = 0;
        modeltotal = 0;
    }

    public RankInfo(int i, int j, int k, int l)
    {
        rank = 0;
        modelrank = 0;
        total = 0;
        modeltotal = 0;
        rank = i;
        modelrank = j;
        total = k;
        modeltotal = l;
    }

    public final String className()
    {
        return "QQPIM.RankInfo";
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
        h1.a(rank, "rank");
        h1.a(modelrank, "modelrank");
        h1.a(total, "total");
        h1.a(modeltotal, "modeltotal");
    }

    public final boolean equals(Object obj)
    {
        RankInfo rankinfo = (RankInfo)obj;
        boolean flag;
        if(c.a(rank, rankinfo.rank) && c.a(modelrank, rankinfo.modelrank) && c.a(total, rankinfo.total) && c.a(modeltotal, rankinfo.modeltotal))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getModelrank()
    {
        return modelrank;
    }

    public final int getModeltotal()
    {
        return modeltotal;
    }

    public final int getRank()
    {
        return rank;
    }

    public final int getTotal()
    {
        return total;
    }

    public final void readFrom(a a1)
    {
        rank = a1.a(rank, 0, true);
        modelrank = a1.a(modelrank, 1, true);
        total = a1.a(total, 2, true);
        modeltotal = a1.a(modeltotal, 3, true);
    }

    public final void setModelrank(int i)
    {
        modelrank = i;
    }

    public final void setModeltotal(int i)
    {
        modeltotal = i;
    }

    public final void setRank(int i)
    {
        rank = i;
    }

    public final void setTotal(int i)
    {
        total = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(rank, 0);
        e1.a(modelrank, 1);
        e1.a(total, 2);
        e1.a(modeltotal, 3);
    }

    static final boolean $assertionsDisabled;
    public int modelrank;
    public int modeltotal;
    public int rank;
    public int total;

    static 
    {
        boolean flag;
        if(!QQPIM/RankInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
