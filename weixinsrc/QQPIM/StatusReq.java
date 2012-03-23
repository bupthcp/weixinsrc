// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            ReqHeader

public final class StatusReq extends g
{

    public StatusReq()
    {
        header = null;
    }

    public StatusReq(ReqHeader reqheader)
    {
        header = null;
        header = reqheader;
    }

    public final String className()
    {
        return "QQPIM.StatusReq";
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
        StatusReq statusreq = (StatusReq)obj;
        return c.a(header, statusreq.header);
    }

    public final ReqHeader getHeader()
    {
        return header;
    }

    public final void readFrom(a a1)
    {
        if(cache_header == null)
            cache_header = new ReqHeader();
        header = (ReqHeader)a1.a(cache_header, 0, true);
    }

    public final void setHeader(ReqHeader reqheader)
    {
        header = reqheader;
    }

    public final void writeTo(e e1)
    {
        e1.a(header, 0);
    }

    static final boolean $assertionsDisabled;
    static ReqHeader cache_header;
    public ReqHeader header;

    static 
    {
        boolean flag;
        if(!QQPIM/StatusReq.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
