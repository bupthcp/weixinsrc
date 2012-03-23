// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;
import java.util.Arrays;

public final class SoftKey extends g
    implements Comparable
{

    public SoftKey()
    {
        uid = "";
        softname = "";
        version = "";
        producttime = "";
        cert = "";
        versioncode = 0;
        name = "";
    }

    public SoftKey(String s, String s1, String s2, String s3, String s4, int i, String s5)
    {
        uid = "";
        softname = "";
        version = "";
        producttime = "";
        cert = "";
        versioncode = 0;
        name = "";
        uid = s;
        softname = s1;
        version = s2;
        producttime = s3;
        cert = s4;
        versioncode = i;
        name = s5;
    }

    public final String className()
    {
        return "QQPIM.SoftKey";
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

    public final int compareTo(SoftKey softkey)
    {
        int i;
        int ai[];
        int j;
        i = 0;
        ai = new int[4];
        ai[i] = c.a(uid, softkey.uid);
        ai[1] = c.a(softname, softkey.softname);
        ai[2] = c.a(version, softkey.version);
        ai[3] = c.a(producttime, softkey.producttime);
        j = i;
_L5:
        if(j < ai.length) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        if(ai[j] == 0)
            break; /* Loop/switch isn't completed */
        i = ai[j];
        if(true) goto _L1; else goto _L3
_L3:
        j++;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public final volatile int compareTo(Object obj)
    {
        return compareTo((SoftKey)obj);
    }

    public final void display(StringBuilder stringbuilder, int i)
    {
        h h1 = new h(stringbuilder, i);
        h1.a(uid, "uid");
        h1.a(softname, "softname");
        h1.a(version, "version");
        h1.a(producttime, "producttime");
        h1.a(cert, "cert");
        h1.a(versioncode, "versioncode");
        h1.a(name, "name");
    }

    public final boolean equals(Object obj)
    {
        SoftKey softkey = (SoftKey)obj;
        boolean flag;
        if(c.a(uid, softkey.uid) && c.a(softname, softkey.softname) && c.a(version, softkey.version) && c.a(producttime, softkey.producttime))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getCert()
    {
        return cert;
    }

    public final String getName()
    {
        return name;
    }

    public final String getProducttime()
    {
        return producttime;
    }

    public final String getSoftname()
    {
        return softname;
    }

    public final String getUid()
    {
        return uid;
    }

    public final String getVersion()
    {
        return version;
    }

    public final int getVersioncode()
    {
        return versioncode;
    }

    public final int hashCode()
    {
        int ai[] = new int[4];
        ai[0] = c.a(uid);
        ai[1] = c.a(softname);
        ai[2] = c.a(version);
        ai[3] = c.a(producttime);
        return Arrays.hashCode(ai);
    }

    public final void readFrom(a a1)
    {
        uid = a1.b(0, true);
        softname = a1.b(1, true);
        version = a1.b(2, true);
        producttime = a1.b(3, false);
        cert = a1.b(4, false);
        versioncode = a1.a(versioncode, 5, false);
        name = a1.b(6, false);
    }

    public final void setCert(String s)
    {
        cert = s;
    }

    public final void setName(String s)
    {
        name = s;
    }

    public final void setProducttime(String s)
    {
        producttime = s;
    }

    public final void setSoftname(String s)
    {
        softname = s;
    }

    public final void setUid(String s)
    {
        uid = s;
    }

    public final void setVersion(String s)
    {
        version = s;
    }

    public final void setVersioncode(int i)
    {
        versioncode = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(uid, 0);
        e1.a(softname, 1);
        e1.a(version, 2);
        if(producttime != null)
            e1.a(producttime, 3);
        if(cert != null)
            e1.a(cert, 4);
        e1.a(versioncode, 5);
        if(name != null)
            e1.a(name, 6);
    }

    static final boolean $assertionsDisabled;
    public String cert;
    public String name;
    public String producttime;
    public String softname;
    public String uid;
    public String version;
    public int versioncode;

    static 
    {
        boolean flag;
        if(!QQPIM/SoftKey.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
