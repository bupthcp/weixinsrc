// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class SoftScore extends g
{

    public SoftScore()
    {
        softname = "";
        score = 0;
        user_num = 0;
        uid = "";
    }

    public SoftScore(String s, int i, int j, String s1)
    {
        softname = "";
        score = 0;
        user_num = 0;
        uid = "";
        softname = s;
        score = i;
        user_num = j;
        uid = s1;
    }

    public final String className()
    {
        return "QQPIM.SoftScore";
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
        h1.a(softname, "softname");
        h1.a(score, "score");
        h1.a(user_num, "user_num");
        h1.a(uid, "uid");
    }

    public final boolean equals(Object obj)
    {
        SoftScore softscore = (SoftScore)obj;
        boolean flag;
        if(c.a(softname, softscore.softname) && c.a(score, softscore.score) && c.a(user_num, softscore.user_num) && c.a(uid, softscore.uid))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getScore()
    {
        return score;
    }

    public final String getSoftname()
    {
        return softname;
    }

    public final String getUid()
    {
        return uid;
    }

    public final int getUser_num()
    {
        return user_num;
    }

    public final void readFrom(a a1)
    {
        softname = a1.b(0, true);
        score = a1.a(score, 1, false);
        user_num = a1.a(user_num, 2, false);
        uid = a1.b(3, false);
    }

    public final void setScore(int i)
    {
        score = i;
    }

    public final void setSoftname(String s)
    {
        softname = s;
    }

    public final void setUid(String s)
    {
        uid = s;
    }

    public final void setUser_num(int i)
    {
        user_num = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(softname, 0);
        e1.a(score, 1);
        e1.a(user_num, 2);
        if(uid != null)
            e1.a(uid, 3);
    }

    static final boolean $assertionsDisabled;
    public int score;
    public String softname;
    public String uid;
    public int user_num;

    static 
    {
        boolean flag;
        if(!QQPIM/SoftScore.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
