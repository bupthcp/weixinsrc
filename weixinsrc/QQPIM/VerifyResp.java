// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            RespHeader

public final class VerifyResp extends g
{

    public VerifyResp()
    {
        header = null;
    }

    public VerifyResp(RespHeader respheader)
    {
        header = null;
        header = respheader;
    }

    public final String className()
    {
        return "QQPIM.VerifyResp";
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
        (new h(stringbuilder, i)).a(header, "header");
    }

    public final boolean equals(Object obj)
    {
        VerifyResp verifyresp = (VerifyResp)obj;
        return c.a(header, verifyresp.header);
    }

    public final RespHeader getHeader()
    {
        return header;
    }

    public final void readFrom(a a1)
    {
        if(cache_header == null)
            cache_header = new RespHeader();
        header = (RespHeader)a1.a(cache_header, 0, true);
    }

    public final void setHeader(RespHeader respheader)
    {
        header = respheader;
    }

    public final void writeTo(e e1)
    {
        e1.a(header, 0);
    }

    static final boolean $assertionsDisabled;
    static RespHeader cache_header;
    public RespHeader header;

    static 
    {
        boolean flag;
        if(!QQPIM/VerifyResp.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
