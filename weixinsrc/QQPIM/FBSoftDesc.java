// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            SoftKey

public final class FBSoftDesc extends g
{

    public FBSoftDesc()
    {
        softkey = null;
        desc = "";
    }

    public FBSoftDesc(SoftKey softkey1, String s)
    {
        softkey = null;
        desc = "";
        softkey = softkey1;
        desc = s;
    }

    public final String className()
    {
        return "QQPIM.FBSoftDesc";
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
        h1.a(desc, "desc");
    }

    public final boolean equals(Object obj)
    {
        FBSoftDesc fbsoftdesc = (FBSoftDesc)obj;
        boolean flag;
        if(c.a(softkey, fbsoftdesc.softkey) && c.a(desc, fbsoftdesc.desc))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getDesc()
    {
        return desc;
    }

    public final SoftKey getSoftkey()
    {
        return softkey;
    }

    public final void readFrom(a a1)
    {
        if(cache_softkey == null)
            cache_softkey = new SoftKey();
        softkey = (SoftKey)a1.a(cache_softkey, 0, true);
        desc = a1.b(1, true);
    }

    public final void setDesc(String s)
    {
        desc = s;
    }

    public final void setSoftkey(SoftKey softkey1)
    {
        softkey = softkey1;
    }

    public final void writeTo(e e1)
    {
        e1.a(softkey, 0);
        e1.a(desc, 1);
    }

    static final boolean $assertionsDisabled;
    static SoftKey cache_softkey;
    public String desc;
    public SoftKey softkey;

    static 
    {
        boolean flag;
        if(!QQPIM/FBSoftDesc.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
