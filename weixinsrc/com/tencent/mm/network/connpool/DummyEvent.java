// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;

import android.os.Looper;

// Referenced classes of package com.tencent.mm.network.connpool:
//            ConnEvent

class DummyEvent extends ConnEvent
{

    protected DummyEvent(Looper looper)
    {
        super(looper);
    }

    protected final void a(int i, Object obj, Object obj1)
    {
    }

    protected final void a(String s, Integer integer, Object obj)
    {
    }

    protected final void a(byte abyte0[], Object obj)
    {
    }
}
