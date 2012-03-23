// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;

import android.os.IInterface;
import com.tencent.mm.protocal.IMMBaseReq_AIDL;
import com.tencent.mm.protocal.IMMBaseResp_AIDL;

// Referenced classes of package com.tencent.mm.network:
//            IAccInfo_AIDL, IOnAutoAuth_AIDL

public interface IReqResp_AIDL
    extends IInterface
{

    public abstract int a();

    public abstract IReqResp_AIDL a(IAccInfo_AIDL iaccinfo_aidl);

    public abstract void a(IAccInfo_AIDL iaccinfo_aidl, IOnAutoAuth_AIDL ionautoauth_aidl, int i, int j);

    public abstract void a(String s);

    public abstract String b();

    public abstract void b(IAccInfo_AIDL iaccinfo_aidl);

    public abstract IMMBaseResp_AIDL c();

    public abstract IMMBaseReq_AIDL d();

    public abstract int e();
}
