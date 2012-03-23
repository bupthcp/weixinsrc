// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class CloudCheck extends g
{

    public CloudCheck()
    {
        safeType = 0;
        virusName = "";
        descritpion = "";
        virusDescTimestamp = 0;
        short_desc = "";
        advice = "";
    }

    public CloudCheck(int i, String s, String s1, int j, String s2, String s3)
    {
        safeType = 0;
        virusName = "";
        descritpion = "";
        virusDescTimestamp = 0;
        short_desc = "";
        advice = "";
        safeType = i;
        virusName = s;
        descritpion = s1;
        virusDescTimestamp = j;
        short_desc = s2;
        advice = s3;
    }

    public final String className()
    {
        return "QQPIM.CloudCheck";
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
        h1.a(safeType, "safeType");
        h1.a(virusName, "virusName");
        h1.a(descritpion, "descritpion");
        h1.a(virusDescTimestamp, "virusDescTimestamp");
        h1.a(short_desc, "short_desc");
        h1.a(advice, "advice");
    }

    public final boolean equals(Object obj)
    {
        CloudCheck cloudcheck = (CloudCheck)obj;
        boolean flag;
        if(c.a(safeType, cloudcheck.safeType) && c.a(virusName, cloudcheck.virusName) && c.a(descritpion, cloudcheck.descritpion) && c.a(virusDescTimestamp, cloudcheck.virusDescTimestamp) && c.a(short_desc, cloudcheck.short_desc) && c.a(advice, cloudcheck.advice))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getAdvice()
    {
        return advice;
    }

    public final String getDescritpion()
    {
        return descritpion;
    }

    public final int getSafeType()
    {
        return safeType;
    }

    public final String getShort_desc()
    {
        return short_desc;
    }

    public final int getVirusDescTimestamp()
    {
        return virusDescTimestamp;
    }

    public final String getVirusName()
    {
        return virusName;
    }

    public final void readFrom(a a1)
    {
        safeType = a1.a(safeType, 0, true);
        virusName = a1.b(1, false);
        descritpion = a1.b(2, false);
        virusDescTimestamp = a1.a(virusDescTimestamp, 3, false);
        short_desc = a1.b(4, false);
        advice = a1.b(5, false);
    }

    public final void setAdvice(String s)
    {
        advice = s;
    }

    public final void setDescritpion(String s)
    {
        descritpion = s;
    }

    public final void setSafeType(int i)
    {
        safeType = i;
    }

    public final void setShort_desc(String s)
    {
        short_desc = s;
    }

    public final void setVirusDescTimestamp(int i)
    {
        virusDescTimestamp = i;
    }

    public final void setVirusName(String s)
    {
        virusName = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(safeType, 0);
        if(virusName != null)
            e1.a(virusName, 1);
        if(descritpion != null)
            e1.a(descritpion, 2);
        e1.a(virusDescTimestamp, 3);
        if(short_desc != null)
            e1.a(short_desc, 4);
        if(advice != null)
            e1.a(advice, 5);
    }

    static final boolean $assertionsDisabled;
    static int cache_safeType;
    public String advice;
    public String descritpion;
    public int safeType;
    public String short_desc;
    public int virusDescTimestamp;
    public String virusName;

    static 
    {
        boolean flag;
        if(!QQPIM/CloudCheck.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
