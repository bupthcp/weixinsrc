// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;
import java.util.ArrayList;

// Referenced classes of package QQPIM:
//            BaseInfo, TimeCtrl, TipsInfo, CloudCmd

public final class CloudInfo extends g
{

    public CloudInfo()
    {
        base = null;
        time = null;
        tips = null;
        cloudcmds = null;
    }

    public CloudInfo(BaseInfo baseinfo, TimeCtrl timectrl, TipsInfo tipsinfo, ArrayList arraylist)
    {
        base = null;
        time = null;
        tips = null;
        cloudcmds = null;
        base = baseinfo;
        time = timectrl;
        tips = tipsinfo;
        cloudcmds = arraylist;
    }

    public final String className()
    {
        return "QQPIM.CloudInfo";
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
        h1.a(base, "base");
        h1.a(time, "time");
        h1.a(tips, "tips");
        h1.a(cloudcmds, "cloudcmds");
    }

    public final boolean equals(Object obj)
    {
        CloudInfo cloudinfo = (CloudInfo)obj;
        boolean flag;
        if(c.a(base, cloudinfo.base) && c.a(time, cloudinfo.time) && c.a(tips, cloudinfo.tips) && c.a(cloudcmds, cloudinfo.cloudcmds))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final BaseInfo getBase()
    {
        return base;
    }

    public final ArrayList getCloudcmds()
    {
        return cloudcmds;
    }

    public final TimeCtrl getTime()
    {
        return time;
    }

    public final TipsInfo getTips()
    {
        return tips;
    }

    public final void readFrom(a a1)
    {
        if(cache_base == null)
            cache_base = new BaseInfo();
        base = (BaseInfo)a1.a(cache_base, 0, true);
        if(cache_time == null)
            cache_time = new TimeCtrl();
        time = (TimeCtrl)a1.a(cache_time, 1, true);
        if(cache_tips == null)
            cache_tips = new TipsInfo();
        tips = (TipsInfo)a1.a(cache_tips, 2, false);
        if(cache_cloudcmds == null)
        {
            cache_cloudcmds = new ArrayList();
            CloudCmd cloudcmd = new CloudCmd();
            cache_cloudcmds.add(cloudcmd);
        }
        setCloudcmds((ArrayList)a1.a(cache_cloudcmds, 3, false));
    }

    public final void setBase(BaseInfo baseinfo)
    {
        base = baseinfo;
    }

    public final void setCloudcmds(ArrayList arraylist)
    {
        cloudcmds = arraylist;
    }

    public final void setTime(TimeCtrl timectrl)
    {
        time = timectrl;
    }

    public final void setTips(TipsInfo tipsinfo)
    {
        tips = tipsinfo;
    }

    public final void writeTo(e e1)
    {
        e1.a(base, 0);
        e1.a(time, 1);
        if(tips != null)
            e1.a(tips, 2);
        if(cloudcmds != null)
            e1.a(cloudcmds, 3);
    }

    static final boolean $assertionsDisabled;
    static BaseInfo cache_base;
    static ArrayList cache_cloudcmds;
    static TimeCtrl cache_time;
    static TipsInfo cache_tips;
    public BaseInfo base;
    public ArrayList cloudcmds;
    public TimeCtrl time;
    public TipsInfo tips;

    static 
    {
        boolean flag;
        if(!QQPIM/CloudInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
