// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class ChannelInfo extends g
{

    public ChannelInfo()
    {
        id = "";
        product = 0;
    }

    public ChannelInfo(String s, int i)
    {
        id = "";
        product = 0;
        id = s;
        product = i;
    }

    public final String className()
    {
        return "QQPIM.ChannelInfo";
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
        h1.a(id, "id");
        h1.a(product, "product");
    }

    public final boolean equals(Object obj)
    {
        ChannelInfo channelinfo = (ChannelInfo)obj;
        boolean flag;
        if(c.a(id, channelinfo.id) && c.a(product, channelinfo.product))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getId()
    {
        return id;
    }

    public final int getProduct()
    {
        return product;
    }

    public final void readFrom(a a1)
    {
        id = a1.b(0, true);
        product = a1.a(product, 1, false);
    }

    public final void setId(String s)
    {
        id = s;
    }

    public final void setProduct(int i)
    {
        product = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(id, 0);
        e1.a(product, 1);
    }

    static final boolean $assertionsDisabled;
    static int cache_product;
    public String id;
    public int product;

    static 
    {
        boolean flag;
        if(!QQPIM/ChannelInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
