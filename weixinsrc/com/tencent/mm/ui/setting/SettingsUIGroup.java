// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.app.LocalActivityManager;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.ui.MMUIGroup;

// Referenced classes of package com.tencent.mm.ui.setting:
//            SettingsUI, SettingsPersonalInfoUI

public class SettingsUIGroup extends MMUIGroup
{

    public SettingsUIGroup()
    {
    }

    protected final void a()
    {
        a(new Intent(this, com/tencent/mm/ui/setting/SettingsUI));
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        break MISSING_BLOCK_LABEL_7;
        while(true) 
        {
            do
                return;
            while(j != -1 || i != 4 && i != 2 && i != 3);
            android.app.Activity activity = getLocalActivityManager().getCurrentActivity();
            if(activity instanceof SettingsUI)
                ((SettingsUI)activity).a(i, intent);
            else
            if(activity instanceof SettingsPersonalInfoUI)
                ((SettingsPersonalInfoUI)activity).a(i, intent);
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = this;
    }

    protected void onDestroy()
    {
        super.onDestroy();
        Log.e("MicroMsg.SettingsUIGroup", "on destroy");
        a = null;
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
    }

    public static SettingsUIGroup a;
}
