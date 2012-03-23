// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            ReqHeader

public final class RegReq extends g
{

    public RegReq()
    {
        header = null;
        md5pwd = "";
        regMethod = 0;
    }

    public RegReq(ReqHeader reqheader, String s, byte byte0)
    {
        header = null;
        md5pwd = "";
        regMethod = 0;
        header = reqheader;
        md5pwd = s;
        regMethod = byte0;
    }

    public final String className()
    {
        return "QQPIM.RegReq";
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
        h1.a(md5pwd, "md5pwd");
        h1.a(regMethod, "regMethod");
    }

    public final boolean equals(Object obj)
    {
        RegReq regreq = (RegReq)obj;
        boolean flag;
        if(c.a(header, regreq.header) && c.a(md5pwd, regreq.md5pwd) && c.a(regMethod, regreq.regMethod))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final ReqHeader getHeader()
    {
        return header;
    }

    public final String getMd5pwd()
    {
        return md5pwd;
    }

    public final byte getRegMethod()
    {
        return regMethod;
    }

    public final void readFrom(a a1)
    {
        if(cache_header == null)
            cache_header = new ReqHeader();
        header = (ReqHeader)a1.a(cache_header, 0, true);
        md5pwd = a1.b(1, true);
        regMethod = a1.a(regMethod, 2, true);
    }

    public final void setHeader(ReqHeader reqheader)
    {
        header = reqheader;
    }

    public final void setMd5pwd(String s)
    {
        md5pwd = s;
    }

    public final void setRegMethod(byte byte0)
    {
        regMethod = byte0;
    }

    public final void writeTo(e e1)
    {
        e1.a(header, 0);
        e1.a(md5pwd, 1);
        e1.a(regMethod, 2);
    }

    static final boolean $assertionsDisabled;
    static ReqHeader cache_header;
    public ReqHeader header;
    public String md5pwd;
    public byte regMethod;

    static 
    {
        boolean flag;
        if(!QQPIM/RegReq.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
