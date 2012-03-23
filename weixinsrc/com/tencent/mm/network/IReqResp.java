// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;


// Referenced classes of package com.tencent.mm.network:
//            IAccInfo

public interface IReqResp
{

    public abstract IReqResp a(IAccInfo iaccinfo);

    public abstract void a(String s);

    public abstract com.tencent.mm.protocal.MMBase.Resp b();

    public abstract int c();

    public abstract String d();

    public abstract int e();

    public abstract com.tencent.mm.protocal.MMBase.Req f();
}
