// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.login;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.platformtools.Util;

// Referenced classes of package com.tencent.mm.ui.login:
//            ForgetPwdMobileUI

class ForgetPassMenuSelector
    implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
{

    public ForgetPassMenuSelector(Context context)
    {
        a = context;
    }

    public final void a(int i)
    {
        i;
        JVM INSTR tableswitch 0 2: default 28
    //                   0 29
    //                   1 49
    //                   2 72;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L2:
        Util.b(a, a.getString(0x7f0a0008));
        continue; /* Loop/switch isn't completed */
_L3:
        a.startActivity(new Intent(a, com/tencent/mm/ui/login/ForgetPwdMobileUI));
        continue; /* Loop/switch isn't completed */
_L4:
        Util.b(a, a.getString(0x7f0a0007));
        if(true) goto _L1; else goto _L5
_L5:
    }

    private Context a;
}
