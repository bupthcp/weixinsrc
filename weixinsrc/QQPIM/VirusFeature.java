// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class VirusFeature extends g
{

    public VirusFeature()
    {
        id = 0;
        content = "";
    }

    public VirusFeature(short word0, String s)
    {
        id = 0;
        content = "";
        id = word0;
        content = s;
    }

    public final String className()
    {
        return "QQPIM.VirusFeature";
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
        h1.a(content, "content");
    }

    public final boolean equals(Object obj)
    {
        VirusFeature virusfeature = (VirusFeature)obj;
        boolean flag;
        if(c.a(id, virusfeature.id) && c.a(content, virusfeature.content))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getContent()
    {
        return content;
    }

    public final short getId()
    {
        return id;
    }

    public final void readFrom(a a1)
    {
        id = a1.a(id, 0, true);
        content = a1.b(1, true);
    }

    public final void setContent(String s)
    {
        content = s;
    }

    public final void setId(short word0)
    {
        id = word0;
    }

    public final void writeTo(e e1)
    {
        e1.a(id, 0);
        e1.a(content, 1);
    }

    static final boolean $assertionsDisabled;
    public String content;
    public short id;

    static 
    {
        boolean flag;
        if(!QQPIM/VirusFeature.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
