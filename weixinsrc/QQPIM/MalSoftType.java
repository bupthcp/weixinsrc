// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            SoftKey

public final class MalSoftType extends g
{

    public MalSoftType()
    {
        softkey = null;
        malsofttype = 0;
    }

    public MalSoftType(SoftKey softkey1, int i)
    {
        softkey = null;
        malsofttype = 0;
        softkey = softkey1;
        malsofttype = i;
    }

    public final String className()
    {
        return "QQPIM.MalSoftType";
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
        h1.a(malsofttype, "malsofttype");
    }

    public final boolean equals(Object obj)
    {
        MalSoftType malsofttype1 = (MalSoftType)obj;
        boolean flag;
        if(c.a(softkey, malsofttype1.softkey) && c.a(malsofttype, malsofttype1.malsofttype))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getMalsofttype()
    {
        return malsofttype;
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
        malsofttype = a1.a(malsofttype, 1, true);
    }

    public final void setMalsofttype(int i)
    {
        malsofttype = i;
    }

    public final void setSoftkey(SoftKey softkey1)
    {
        softkey = softkey1;
    }

    public final void writeTo(e e1)
    {
        e1.a(softkey, 0);
        e1.a(malsofttype, 1);
    }

    static final boolean $assertionsDisabled;
    static int cache_malsofttype;
    static SoftKey cache_softkey;
    public int malsofttype;
    public SoftKey softkey;

    static 
    {
        boolean flag;
        if(!QQPIM/MalSoftType.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
