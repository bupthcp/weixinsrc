// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qphone.base.remote;

import android.os.*;
import com.tencent.qphone.base.a.a;
import java.util.HashMap;

// Referenced classes of package com.tencent.qphone.base.remote:
//            h

public class FromServiceMsg
    implements Parcelable
{

    public FromServiceMsg(Parcel parcel)
    {
        b = new Bundle();
        e = new HashMap();
        c = parcel.readInt();
        d = parcel.readString();
        a = parcel.readString();
        b.clear();
        b.putAll(parcel.readBundle(com.tencent.qphone.base.a.a.a()));
        e.clear();
        parcel.readMap(e, com.tencent.qphone.base.a.a.a());
    }

    public FromServiceMsg(Object obj, int i, String s, String s1)
    {
        b = new Bundle();
        e = new HashMap();
        c = 1001;
        d = s;
        a = s1;
        b.putInt("RequestId", i);
        if(obj != null)
            e.put("__base_tag_respObj", obj);
    }

    public final boolean a()
    {
        boolean flag;
        if(c == 1000)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final void b()
    {
        c = 1001;
        b.putInt("fail_code", 1002);
    }

    public final int c()
    {
        return b.getInt("fail_code", 1001);
    }

    public final String d()
    {
        return a;
    }

    public int describeContents()
    {
        return 0;
    }

    public String toString()
    {
        return (new StringBuilder("resultCode=")).append(c).append("|uin=").append(d).append("|serviceCmd=").append(a).append("|extraData=").append(b).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(c);
        parcel.writeString(d);
        parcel.writeString(a);
        parcel.writeBundle(b);
        parcel.writeMap(e);
    }

    public static final android.os.Parcelable.Creator CREATOR = new h();
    public String a;
    public final Bundle b;
    private int c;
    private String d;
    private HashMap e;

}
