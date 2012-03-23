// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qphone.base.remote;

import android.os.*;
import com.tencent.qphone.base.a.a;
import java.util.HashMap;

// Referenced classes of package com.tencent.qphone.base.remote:
//            d, g, e

public class ToServiceMsg
    implements Parcelable
{

    public ToServiceMsg(Parcel parcel)
    {
        e = 0;
        f = new Bundle();
        g = 30000L;
        h = -1L;
        i = new HashMap();
        try
        {
            b = parcel.readString();
            c = parcel.readString();
            e = parcel.readByte();
            d = parcel.readString();
            g = parcel.readLong();
            f.clear();
            f.putAll(parcel.readBundle(com.tencent.qphone.base.a.a.a()));
            i.clear();
            parcel.readMap(i, com.tencent.qphone.base.a.a.a());
            IBinder ibinder = parcel.readStrongBinder();
            Object obj;
            if(ibinder == null)
            {
                obj = null;
            } else
            {
                android.os.IInterface iinterface = ibinder.queryLocalInterface("com.tencent.qphone.base.remote.IBaseActionListener");
                if(iinterface != null && (iinterface instanceof g))
                    obj = (g)iinterface;
                else
                    obj = new e(ibinder);
            }
            a = ((g) (obj));
            return;
        }
        catch(Exception exception)
        {
            throw new RuntimeException(exception);
        }
    }

    public final int a()
    {
        return f.getInt("RequestId", -1);
    }

    public final String b()
    {
        return c;
    }

    public final String c()
    {
        return d;
    }

    public final Object d()
    {
        return i.get("__base_tag_respObj");
    }

    public int describeContents()
    {
        return 0;
    }

    public String toString()
    {
        return (new StringBuilder("ToServiceMsg dest:")).append(b).append(" uin:").append(c).append(" serviceCmd:").append(d).toString();
    }

    public void writeToParcel(Parcel parcel, int j)
    {
        parcel.writeString(b);
        parcel.writeString(c);
        parcel.writeByte(e);
        parcel.writeString(d);
        parcel.writeLong(g);
        parcel.writeBundle(f);
        parcel.writeMap(i);
        parcel.writeStrongInterface(a);
    }

    public static final android.os.Parcelable.Creator CREATOR = new d();
    public g a;
    private String b;
    private String c;
    private String d;
    private byte e;
    private Bundle f;
    private long g;
    private long h;
    private HashMap i;

}
