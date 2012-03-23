// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modeltheme;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;

// Referenced classes of package com.tencent.mm.modeltheme:
//            ThemeInfoStorage, ThemeInfo

public final class ThemeLogic
{

    private ThemeLogic()
    {
    }

    public static ThemeInfo a(int i)
    {
        return MMCore.f().Q().e(i);
    }
}
