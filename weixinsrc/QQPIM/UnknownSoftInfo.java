// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            SoftKey

public final class UnknownSoftInfo extends g
{

    public UnknownSoftInfo()
    {
        softkey = null;
        vendorname = "";
        certversion = 0;
        certissuer = "";
        certsubject = "";
    }

    public UnknownSoftInfo(SoftKey softkey1, String s, int i, String s1, String s2)
    {
        softkey = null;
        vendorname = "";
        certversion = 0;
        certissuer = "";
        certsubject = "";
        softkey = softkey1;
        vendorname = s;
        certversion = i;
        certissuer = s1;
        certsubject = s2;
    }

    public final String className()
    {
        return "QQPIM.UnknownSoftInfo";
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
        h1.a(vendorname, "vendorname");
        h1.a(certversion, "certversion");
        h1.a(certissuer, "certissuer");
        h1.a(certsubject, "certsubject");
    }

    public final boolean equals(Object obj)
    {
        UnknownSoftInfo unknownsoftinfo = (UnknownSoftInfo)obj;
        boolean flag;
        if(c.a(softkey, unknownsoftinfo.softkey) && c.a(vendorname, unknownsoftinfo.vendorname) && c.a(certversion, unknownsoftinfo.certversion) && c.a(certissuer, unknownsoftinfo.certissuer) && c.a(certsubject, unknownsoftinfo.certsubject))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getCertissuer()
    {
        return certissuer;
    }

    public final String getCertsubject()
    {
        return certsubject;
    }

    public final int getCertversion()
    {
        return certversion;
    }

    public final SoftKey getSoftkey()
    {
        return softkey;
    }

    public final String getVendorname()
    {
        return vendorname;
    }

    public final void readFrom(a a1)
    {
        if(cache_softkey == null)
            cache_softkey = new SoftKey();
        softkey = (SoftKey)a1.a(cache_softkey, 0, true);
        vendorname = a1.b(1, false);
        certversion = a1.a(certversion, 2, false);
        certissuer = a1.b(3, false);
        certsubject = a1.b(4, false);
    }

    public final void setCertissuer(String s)
    {
        certissuer = s;
    }

    public final void setCertsubject(String s)
    {
        certsubject = s;
    }

    public final void setCertversion(int i)
    {
        certversion = i;
    }

    public final void setSoftkey(SoftKey softkey1)
    {
        softkey = softkey1;
    }

    public final void setVendorname(String s)
    {
        vendorname = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(softkey, 0);
        if(vendorname != null)
            e1.a(vendorname, 1);
        e1.a(certversion, 2);
        if(certissuer != null)
            e1.a(certissuer, 3);
        if(certsubject != null)
            e1.a(certsubject, 4);
    }

    static final boolean $assertionsDisabled;
    static SoftKey cache_softkey;
    public String certissuer;
    public String certsubject;
    public int certversion;
    public SoftKey softkey;
    public String vendorname;

    static 
    {
        boolean flag;
        if(!QQPIM/UnknownSoftInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
