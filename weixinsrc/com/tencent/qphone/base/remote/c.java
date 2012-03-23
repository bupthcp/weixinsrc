// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qphone.base.remote;

import android.os.*;

// Referenced classes of package com.tencent.qphone.base.remote:
//            g, FromServiceMsg

public abstract class c extends Binder
    implements g
{

    public c()
    {
        attachInterface(this, "com.tencent.qphone.base.remote.IBaseActionListener");
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        FromServiceMsg fromservicemsg = null;
        i;
        JVM INSTR lookupswitch 3: default 40
    //                   1: 66
    //                   2: 105
    //                   1598968902: 54;
           goto _L1 _L2 _L3 _L4
_L1:
        boolean flag = super.onTransact(i, parcel, parcel1, j);
_L6:
        return flag;
_L4:
        parcel1.writeString("com.tencent.qphone.base.remote.IBaseActionListener");
        flag = true;
        continue; /* Loop/switch isn't completed */
_L2:
        parcel.enforceInterface("com.tencent.qphone.base.remote.IBaseActionListener");
        if(parcel.readInt() != 0)
            fromservicemsg = (FromServiceMsg)FromServiceMsg.CREATOR.createFromParcel(parcel);
        a(fromservicemsg);
        flag = true;
        continue; /* Loop/switch isn't completed */
_L3:
        parcel.enforceInterface("com.tencent.qphone.base.remote.IBaseActionListener");
        if(parcel.readInt() != 0)
            fromservicemsg = (FromServiceMsg)FromServiceMsg.CREATOR.createFromParcel(parcel);
        b(fromservicemsg);
        flag = true;
        if(true) goto _L6; else goto _L5
_L5:
    }
}
