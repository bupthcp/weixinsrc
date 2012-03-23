// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qphone.base.remote;

import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.tencent.qphone.base.remote:
//            g, FromServiceMsg

final class e
    implements g
{

    e(IBinder ibinder)
    {
        a = ibinder;
    }

    public final void a(FromServiceMsg fromservicemsg)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("com.tencent.qphone.base.remote.IBaseActionListener");
        if(fromservicemsg == null)
            break MISSING_BLOCK_LABEL_44;
        parcel.writeInt(1);
        fromservicemsg.writeToParcel(parcel, 0);
_L1:
        a.transact(1, parcel, null, 1);
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    public final IBinder asBinder()
    {
        return a;
    }

    public final void b(FromServiceMsg fromservicemsg)
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("com.tencent.qphone.base.remote.IBaseActionListener");
        if(fromservicemsg == null)
            break MISSING_BLOCK_LABEL_44;
        parcel.writeInt(1);
        fromservicemsg.writeToParcel(parcel, 0);
_L1:
        a.transact(2, parcel, null, 1);
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        Exception exception;
        exception;
        parcel.recycle();
        throw exception;
    }

    private IBinder a;
}
