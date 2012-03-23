// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.content.Context;
import com.tencent.mm.model.ConfigStorageLogic;

// Referenced classes of package com.tencent.mm.ui.contact:
//            HelperHeaderPreference

class QMessageHelper
    implements HelperHeaderPreference.IHandler
{

    public QMessageHelper(Context context)
    {
        a = context;
    }

    public final CharSequence a()
    {
        return a.getString(0x7f0a0272);
    }

    public final void a(HelperHeaderPreference helperheaderpreference)
    {
        boolean flag;
        if((0x20 & ConfigStorageLogic.f()) == 0)
            flag = true;
        else
            flag = false;
        helperheaderpreference.a(flag);
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
