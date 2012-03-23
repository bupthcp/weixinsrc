// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;

import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;

// Referenced classes of package com.tencent.mm.network:
//            IAccInfo

public class AccInfo extends IAccInfo_AIDL.Stub
    implements IAccInfo
{

    public AccInfo()
    {
    }

    public final void a()
    {
        a = "";
        b = "";
        c = "";
        d = "";
        e = new byte[0];
        f = 0;
    }

    public final void a(String s, int i)
    {
        d = s;
        f = i;
        Log.d("MicroMsg.AccInfo", (new StringBuilder()).append("update session info: session=").append(s).append(", uin=").append(i).toString());
    }

    public final void a(String s, String s1, String s2)
    {
        a = s;
        b = s1;
        c = s2;
    }

    public final void a(byte abyte0[])
    {
        e = abyte0;
    }

    public final String b()
    {
        return a;
    }

    public final String c()
    {
        return b;
    }

    public final String d()
    {
        return c;
    }

    public final String e()
    {
        return d;
    }

    public final byte[] f()
    {
        return e;
    }

    public final int g()
    {
        return f;
    }

    public final boolean h()
    {
        boolean flag;
        if(d != null && d.length() > 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("AccInfo:\n").append("|-uin     =").append(g()).append("\n").toString();
        String s1 = (new StringBuilder()).append(s).append("|-user    =").append(b()).append("\n").toString();
        String s2 = (new StringBuilder()).append(s1).append("|-session =").append(e()).append("\n").toString();
        String s3 = (new StringBuilder()).append(s2).append("|-pass    =").append(c()).append("\n").toString();
        String s4 = (new StringBuilder()).append(s3).append("|-pass2   =").append(d()).append("\n").toString();
        return (new StringBuilder()).append(s4).append("`-cookie  =").append(Util.a(f())).toString();
    }

    private String a;
    private String b;
    private String c;
    private String d;
    private byte e[];
    private int f;
}
