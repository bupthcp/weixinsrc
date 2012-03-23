// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            SoftKey

public final class FBIllegaSoft extends g
{

    public FBIllegaSoft()
    {
        softkey = null;
        company = "";
        illreason = 0;
    }

    public FBIllegaSoft(SoftKey softkey1, String s, int i)
    {
        softkey = null;
        company = "";
        illreason = 0;
        softkey = softkey1;
        company = s;
        illreason = i;
    }

    public final String className()
    {
        return "QQPIM.FBIllegaSoft";
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
        h1.a(company, "company");
        h1.a(illreason, "illreason");
    }

    public final boolean equals(Object obj)
    {
        FBIllegaSoft fbillegasoft = (FBIllegaSoft)obj;
        boolean flag;
        if(c.a(softkey, fbillegasoft.softkey) && c.a(company, fbillegasoft.company) && c.a(illreason, fbillegasoft.illreason))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getCompany()
    {
        return company;
    }

    public final int getIllreason()
    {
        return illreason;
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
        company = a1.b(1, true);
        illreason = a1.a(illreason, 2, true);
    }

    public final void setCompany(String s)
    {
        company = s;
    }

    public final void setIllreason(int i)
    {
        illreason = i;
    }

    public final void setSoftkey(SoftKey softkey1)
    {
        softkey = softkey1;
    }

    public final void writeTo(e e1)
    {
        e1.a(softkey, 0);
        e1.a(company, 1);
        e1.a(illreason, 2);
    }

    static final boolean $assertionsDisabled;
    static int cache_illreason;
    static SoftKey cache_softkey;
    public String company;
    public int illreason;
    public SoftKey softkey;

    static 
    {
        boolean flag;
        if(!QQPIM/FBIllegaSoft.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
