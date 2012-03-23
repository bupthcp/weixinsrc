// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qphone.a.a.a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

// Referenced classes of package com.tencent.qphone.a.a.a:
//            f

final class a
    implements ServiceConnection
{

    a(f f1)
    {
        a = f1;
        super();
    }

    public final void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        f.a(0);
        f.a(a, com.tencent.qphone.base.remote.a.a(ibinder));
    }

    public final void onServiceDisconnected(ComponentName componentname)
    {
        f.a(0);
        f.a(a, null);
    }

    private f a;
}
