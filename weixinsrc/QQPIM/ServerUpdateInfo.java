// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class ServerUpdateInfo extends g
{

    public ServerUpdateInfo()
    {
        action = 0;
        type = 0;
        message = "";
        time = 0;
        nextcheckinterval = 0;
    }

    public ServerUpdateInfo(int i, int j, String s, int k, int l)
    {
        action = 0;
        type = 0;
        message = "";
        time = 0;
        nextcheckinterval = 0;
        action = i;
        type = j;
        message = s;
        time = k;
        nextcheckinterval = l;
    }

    public final String className()
    {
        return "QQPIM.ServerUpdateInfo";
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
        h1.a(action, "action");
        h1.a(type, "type");
        h1.a(message, "message");
        h1.a(time, "time");
        h1.a(nextcheckinterval, "nextcheckinterval");
    }

    public final boolean equals(Object obj)
    {
        ServerUpdateInfo serverupdateinfo = (ServerUpdateInfo)obj;
        boolean flag;
        if(c.a(action, serverupdateinfo.action) && c.a(type, serverupdateinfo.type) && c.a(message, serverupdateinfo.message) && c.a(time, serverupdateinfo.time) && c.a(nextcheckinterval, serverupdateinfo.nextcheckinterval))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getAction()
    {
        return action;
    }

    public final String getMessage()
    {
        return message;
    }

    public final int getNextcheckinterval()
    {
        return nextcheckinterval;
    }

    public final int getTime()
    {
        return time;
    }

    public final int getType()
    {
        return type;
    }

    public final void readFrom(a a1)
    {
        action = a1.a(action, 0, true);
        type = a1.a(type, 1, true);
        message = a1.b(2, true);
        time = a1.a(time, 3, false);
        nextcheckinterval = a1.a(nextcheckinterval, 4, false);
    }

    public final void setAction(int i)
    {
        action = i;
    }

    public final void setMessage(String s)
    {
        message = s;
    }

    public final void setNextcheckinterval(int i)
    {
        nextcheckinterval = i;
    }

    public final void setTime(int i)
    {
        time = i;
    }

    public final void setType(int i)
    {
        type = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(action, 0);
        e1.a(type, 1);
        e1.a(message, 2);
        e1.a(time, 3);
        e1.a(nextcheckinterval, 4);
    }

    static final boolean $assertionsDisabled;
    static int cache_action;
    static int cache_time;
    static int cache_type;
    public int action;
    public String message;
    public int nextcheckinterval;
    public int time;
    public int type;

    static 
    {
        boolean flag;
        if(!QQPIM/ServerUpdateInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
