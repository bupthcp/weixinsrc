// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class ReqHeader extends g
{

    public ReqHeader()
    {
        platformid = 0;
        version = "";
        lc = "";
        imei = "";
        mobileno = "";
        imsi = "";
    }

    public ReqHeader(byte byte0, String s, String s1, String s2, String s3, String s4)
    {
        platformid = 0;
        version = "";
        lc = "";
        imei = "";
        mobileno = "";
        imsi = "";
        platformid = byte0;
        version = s;
        lc = s1;
        imei = s2;
        mobileno = s3;
        imsi = s4;
    }

    public final String className()
    {
        return "QQPIM.ReqHeader";
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
        h1.a(platformid, "platformid");
        h1.a(version, "version");
        h1.a(lc, "lc");
        h1.a(imei, "imei");
        h1.a(mobileno, "mobileno");
        h1.a(imsi, "imsi");
    }

    public final boolean equals(Object obj)
    {
        ReqHeader reqheader = (ReqHeader)obj;
        boolean flag;
        if(c.a(platformid, reqheader.platformid) && c.a(version, reqheader.version) && c.a(lc, reqheader.lc) && c.a(imei, reqheader.imei) && c.a(mobileno, reqheader.mobileno) && c.a(imsi, reqheader.imsi))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getImei()
    {
        return imei;
    }

    public final String getImsi()
    {
        return imsi;
    }

    public final String getLc()
    {
        return lc;
    }

    public final String getMobileno()
    {
        return mobileno;
    }

    public final byte getPlatformid()
    {
        return platformid;
    }

    public final String getVersion()
    {
        return version;
    }

    public final void readFrom(a a1)
    {
        platformid = a1.a(platformid, 0, true);
        version = a1.b(1, true);
        lc = a1.b(2, true);
        imei = a1.b(3, true);
        mobileno = a1.b(4, true);
        imsi = a1.b(5, true);
    }

    public final void setImei(String s)
    {
        imei = s;
    }

    public final void setImsi(String s)
    {
        imsi = s;
    }

    public final void setLc(String s)
    {
        lc = s;
    }

    public final void setMobileno(String s)
    {
        mobileno = s;
    }

    public final void setPlatformid(byte byte0)
    {
        platformid = byte0;
    }

    public final void setVersion(String s)
    {
        version = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(platformid, 0);
        e1.a(version, 1);
        e1.a(lc, 2);
        e1.a(imei, 3);
        e1.a(mobileno, 4);
        e1.a(imsi, 5);
    }

    static final boolean $assertionsDisabled;
    public String imei;
    public String imsi;
    public String lc;
    public String mobileno;
    public byte platformid;
    public String version;

    static 
    {
        boolean flag;
        if(!QQPIM/ReqHeader.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
