// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class ClientVersionInfo extends g
{

    public ClientVersionInfo()
    {
        id = 0;
        version = 0;
        info = "";
    }

    public ClientVersionInfo(int i, int j, String s)
    {
        id = 0;
        version = 0;
        info = "";
        id = i;
        version = j;
        info = s;
    }

    public final String className()
    {
        return "QQPIM.ClientVersionInfo";
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
        h1.a(version, "version");
        h1.a(info, "info");
    }

    public final boolean equals(Object obj)
    {
        ClientVersionInfo clientversioninfo = (ClientVersionInfo)obj;
        boolean flag;
        if(c.a(id, clientversioninfo.id) && c.a(version, clientversioninfo.version) && c.a(info, clientversioninfo.info))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getId()
    {
        return id;
    }

    public final String getInfo()
    {
        return info;
    }

    public final int getVersion()
    {
        return version;
    }

    public final void readFrom(a a1)
    {
        id = a1.a(id, 0, true);
        version = a1.a(version, 1, true);
        info = a1.b(2, false);
    }

    public final void setId(int i)
    {
        id = i;
    }

    public final void setInfo(String s)
    {
        info = s;
    }

    public final void setVersion(int i)
    {
        version = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(id, 0);
        e1.a(version, 1);
        if(info != null)
            e1.a(info, 2);
    }

    static final boolean $assertionsDisabled;
    static int cache_id;
    public int id;
    public String info;
    public int version;

    static 
    {
        boolean flag;
        if(!QQPIM/ClientVersionInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
