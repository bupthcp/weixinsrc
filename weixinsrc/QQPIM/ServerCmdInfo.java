// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;
import java.util.ArrayList;

// Referenced classes of package QQPIM:
//            CloudInfo

public final class ServerCmdInfo extends g
{

    public ServerCmdInfo()
    {
        cloudinfos = null;
        nextcheckinterval = 0;
    }

    public ServerCmdInfo(ArrayList arraylist, int i)
    {
        cloudinfos = null;
        nextcheckinterval = 0;
        cloudinfos = arraylist;
        nextcheckinterval = i;
    }

    public final String className()
    {
        return "QQPIM.ServerCmdInfo";
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
        h1.a(cloudinfos, "cloudinfos");
        h1.a(nextcheckinterval, "nextcheckinterval");
    }

    public final boolean equals(Object obj)
    {
        ServerCmdInfo servercmdinfo = (ServerCmdInfo)obj;
        boolean flag;
        if(c.a(cloudinfos, servercmdinfo.cloudinfos) && c.a(nextcheckinterval, servercmdinfo.nextcheckinterval))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final ArrayList getCloudinfos()
    {
        return cloudinfos;
    }

    public final int getNextcheckinterval()
    {
        return nextcheckinterval;
    }

    public final void readFrom(a a1)
    {
        if(cache_cloudinfos == null)
        {
            cache_cloudinfos = new ArrayList();
            CloudInfo cloudinfo = new CloudInfo();
            cache_cloudinfos.add(cloudinfo);
        }
        setCloudinfos((ArrayList)a1.a(cache_cloudinfos, 1, true));
        setNextcheckinterval(a1.a(nextcheckinterval, 2, true));
    }

    public final void setCloudinfos(ArrayList arraylist)
    {
        cloudinfos = arraylist;
    }

    public final void setNextcheckinterval(int i)
    {
        nextcheckinterval = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(cloudinfos, 1);
        e1.a(nextcheckinterval, 2);
    }

    static final boolean $assertionsDisabled;
    static ArrayList cache_cloudinfos;
    public ArrayList cloudinfos;
    public int nextcheckinterval;

    static 
    {
        boolean flag;
        if(!QQPIM/ServerCmdInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
