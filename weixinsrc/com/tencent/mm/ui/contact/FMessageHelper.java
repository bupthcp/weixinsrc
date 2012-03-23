// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.content.Context;

// Referenced classes of package com.tencent.mm.ui.contact:
//            HelperHeaderPreference

class FMessageHelper
    implements HelperHeaderPreference.IHandler
{

    public FMessageHelper(Context context)
    {
        a = context;
    }

    public final CharSequence a()
    {
        return a.getString(0x7f0a026d);
    }

    public final void a(HelperHeaderPreference helperheaderpreference)
    {
        helperheaderpreference.a(true);
    }

    public final boolean a(boolean flag)
    {
        return true;
    }

    public final void b()
    {
    }

    private final Context a;
}
