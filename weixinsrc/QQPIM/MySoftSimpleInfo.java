// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            SoftSimpleInfo

public final class MySoftSimpleInfo extends g
{

    public MySoftSimpleInfo()
    {
        softSimpleInfo = null;
        reportFeature = 0;
        official = 0;
        update = 0;
    }

    public MySoftSimpleInfo(SoftSimpleInfo softsimpleinfo, int i, int j, int k)
    {
        softSimpleInfo = null;
        reportFeature = 0;
        official = 0;
        update = 0;
        softSimpleInfo = softsimpleinfo;
        reportFeature = i;
        official = j;
        update = k;
    }

    public final String className()
    {
        return "QQPIM.MySoftSimpleInfo";
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
        h1.a(softSimpleInfo, "softSimpleInfo");
        h1.a(reportFeature, "reportFeature");
        h1.a(official, "official");
        h1.a(update, "update");
    }

    public final boolean equals(Object obj)
    {
        MySoftSimpleInfo mysoftsimpleinfo = (MySoftSimpleInfo)obj;
        boolean flag;
        if(c.a(softSimpleInfo, mysoftsimpleinfo.softSimpleInfo) && c.a(reportFeature, mysoftsimpleinfo.reportFeature) && c.a(official, mysoftsimpleinfo.official) && c.a(update, mysoftsimpleinfo.update))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getOfficial()
    {
        return official;
    }

    public final int getReportFeature()
    {
        return reportFeature;
    }

    public final SoftSimpleInfo getSoftSimpleInfo()
    {
        return softSimpleInfo;
    }

    public final int getUpdate()
    {
        return update;
    }

    public final void readFrom(a a1)
    {
        if(cache_softSimpleInfo == null)
            cache_softSimpleInfo = new SoftSimpleInfo();
        softSimpleInfo = (SoftSimpleInfo)a1.a(cache_softSimpleInfo, 0, true);
        reportFeature = a1.a(reportFeature, 1, false);
        official = a1.a(official, 2, false);
        update = a1.a(update, 3, false);
    }

    public final void setOfficial(int i)
    {
        official = i;
    }

    public final void setReportFeature(int i)
    {
        reportFeature = i;
    }

    public final void setSoftSimpleInfo(SoftSimpleInfo softsimpleinfo)
    {
        softSimpleInfo = softsimpleinfo;
    }

    public final void setUpdate(int i)
    {
        update = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(softSimpleInfo, 0);
        e1.a(reportFeature, 1);
        e1.a(official, 2);
        e1.a(update, 3);
    }

    static final boolean $assertionsDisabled;
    static SoftSimpleInfo cache_softSimpleInfo;
    public int official;
    public int reportFeature;
    public SoftSimpleInfo softSimpleInfo;
    public int update;

    static 
    {
        boolean flag;
        if(!QQPIM/MySoftSimpleInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
