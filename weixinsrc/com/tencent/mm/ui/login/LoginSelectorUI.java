// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.login;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import com.tencent.mm.ui.*;

// Referenced classes of package com.tencent.mm.ui.login:
//            LoginUI, RegByMobileRegUI

public class LoginSelectorUI extends MMActivity
    implements android.view.View.OnClickListener
{

    public LoginSelectorUI()
    {
    }

    protected final int a()
    {
        return 0x7f0300d1;
    }

    public void onClick(View view)
    {
        view.getId();
        JVM INSTR tableswitch 2131165747 2131165748: default 28
    //                   2131165747 29
    //                   2131165748 46;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        startActivity(new Intent(this, com/tencent/mm/ui/login/LoginUI));
        continue; /* Loop/switch isn't completed */
_L3:
        startActivity(new Intent(this, com/tencent/mm/ui/login/RegByMobileRegUI));
        if(true) goto _L1; else goto _L4
_L4:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        c(8);
        MMAppMgr.e();
        Button button = (Button)findViewById(0x7f070233);
        Button button1 = (Button)findViewById(0x7f070234);
        button.setOnClickListener(this);
        button1.setOnClickListener(this);
        MMAppMgr.b(this);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if(keyevent.getKeyCode() == 4 && keyevent.getAction() == 0)
        {
            Intent intent = new Intent(this, com/tencent/mm/ui/LauncherUI);
            intent.addFlags(0x4000000);
            intent.putExtra("can_finish", true);
            startActivity(intent);
            finish();
        }
        return super.onKeyDown(i, keyevent);
    }
}
