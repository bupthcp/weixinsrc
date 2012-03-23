// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qphone.base.remote;

import android.os.Parcel;

// Referenced classes of package com.tencent.qphone.base.remote:
//            ToServiceMsg

final class d
    implements android.os.Parcelable.Creator
{

    d()
    {
    }

    public final volatile Object createFromParcel(Parcel parcel)
    {
        return new ToServiceMsg(parcel);
    }

    public final volatile Object[] newArray(int i)
    {
        return new ToServiceMsg[i];
    }
}
