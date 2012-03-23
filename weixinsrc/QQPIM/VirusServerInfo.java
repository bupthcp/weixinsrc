// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class VirusServerInfo extends g
{

    public VirusServerInfo()
    {
        strTips = "";
        bUpdate = true;
        version = 0;
        timestamp = 0;
        url = "";
        short_desc = "";
        advise = "";
    }

    public VirusServerInfo(String s, boolean flag, int i, int j, String s1, String s2, String s3)
    {
        strTips = "";
        bUpdate = true;
        version = 0;
        timestamp = 0;
        url = "";
        short_desc = "";
        advise = "";
        strTips = s;
        bUpdate = flag;
        version = i;
        timestamp = j;
        url = s1;
        short_desc = s2;
        advise = s3;
    }

    public final String className()
    {
        return "QQPIM.VirusServerInfo";
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
        h1.a(strTips, "strTips");
        h1.a(bUpdate, "bUpdate");
        h1.a(version, "version");
        h1.a(timestamp, "timestamp");
        h1.a(url, "url");
        h1.a(short_desc, "short_desc");
        h1.a(advise, "advise");
    }

    public final boolean equals(Object obj)
    {
        VirusServerInfo virusserverinfo = (VirusServerInfo)obj;
        boolean flag;
        if(c.a(strTips, virusserverinfo.strTips) && c.a(bUpdate, virusserverinfo.bUpdate) && c.a(version, virusserverinfo.version) && c.a(timestamp, virusserverinfo.timestamp) && c.a(url, virusserverinfo.url) && c.a(short_desc, virusserverinfo.short_desc) && c.a(advise, virusserverinfo.advise))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getAdvise()
    {
        return advise;
    }

    public final boolean getBUpdate()
    {
        return bUpdate;
    }

    public final String getShort_desc()
    {
        return short_desc;
    }

    public final String getStrTips()
    {
        return strTips;
    }

    public final int getTimestamp()
    {
        return timestamp;
    }

    public final String getUrl()
    {
        return url;
    }

    public final int getVersion()
    {
        return version;
    }

    public final void readFrom(a a1)
    {
        strTips = a1.b(0, true);
        bUpdate = a1.a(1, true);
        version = a1.a(version, 2, true);
        timestamp = a1.a(timestamp, 3, true);
        url = a1.b(4, true);
        short_desc = a1.b(5, true);
        advise = a1.b(6, true);
    }

    public final void setAdvise(String s)
    {
        advise = s;
    }

    public final void setBUpdate(boolean flag)
    {
        bUpdate = flag;
    }

    public final void setShort_desc(String s)
    {
        short_desc = s;
    }

    public final void setStrTips(String s)
    {
        strTips = s;
    }

    public final void setTimestamp(int i)
    {
        timestamp = i;
    }

    public final void setUrl(String s)
    {
        url = s;
    }

    public final void setVersion(int i)
    {
        version = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(strTips, 0);
        e1.a(bUpdate, 1);
        e1.a(version, 2);
        e1.a(timestamp, 3);
        e1.a(url, 4);
        e1.a(short_desc, 5);
        e1.a(advise, 6);
    }

    static final boolean $assertionsDisabled;
    public String advise;
    public boolean bUpdate;
    public String short_desc;
    public String strTips;
    public int timestamp;
    public String url;
    public int version;

    static 
    {
        boolean flag;
        if(!QQPIM/VirusServerInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
