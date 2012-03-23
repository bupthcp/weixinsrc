// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            ReqHeader

public final class PwdReq extends g
{

    public PwdReq()
    {
        header = null;
        oldmd5pwd = "";
        newmd5pwd = "";
    }

    public PwdReq(ReqHeader reqheader, String s, String s1)
    {
        header = null;
        oldmd5pwd = "";
        newmd5pwd = "";
        header = reqheader;
        oldmd5pwd = s;
        newmd5pwd = s1;
    }

    public final String className()
    {
        return "QQPIM.PwdReq";
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
        h1.a(oldmd5pwd, "oldmd5pwd");
        h1.a(newmd5pwd, "newmd5pwd");
    }

    public final boolean equals(Object obj)
    {
        PwdReq pwdreq = (PwdReq)obj;
        boolean flag;
        if(c.a(header, pwdreq.header) && c.a(oldmd5pwd, pwdreq.oldmd5pwd) && c.a(newmd5pwd, pwdreq.newmd5pwd))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final ReqHeader getHeader()
    {
        return header;
    }

    public final String getNewmd5pwd()
    {
        return newmd5pwd;
    }

    public final String getOldmd5pwd()
    {
        return oldmd5pwd;
    }

    public final void readFrom(a a1)
    {
        if(cache_header == null)
            cache_header = new ReqHeader();
        header = (ReqHeader)a1.a(cache_header, 0, true);
        oldmd5pwd = a1.b(1, true);
        newmd5pwd = a1.b(2, true);
    }

    public final void setHeader(ReqHeader reqheader)
    {
        header = reqheader;
    }

    public final void setNewmd5pwd(String s)
    {
        newmd5pwd = s;
    }

    public final void setOldmd5pwd(String s)
    {
        oldmd5pwd = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(header, 0);
        e1.a(oldmd5pwd, 1);
        e1.a(newmd5pwd, 2);
    }

    static final boolean $assertionsDisabled;
    static ReqHeader cache_header;
    public ReqHeader header;
    public String newmd5pwd;
    public String oldmd5pwd;

    static 
    {
        boolean flag;
        if(!QQPIM/PwdReq.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
