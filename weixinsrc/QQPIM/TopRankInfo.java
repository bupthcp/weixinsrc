// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class TopRankInfo extends g
{

    public TopRankInfo()
    {
        user = "";
        model = "";
        os = "";
        score = 0;
    }

    public TopRankInfo(String s, String s1, String s2, int i)
    {
        user = "";
        model = "";
        os = "";
        score = 0;
        user = s;
        model = s1;
        os = s2;
        score = i;
    }

    public final String className()
    {
        return "QQPIM.TopRankInfo";
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
        h1.a(user, "user");
        h1.a(model, "model");
        h1.a(os, "os");
        h1.a(score, "score");
    }

    public final boolean equals(Object obj)
    {
        TopRankInfo toprankinfo = (TopRankInfo)obj;
        boolean flag;
        if(c.a(user, toprankinfo.user) && c.a(model, toprankinfo.model) && c.a(os, toprankinfo.os) && c.a(score, toprankinfo.score))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getModel()
    {
        return model;
    }

    public final String getOs()
    {
        return os;
    }

    public final int getScore()
    {
        return score;
    }

    public final String getUser()
    {
        return user;
    }

    public final void readFrom(a a1)
    {
        user = a1.b(0, true);
        model = a1.b(1, true);
        os = a1.b(2, true);
        score = a1.a(score, 3, true);
    }

    public final void setModel(String s)
    {
        model = s;
    }

    public final void setOs(String s)
    {
        os = s;
    }

    public final void setScore(int i)
    {
        score = i;
    }

    public final void setUser(String s)
    {
        user = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(user, 0);
        e1.a(model, 1);
        e1.a(os, 2);
        e1.a(score, 3);
    }

    static final boolean $assertionsDisabled;
    public String model;
    public String os;
    public int score;
    public String user;

    static 
    {
        boolean flag;
        if(!QQPIM/TopRankInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
