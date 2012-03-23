// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            ReqHeader

public final class VerifyReq extends g
{

    public VerifyReq()
    {
        header = null;
        verifyCode = "";
    }

    public VerifyReq(ReqHeader reqheader, String s)
    {
        header = null;
        verifyCode = "";
        header = reqheader;
        verifyCode = s;
    }

    public final String className()
    {
        return "QQPIM.VerifyReq";
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
        h1.a(verifyCode, "verifyCode");
    }

    public final boolean equals(Object obj)
    {
        VerifyReq verifyreq = (VerifyReq)obj;
        boolean flag;
        if(c.a(header, verifyreq.header) && c.a(verifyCode, verifyreq.verifyCode))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final ReqHeader getHeader()
    {
        return header;
    }

    public final String getVerifyCode()
    {
        return verifyCode;
    }

    public final void readFrom(a a1)
    {
        if(cache_header == null)
            cache_header = new ReqHeader();
        header = (ReqHeader)a1.a(cache_header, 0, true);
        verifyCode = a1.b(1, true);
    }

    public final void setHeader(ReqHeader reqheader)
    {
        header = reqheader;
    }

    public final void setVerifyCode(String s)
    {
        verifyCode = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(header, 0);
        e1.a(verifyCode, 1);
    }

    static final boolean $assertionsDisabled;
    static ReqHeader cache_header;
    public ReqHeader header;
    public String verifyCode;

    static 
    {
        boolean flag;
        if(!QQPIM/VerifyReq.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
