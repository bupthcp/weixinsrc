// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class FeatureKey extends g
{

    public FeatureKey()
    {
        uniCode = "";
        softName = "";
        version = "";
        versionCode = 0;
        cert = "";
        fileSize = 0;
    }

    public FeatureKey(String s, String s1, String s2, int i, String s3, int j)
    {
        uniCode = "";
        softName = "";
        version = "";
        versionCode = 0;
        cert = "";
        fileSize = 0;
        uniCode = s;
        softName = s1;
        version = s2;
        versionCode = i;
        cert = s3;
        fileSize = j;
    }

    public final String className()
    {
        return "QQPIM.FeatureKey";
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
        h1.a(uniCode, "uniCode");
        h1.a(softName, "softName");
        h1.a(version, "version");
        h1.a(versionCode, "versionCode");
        h1.a(cert, "cert");
        h1.a(fileSize, "fileSize");
    }

    public final boolean equals(Object obj)
    {
        FeatureKey featurekey = (FeatureKey)obj;
        boolean flag;
        if(c.a(uniCode, featurekey.uniCode) && c.a(softName, featurekey.softName) && c.a(version, featurekey.version) && c.a(versionCode, featurekey.versionCode) && c.a(cert, featurekey.cert) && c.a(fileSize, featurekey.fileSize))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getCert()
    {
        return cert;
    }

    public final int getFileSize()
    {
        return fileSize;
    }

    public final String getSoftName()
    {
        return softName;
    }

    public final String getUniCode()
    {
        return uniCode;
    }

    public final String getVersion()
    {
        return version;
    }

    public final int getVersionCode()
    {
        return versionCode;
    }

    public final void readFrom(a a1)
    {
        uniCode = a1.b(0, true);
        softName = a1.b(1, true);
        version = a1.b(2, true);
        versionCode = a1.a(versionCode, 3, false);
        cert = a1.b(4, false);
        fileSize = a1.a(fileSize, 5, false);
    }

    public final void setCert(String s)
    {
        cert = s;
    }

    public final void setFileSize(int i)
    {
        fileSize = i;
    }

    public final void setSoftName(String s)
    {
        softName = s;
    }

    public final void setUniCode(String s)
    {
        uniCode = s;
    }

    public final void setVersion(String s)
    {
        version = s;
    }

    public final void setVersionCode(int i)
    {
        versionCode = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(uniCode, 0);
        e1.a(softName, 1);
        e1.a(version, 2);
        e1.a(versionCode, 3);
        if(cert != null)
            e1.a(cert, 4);
        e1.a(fileSize, 5);
    }

    static final boolean $assertionsDisabled;
    public String cert;
    public int fileSize;
    public String softName;
    public String uniCode;
    public String version;
    public int versionCode;

    static 
    {
        boolean flag;
        if(!QQPIM/FeatureKey.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
