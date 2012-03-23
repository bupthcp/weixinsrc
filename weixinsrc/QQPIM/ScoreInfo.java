// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class ScoreInfo extends g
{

    public ScoreInfo()
    {
        user = "";
        score = 0;
        scoredetail = "";
    }

    public ScoreInfo(String s, int i, String s1)
    {
        user = "";
        score = 0;
        scoredetail = "";
        user = s;
        score = i;
        scoredetail = s1;
    }

    public final String className()
    {
        return "QQPIM.ScoreInfo";
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
        h1.a(score, "score");
        h1.a(scoredetail, "scoredetail");
    }

    public final boolean equals(Object obj)
    {
        ScoreInfo scoreinfo = (ScoreInfo)obj;
        boolean flag;
        if(c.a(user, scoreinfo.user) && c.a(score, scoreinfo.score) && c.a(scoredetail, scoreinfo.scoredetail))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getScore()
    {
        return score;
    }

    public final String getScoredetail()
    {
        return scoredetail;
    }

    public final String getUser()
    {
        return user;
    }

    public final void readFrom(a a1)
    {
        user = a1.b(0, true);
        score = a1.a(score, 1, true);
        scoredetail = a1.b(2, true);
    }

    public final void setScore(int i)
    {
        score = i;
    }

    public final void setScoredetail(String s)
    {
        scoredetail = s;
    }

    public final void setUser(String s)
    {
        user = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(user, 0);
        e1.a(score, 1);
        e1.a(scoredetail, 2);
    }

    static final boolean $assertionsDisabled;
    public int score;
    public String scoredetail;
    public String user;

    static 
    {
        boolean flag;
        if(!QQPIM/ScoreInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
