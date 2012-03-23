// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            FeatureKey, SoftInfo, CloudCheck

public final class AnalyseInfo extends g
{

    public AnalyseInfo()
    {
        featureKey = null;
        softInfo = null;
        cloudCheck = null;
        report_feature = 0;
    }

    public AnalyseInfo(FeatureKey featurekey, SoftInfo softinfo, CloudCheck cloudcheck, int i)
    {
        featureKey = null;
        softInfo = null;
        cloudCheck = null;
        report_feature = 0;
        featureKey = featurekey;
        softInfo = softinfo;
        cloudCheck = cloudcheck;
        report_feature = i;
    }

    public final String className()
    {
        return "QQPIM.AnalyseInfo";
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
        h1.a(featureKey, "featureKey");
        h1.a(softInfo, "softInfo");
        h1.a(cloudCheck, "cloudCheck");
        h1.a(report_feature, "report_feature");
    }

    public final boolean equals(Object obj)
    {
        AnalyseInfo analyseinfo = (AnalyseInfo)obj;
        boolean flag;
        if(c.a(featureKey, analyseinfo.featureKey) && c.a(softInfo, analyseinfo.softInfo) && c.a(cloudCheck, analyseinfo.cloudCheck) && c.a(report_feature, analyseinfo.report_feature))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final CloudCheck getCloudCheck()
    {
        return cloudCheck;
    }

    public final FeatureKey getFeatureKey()
    {
        return featureKey;
    }

    public final int getReport_feature()
    {
        return report_feature;
    }

    public final SoftInfo getSoftInfo()
    {
        return softInfo;
    }

    public final void readFrom(a a1)
    {
        if(cache_featureKey == null)
            cache_featureKey = new FeatureKey();
        featureKey = (FeatureKey)a1.a(cache_featureKey, 0, true);
        if(cache_softInfo == null)
            cache_softInfo = new SoftInfo();
        softInfo = (SoftInfo)a1.a(cache_softInfo, 1, true);
        if(cache_cloudCheck == null)
            cache_cloudCheck = new CloudCheck();
        cloudCheck = (CloudCheck)a1.a(cache_cloudCheck, 2, true);
        report_feature = a1.a(report_feature, 3, true);
    }

    public final void setCloudCheck(CloudCheck cloudcheck)
    {
        cloudCheck = cloudcheck;
    }

    public final void setFeatureKey(FeatureKey featurekey)
    {
        featureKey = featurekey;
    }

    public final void setReport_feature(int i)
    {
        report_feature = i;
    }

    public final void setSoftInfo(SoftInfo softinfo)
    {
        softInfo = softinfo;
    }

    public final void writeTo(e e1)
    {
        e1.a(featureKey, 0);
        e1.a(softInfo, 1);
        e1.a(cloudCheck, 2);
        e1.a(report_feature, 3);
    }

    static final boolean $assertionsDisabled;
    static CloudCheck cache_cloudCheck;
    static FeatureKey cache_featureKey;
    static SoftInfo cache_softInfo;
    public CloudCheck cloudCheck;
    public FeatureKey featureKey;
    public int report_feature;
    public SoftInfo softInfo;

    static 
    {
        boolean flag;
        if(!QQPIM/AnalyseInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
