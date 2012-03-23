// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class FBURL extends g
{

    public FBURL()
    {
        url = "";
        phone = "";
        content = "";
    }

    public FBURL(String s, String s1, String s2)
    {
        url = "";
        phone = "";
        content = "";
        url = s;
        phone = s1;
        content = s2;
    }

    public final String className()
    {
        return "QQPIM.FBURL";
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
        h1.a(url, "url");
        h1.a(phone, "phone");
        h1.a(content, "content");
    }

    public final boolean equals(Object obj)
    {
        FBURL fburl = (FBURL)obj;
        boolean flag;
        if(c.a(url, fburl.url) && c.a(phone, fburl.phone) && c.a(content, fburl.content))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getContent()
    {
        return content;
    }

    public final String getPhone()
    {
        return phone;
    }

    public final String getUrl()
    {
        return url;
    }

    public final void readFrom(a a1)
    {
        url = a1.b(0, true);
        phone = a1.b(1, true);
        content = a1.b(2, true);
    }

    public final void setContent(String s)
    {
        content = s;
    }

    public final void setPhone(String s)
    {
        phone = s;
    }

    public final void setUrl(String s)
    {
        url = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(url, 0);
        e1.a(phone, 1);
        e1.a(content, 2);
    }

    static final boolean $assertionsDisabled;
    public String content;
    public String phone;
    public String url;

    static 
    {
        boolean flag;
        if(!QQPIM/FBURL.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
