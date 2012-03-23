// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class RespHeader extends g
{

    public RespHeader()
    {
        result = 0;
        extmsg = "";
    }

    public RespHeader(int i, String s)
    {
        result = 0;
        extmsg = "";
        result = i;
        extmsg = s;
    }

    public final String className()
    {
        return "QQPIM.RespHeader";
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
        h1.a(result, "result");
        h1.a(extmsg, "extmsg");
    }

    public final boolean equals(Object obj)
    {
        RespHeader respheader = (RespHeader)obj;
        boolean flag;
        if(c.a(result, respheader.result) && c.a(extmsg, respheader.extmsg))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getExtmsg()
    {
        return extmsg;
    }

    public final int getResult()
    {
        return result;
    }

    public final void readFrom(a a1)
    {
        result = a1.a(result, 0, true);
        extmsg = a1.b(1, false);
    }

    public final void setExtmsg(String s)
    {
        extmsg = s;
    }

    public final void setResult(int i)
    {
        result = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(result, 0);
        if(extmsg != null)
            e1.a(extmsg, 1);
    }

    static final boolean $assertionsDisabled;
    public String extmsg;
    public int result;

    static 
    {
        boolean flag;
        if(!QQPIM/RespHeader.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
