// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qphone.base.remote;

import android.os.*;

// Referenced classes of package com.tencent.qphone.base.remote:
//            f, b, ToServiceMsg

public abstract class a extends Binder
    implements f
{

    public a()
    {
        attachInterface(this, "com.tencent.qphone.base.remote.IBaseService");
    }

    public static f a(IBinder ibinder)
    {
        Object obj;
        if(ibinder == null)
        {
            obj = null;
        } else
        {
            android.os.IInterface iinterface = ibinder.queryLocalInterface("com.tencent.qphone.base.remote.IBaseService");
            if(iinterface != null && (iinterface instanceof f))
                obj = (f)iinterface;
            else
                obj = new b(ibinder);
        }
        return ((f) (obj));
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        i;
        JVM INSTR lookupswitch 2: default 28
    //                   1: 54
    //                   1598968902: 42;
           goto _L1 _L2 _L3
_L1:
        boolean flag = super.onTransact(i, parcel, parcel1, j);
_L5:
        return flag;
_L3:
        parcel1.writeString("com.tencent.qphone.base.remote.IBaseService");
        flag = true;
        continue; /* Loop/switch isn't completed */
_L2:
        parcel.enforceInterface("com.tencent.qphone.base.remote.IBaseService");
        ToServiceMsg toservicemsg;
        if(parcel.readInt() != 0)
            toservicemsg = (ToServiceMsg)ToServiceMsg.CREATOR.createFromParcel(parcel);
        else
            toservicemsg = null;
        a(toservicemsg);
        parcel1.writeNoException();
        flag = true;
        if(true) goto _L5; else goto _L4
_L4:
    }
}
