// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;
import java.util.ArrayList;

// Referenced classes of package QQPIM:
//            FeatureKey, FeatureItem

public final class SoftFeature extends g
{

    public SoftFeature()
    {
        featureKey = null;
        softDescTimestamp = 0;
        virusDescTimestamp = 0;
        vecFeatureItem = null;
        requestType = 0;
    }

    public SoftFeature(FeatureKey featurekey, int i, int j, ArrayList arraylist, int k)
    {
        featureKey = null;
        softDescTimestamp = 0;
        virusDescTimestamp = 0;
        vecFeatureItem = null;
        requestType = 0;
        featureKey = featurekey;
        softDescTimestamp = i;
        virusDescTimestamp = j;
        vecFeatureItem = arraylist;
        requestType = k;
    }

    public final String className()
    {
        return "QQPIM.SoftFeature";
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
        h1.a(softDescTimestamp, "softDescTimestamp");
        h1.a(virusDescTimestamp, "virusDescTimestamp");
        h1.a(vecFeatureItem, "vecFeatureItem");
        h1.a(requestType, "requestType");
    }

    public final boolean equals(Object obj)
    {
        SoftFeature softfeature = (SoftFeature)obj;
        boolean flag;
        if(c.a(featureKey, softfeature.featureKey) && c.a(softDescTimestamp, softfeature.softDescTimestamp) && c.a(virusDescTimestamp, softfeature.virusDescTimestamp) && c.a(vecFeatureItem, softfeature.vecFeatureItem) && c.a(requestType, softfeature.requestType))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final FeatureKey getFeatureKey()
    {
        return featureKey;
    }

    public final int getRequestType()
    {
        return requestType;
    }

    public final int getSoftDescTimestamp()
    {
        return softDescTimestamp;
    }

    public final ArrayList getVecFeatureItem()
    {
        return vecFeatureItem;
    }

    public final int getVirusDescTimestamp()
    {
        return virusDescTimestamp;
    }

    public final void readFrom(a a1)
    {
        if(cache_featureKey == null)
            cache_featureKey = new FeatureKey();
        featureKey = (FeatureKey)a1.a(cache_featureKey, 0, true);
        softDescTimestamp = a1.a(softDescTimestamp, 1, true);
        virusDescTimestamp = a1.a(virusDescTimestamp, 2, true);
        if(cache_vecFeatureItem == null)
        {
            cache_vecFeatureItem = new ArrayList();
            FeatureItem featureitem = new FeatureItem();
            cache_vecFeatureItem.add(featureitem);
        }
        setVecFeatureItem((ArrayList)a1.a(cache_vecFeatureItem, 3, false));
        setRequestType(a1.a(requestType, 4, false));
    }

    public final void setFeatureKey(FeatureKey featurekey)
    {
        featureKey = featurekey;
    }

    public final void setRequestType(int i)
    {
        requestType = i;
    }

    public final void setSoftDescTimestamp(int i)
    {
        softDescTimestamp = i;
    }

    public final void setVecFeatureItem(ArrayList arraylist)
    {
        vecFeatureItem = arraylist;
    }

    public final void setVirusDescTimestamp(int i)
    {
        virusDescTimestamp = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(featureKey, 0);
        e1.a(softDescTimestamp, 1);
        e1.a(virusDescTimestamp, 2);
        if(vecFeatureItem != null)
            e1.a(vecFeatureItem, 3);
        e1.a(requestType, 4);
    }

    static final boolean $assertionsDisabled;
    static FeatureKey cache_featureKey;
    static ArrayList cache_vecFeatureItem;
    public FeatureKey featureKey;
    public int requestType;
    public int softDescTimestamp;
    public ArrayList vecFeatureItem;
    public int virusDescTimestamp;

    static 
    {
        boolean flag;
        if(!QQPIM/SoftFeature.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
