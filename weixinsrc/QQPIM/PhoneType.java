// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class PhoneType extends g
{

    public PhoneType()
    {
        phonetype = 0;
        subplatform = 0;
    }

    public PhoneType(int i)
    {
        phonetype = 0;
        subplatform = 0;
        phonetype = i;
    }

    public final String className()
    {
        return "QQPIM.PhoneType";
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
        (new h(stringbuilder, i)).a(phonetype, "phonetype");
    }

    public final boolean equals(Object obj)
    {
        PhoneType phonetype1 = (PhoneType)obj;
        return c.a(phonetype, phonetype1.phonetype);
    }

    public final int getPhonetype()
    {
        return phonetype;
    }

    public final int getSubplatform()
    {
        return subplatform;
    }

    public final void readFrom(a a1)
    {
        phonetype = a1.a(phonetype, 0, true);
    }

    public final void setPhonetype(int i)
    {
        phonetype = i;
    }

    public final void setSubplatform(int i)
    {
        subplatform = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(phonetype, 0);
    }

    static final boolean $assertionsDisabled;
    static int cache_phonetype;
    public int phonetype;
    public int subplatform;

    static 
    {
        boolean flag;
        if(!QQPIM/PhoneType.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
