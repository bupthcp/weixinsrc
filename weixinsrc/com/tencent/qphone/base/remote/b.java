// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qphone.base.remote;

import android.os.IBinder;
import android.os.Parcel;

// Referenced classes of package com.tencent.qphone.base.remote:
//            f, ToServiceMsg

final class b
    implements f
{

    b(IBinder ibinder)
    {
        a = ibinder;
    }

    public final void a(ToServiceMsg toservicemsg)
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.tencent.qphone.base.remote.IBaseService");
        if(toservicemsg == null)
            break MISSING_BLOCK_LABEL_56;
        parcel.writeInt(1);
        toservicemsg.writeToParcel(parcel, 0);
_L1:
        a.transact(1, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public final IBinder asBinder()
    {
        return a;
    }

    private IBinder a;
}
