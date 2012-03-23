// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            RespHeader

public final class LoginResp extends g
{

    public LoginResp()
    {
        header = null;
        loginKey = "";
    }

    public LoginResp(RespHeader respheader, String s)
    {
        header = null;
        loginKey = "";
        header = respheader;
        loginKey = s;
    }

    public final String className()
    {
        return "QQPIM.LoginResp";
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
        h1.a(header, "header");
        h1.a(loginKey, "loginKey");
    }

    public final boolean equals(Object obj)
    {
        LoginResp loginresp = (LoginResp)obj;
        boolean flag;
        if(c.a(header, loginresp.header) && c.a(loginKey, loginresp.loginKey))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final RespHeader getHeader()
    {
        return header;
    }

    public final String getLoginKey()
    {
        return loginKey;
    }

    public final void readFrom(a a1)
    {
        if(cache_header == null)
            cache_header = new RespHeader();
        header = (RespHeader)a1.a(cache_header, 0, true);
        loginKey = a1.b(1, false);
    }

    public final void setHeader(RespHeader respheader)
    {
        header = respheader;
    }

    public final void setLoginKey(String s)
    {
        loginKey = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(header, 0);
        if(loginKey != null)
            e1.a(loginKey, 1);
    }

    static final boolean $assertionsDisabled;
    static RespHeader cache_header;
    public RespHeader header;
    public String loginKey;

    static 
    {
        boolean flag;
        if(!QQPIM/LoginResp.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
