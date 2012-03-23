// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            RespHeader

public final class RegResp extends g
{

    public RegResp()
    {
        header = null;
        regMethod = 0;
        accessNum = "";
        verifyCode = "";
    }

    public RegResp(RespHeader respheader, byte byte0, String s, String s1)
    {
        header = null;
        regMethod = 0;
        accessNum = "";
        verifyCode = "";
        header = respheader;
        regMethod = byte0;
        accessNum = s;
        verifyCode = s1;
    }

    public final String className()
    {
        return "QQPIM.RegResp";
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
        h1.a(regMethod, "regMethod");
        h1.a(accessNum, "accessNum");
        h1.a(verifyCode, "verifyCode");
    }

    public final boolean equals(Object obj)
    {
        RegResp regresp = (RegResp)obj;
        boolean flag;
        if(c.a(header, regresp.header) && c.a(regMethod, regresp.regMethod) && c.a(accessNum, regresp.accessNum) && c.a(verifyCode, regresp.verifyCode))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getAccessNum()
    {
        return accessNum;
    }

    public final RespHeader getHeader()
    {
        return header;
    }

    public final byte getRegMethod()
    {
        return regMethod;
    }

    public final String getVerifyCode()
    {
        return verifyCode;
    }

    public final void readFrom(a a1)
    {
        if(cache_header == null)
            cache_header = new RespHeader();
        header = (RespHeader)a1.a(cache_header, 0, true);
        regMethod = a1.a(regMethod, 1, true);
        accessNum = a1.b(2, false);
        verifyCode = a1.b(3, false);
    }

    public final void setAccessNum(String s)
    {
        accessNum = s;
    }

    public final void setHeader(RespHeader respheader)
    {
        header = respheader;
    }

    public final void setRegMethod(byte byte0)
    {
        regMethod = byte0;
    }

    public final void setVerifyCode(String s)
    {
        verifyCode = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(header, 0);
        e1.a(regMethod, 1);
        if(accessNum != null)
            e1.a(accessNum, 2);
        if(verifyCode != null)
            e1.a(verifyCode, 3);
    }

    static final boolean $assertionsDisabled;
    static RespHeader cache_header;
    public String accessNum;
    public RespHeader header;
    public byte regMethod;
    public String verifyCode;

    static 
    {
        boolean flag;
        if(!QQPIM/RegResp.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
