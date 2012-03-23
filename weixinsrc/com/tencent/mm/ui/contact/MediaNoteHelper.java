// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.content.Context;
import com.tencent.mm.model.ConfigStorageLogic;

// Referenced classes of package com.tencent.mm.ui.contact:
//            HelperHeaderPreference, ContactWidgetMediaNote

class MediaNoteHelper
    implements HelperHeaderPreference.IHandler
{

    public MediaNoteHelper(Context context)
    {
        a = context;
    }

    public final CharSequence a()
    {
        return a.getString(0x7f0a0290);
    }

    public final void a(HelperHeaderPreference helperheaderpreference)
    {
        boolean flag;
        if((0x10 & ConfigStorageLogic.f()) == 0)
            flag = true;
        else
            flag = false;
        helperheaderpreference.a(flag);
    }

    public final boolean a(boolean flag)
    {
        ContactWidgetMediaNote.a(flag);
        return true;
    }

    public final void b()
    {
    }

    private Context a;
}
