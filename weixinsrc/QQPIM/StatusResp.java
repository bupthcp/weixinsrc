// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            RespHeader

public final class StatusResp extends g
{

    public StatusResp()
    {
        header = null;
        mobileno = "";
    }

    public StatusResp(RespHeader respheader, String s)
    {
        header = null;
        mobileno = "";
        header = respheader;
        mobileno = s;
    }

    public final String className()
    {
        return "QQPIM.StatusResp";
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
        h1.a(mobileno, "mobileno");
    }

    public final boolean equals(Object obj)
    {
        StatusResp statusresp = (StatusResp)obj;
        boolean flag;
        if(c.a(header, statusresp.header) && c.a(mobileno, statusresp.mobileno))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final RespHeader getHeader()
    {
        return header;
    }

    public final String getMobileno()
    {
        return mobileno;
    }

    public final void readFrom(a a1)
    {
        if(cache_header == null)
            cache_header = new RespHeader();
        header = (RespHeader)a1.a(cache_header, 0, true);
        mobileno = a1.b(1, true);
    }

    public final void setHeader(RespHeader respheader)
    {
        header = respheader;
    }

    public final void setMobileno(String s)
    {
        mobileno = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(header, 0);
        e1.a(mobileno, 1);
    }

    static final boolean $assertionsDisabled;
    static RespHeader cache_header;
    public RespHeader header;
    public String mobileno;

    static 
    {
        boolean flag;
        if(!QQPIM/StatusResp.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
