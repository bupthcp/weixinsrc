// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            ConnectType

public final class UserInfo extends g
{

    public UserInfo()
    {
        imei = "";
        qq = "";
        phone = "";
        ip = "";
        lc = "";
        channelid = "";
        ua = "";
        ct = ConnectType.CT_NONE.value();
    }

    public UserInfo(String s, String s1, String s2, String s3, String s4, String s5, String s6, 
            int i)
    {
        imei = "";
        qq = "";
        phone = "";
        ip = "";
        lc = "";
        channelid = "";
        ua = "";
        ct = ConnectType.CT_NONE.value();
        imei = s;
        qq = s1;
        phone = s2;
        ip = s3;
        lc = s4;
        channelid = s5;
        ua = s6;
        ct = i;
    }

    public final String className()
    {
        return "QQPIM.UserInfo";
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
        h1.a(imei, "imei");
        h1.a(qq, "qq");
        h1.a(phone, "phone");
        h1.a(ip, "ip");
        h1.a(lc, "lc");
        h1.a(channelid, "channelid");
        h1.a(ua, "ua");
        h1.a(ct, "ct");
    }

    public final boolean equals(Object obj)
    {
        UserInfo userinfo = (UserInfo)obj;
        boolean flag;
        if(c.a(imei, userinfo.imei) && c.a(qq, userinfo.qq) && c.a(phone, userinfo.phone) && c.a(ip, userinfo.ip) && c.a(lc, userinfo.lc) && c.a(channelid, userinfo.channelid) && c.a(ua, userinfo.ua) && c.a(ct, userinfo.ct))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getChannelid()
    {
        return channelid;
    }

    public final int getCt()
    {
        return ct;
    }

    public final String getImei()
    {
        return imei;
    }

    public final String getIp()
    {
        return ip;
    }

    public final String getLc()
    {
        return lc;
    }

    public final String getPhone()
    {
        return phone;
    }

    public final String getQq()
    {
        return qq;
    }

    public final String getUa()
    {
        return ua;
    }

    public final void readFrom(a a1)
    {
        imei = a1.b(0, true);
        qq = a1.b(1, false);
        phone = a1.b(2, false);
        ip = a1.b(3, false);
        lc = a1.b(4, false);
        channelid = a1.b(5, false);
        ua = a1.b(6, false);
        ct = a1.a(ct, 7, false);
    }

    public final void setChannelid(String s)
    {
        channelid = s;
    }

    public final void setCt(int i)
    {
        ct = i;
    }

    public final void setImei(String s)
    {
        imei = s;
    }

    public final void setIp(String s)
    {
        ip = s;
    }

    public final void setLc(String s)
    {
        lc = s;
    }

    public final void setPhone(String s)
    {
        phone = s;
    }

    public final void setQq(String s)
    {
        qq = s;
    }

    public final void setUa(String s)
    {
        ua = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(imei, 0);
        if(qq != null)
            e1.a(qq, 1);
        if(phone != null)
            e1.a(phone, 2);
        if(ip != null)
            e1.a(ip, 3);
        if(lc != null)
            e1.a(lc, 4);
        if(channelid != null)
            e1.a(channelid, 5);
        if(ua != null)
            e1.a(ua, 6);
        e1.a(ct, 7);
    }

    static final boolean $assertionsDisabled;
    static int cache_ct;
    public String channelid;
    public int ct;
    public String imei;
    public String ip;
    public String lc;
    public String phone;
    public String qq;
    public String ua;

    static 
    {
        boolean flag;
        if(!QQPIM/UserInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
