// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            SoftKey

public final class CommentInfo extends g
{

    public CommentInfo()
    {
        softkey = null;
        score = 0;
        comment = "";
    }

    public CommentInfo(SoftKey softkey1, int i, String s)
    {
        softkey = null;
        score = 0;
        comment = "";
        softkey = softkey1;
        score = i;
        comment = s;
    }

    public final String className()
    {
        return "QQPIM.CommentInfo";
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
        h1.a(softkey, "softkey");
        h1.a(score, "score");
        h1.a(comment, "comment");
    }

    public final boolean equals(Object obj)
    {
        CommentInfo commentinfo = (CommentInfo)obj;
        boolean flag;
        if(c.a(softkey, commentinfo.softkey) && c.a(score, commentinfo.score) && c.a(comment, commentinfo.comment))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getComment()
    {
        return comment;
    }

    public final int getScore()
    {
        return score;
    }

    public final SoftKey getSoftkey()
    {
        return softkey;
    }

    public final void readFrom(a a1)
    {
        if(cache_softkey == null)
            cache_softkey = new SoftKey();
        softkey = (SoftKey)a1.a(cache_softkey, 0, true);
        score = a1.a(score, 1, false);
        comment = a1.b(2, false);
    }

    public final void setComment(String s)
    {
        comment = s;
    }

    public final void setScore(int i)
    {
        score = i;
    }

    public final void setSoftkey(SoftKey softkey1)
    {
        softkey = softkey1;
    }

    public final void writeTo(e e1)
    {
        e1.a(softkey, 0);
        e1.a(score, 1);
        if(comment != null)
            e1.a(comment, 2);
    }

    static final boolean $assertionsDisabled;
    static SoftKey cache_softkey;
    public String comment;
    public int score;
    public SoftKey softkey;

    static 
    {
        boolean flag;
        if(!QQPIM/CommentInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
