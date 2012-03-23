// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.AlertDialog;
import android.content.Intent;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity, MMAlert

public final class MMErrorProcessor
{

    private MMErrorProcessor()
    {
    }

    public static AlertDialog a(MMActivity mmactivity, int i, int j, Intent intent)
    {
        AlertDialog alertdialog = null;
        if(i == 4) goto _L2; else goto _L1
_L1:
        return alertdialog;
_L2:
        Log.d("MicroMsg.MMErrorProcessor", (new StringBuilder()).append("errType = ").append(i).append(" errCode = ").append(j).toString());
        switch(j)
        {
        case -100: 
            Log.a("MicroMsg.MMErrorProcessor", (new StringBuilder()).append("account expired=").append(j).toString());
            MMCore.x();
            alertdialog = MMAlert.a(mmactivity.c(), 0x7f0a012c, 0x7f0a0010, new _cls2(intent, mmactivity));
            break;

        case -72: 
        case -9: 
        case -6: 
        case -4: 
        case -3: 
            Log.a("MicroMsg.MMErrorProcessor", (new StringBuilder()).append("account expired=").append(j).toString());
            alertdialog = MMAlert.a(mmactivity.c(), 0x7f0a012b, 0x7f0a0010, new _cls1(intent, mmactivity));
            break;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            MMCore.e().a(1, null);
            MMCore.r();
            if(a != null)
            {
                b.finish();
                b.startActivity(a);
            }
        }

        private Intent a;
        private MMActivity b;

        _cls2(Intent intent, MMActivity mmactivity)
        {
            a = intent;
            b = mmactivity;
            super();
        }
    }


    private class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            MMCore.e().a(1, null);
            MMCore.r();
            if(a != null)
            {
                b.finish();
                b.startActivity(a);
            }
        }

        private Intent a;
        private MMActivity b;

        _cls1(Intent intent, MMActivity mmactivity)
        {
            a = intent;
            b = mmactivity;
            super();
        }
    }

}
