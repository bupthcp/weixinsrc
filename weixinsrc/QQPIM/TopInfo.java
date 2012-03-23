// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class TopInfo extends g
{

    public TopInfo()
    {
        topn = 0;
        ranktype = 0;
        timetype = 0;
    }

    public TopInfo(int i, int j, int k)
    {
        topn = 0;
        ranktype = 0;
        timetype = 0;
        topn = i;
        ranktype = j;
        timetype = k;
    }

    public final String className()
    {
        return "QQPIM.TopInfo";
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
        h1.a(topn, "topn");
        h1.a(ranktype, "ranktype");
        h1.a(timetype, "timetype");
    }

    public final boolean equals(Object obj)
    {
        TopInfo topinfo = (TopInfo)obj;
        boolean flag;
        if(c.a(topn, topinfo.topn) && c.a(ranktype, topinfo.ranktype) && c.a(timetype, topinfo.timetype))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getRanktype()
    {
        return ranktype;
    }

    public final int getTimetype()
    {
        return timetype;
    }

    public final int getTopn()
    {
        return topn;
    }

    public final void readFrom(a a1)
    {
        topn = a1.a(topn, 0, true);
        ranktype = a1.a(ranktype, 1, true);
        timetype = a1.a(timetype, 2, true);
    }

    public final void setRanktype(int i)
    {
        ranktype = i;
    }

    public final void setTimetype(int i)
    {
        timetype = i;
    }

    public final void setTopn(int i)
    {
        topn = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(topn, 0);
        e1.a(ranktype, 1);
        e1.a(timetype, 2);
    }

    static final boolean $assertionsDisabled;
    static int cache_ranktype;
    static int cache_timetype;
    public int ranktype;
    public int timetype;
    public int topn;

    static 
    {
        boolean flag;
        if(!QQPIM/TopInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
