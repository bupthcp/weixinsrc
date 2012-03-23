// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class SUIKey extends g
{

    public SUIKey()
    {
        lc = "";
        name = "";
        version = "";
        imei = "";
        imsi = "";
    }

    public SUIKey(String s, String s1, String s2, String s3, String s4)
    {
        lc = "";
        name = "";
        version = "";
        imei = "";
        imsi = "";
        lc = s;
        name = s1;
        version = s2;
        imei = s3;
        imsi = s4;
    }

    public final String className()
    {
        return "QQPIM.SUIKey";
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
        h1.a(lc, "lc");
        h1.a(name, "name");
        h1.a(version, "version");
        h1.a(imei, "imei");
        h1.a(imsi, "imsi");
    }

    public final boolean equals(Object obj)
    {
        SUIKey suikey = (SUIKey)obj;
        boolean flag;
        if(c.a(lc, suikey.lc) && c.a(name, suikey.name) && c.a(version, suikey.version) && c.a(imei, suikey.imei) && c.a(imsi, suikey.imsi))
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

    public final String getName()
    {
        return name;
    }

    public final String getVersion()
    {
        return version;
    }

    public final void readFrom(a a1)
    {
        lc = a1.b(0, true);
        name = a1.b(1, true);
        version = a1.b(2, true);
        imei = a1.b(3, true);
        imsi = a1.b(4, true);
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

    public final void setName(String s)
    {
        name = s;
    }

    public final void setVersion(String s)
    {
        version = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(lc, 0);
        e1.a(name, 1);
        e1.a(version, 2);
        e1.a(imei, 3);
        e1.a(imsi, 4);
    }

    static final boolean $assertionsDisabled = false;
    private static final long serialVersionUID = 0x304dc0b30cb1650fL;
    public String imei;
    public String imsi;
    public String lc;
    public String name;
    public String version;

    static 
    {
        boolean flag;
        if(!QQPIM/SUIKey.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
