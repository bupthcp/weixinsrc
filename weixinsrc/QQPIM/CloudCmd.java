// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class CloudCmd extends g
{

    public CloudCmd()
    {
        cmdid = 0;
        param = null;
    }

    public CloudCmd(int i, byte abyte0[])
    {
        cmdid = 0;
        param = null;
        cmdid = i;
        param = abyte0;
    }

    public final String className()
    {
        return "QQPIM.CloudCmd";
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
        h1.a(cmdid, "cmdid");
        h1.a(param, "param");
    }

    public final boolean equals(Object obj)
    {
        CloudCmd cloudcmd = (CloudCmd)obj;
        boolean flag;
        if(c.a(cmdid, cloudcmd.cmdid) && c.a(param, cloudcmd.param))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getCmdid()
    {
        return cmdid;
    }

    public final byte[] getParam()
    {
        return param;
    }

    public final void readFrom(a a1)
    {
        cmdid = a1.a(cmdid, 0, true);
        if(cache_param == null)
        {
            byte abyte0[] = new byte[1];
            cache_param = abyte0;
            abyte0[0] = 0;
        }
        param = a1.c(1, true);
    }

    public final void setCmdid(int i)
    {
        cmdid = i;
    }

    public final void setParam(byte abyte0[])
    {
        param = abyte0;
    }

    public final void writeTo(e e1)
    {
        e1.a(cmdid, 0);
        e1.a(param, 1);
    }

    static final boolean $assertionsDisabled;
    static byte cache_param[];
    public int cmdid;
    public byte param[];

    static 
    {
        boolean flag;
        if(!QQPIM/CloudCmd.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
