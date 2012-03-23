// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.Activity;
import android.content.*;
import android.os.Bundle;
import android.os.Handler;
import b.a.e;
import com.tencent.mm.booter.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelbase.LocalAccInfo;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.ConstantsStorage;
import com.tencent.mm.ui.login.LoginHistoryUI;
import com.tencent.mm.ui.login.LoginSelectorUI;
import java.io.File;

// Referenced classes of package com.tencent.mm.ui:
//            MainTabUI, MMActivity, MMAppMgr, WelcomeUI

public class LauncherUI extends Activity
{

    public LauncherUI()
    {
        b = null;
    }

    private void a(int i, int j)
    {
        (new Handler()).postDelayed(new _cls1(j), i);
    }

    private void a(Intent intent, int i, int j)
    {
        (new Handler()).postDelayed(new _cls2(j, intent), i);
    }

    static void a(LauncherUI launcherui)
    {
        SharedPreferences sharedpreferences = launcherui.getSharedPreferences("com.tencent.mm_preferences", 0);
        String s = sharedpreferences.getString("login_user_name", "");
        if(a == null)
        {
            Debugger debugger = new Debugger(launcherui);
            a = debugger;
            debugger.a(s);
        }
        if(!launcherui.getIntent().getBooleanExtra("Intro_Switch", false) && MMCore.t() && !MMCore.w())
        {
            Log.b("MicroMsg.LauncherUI", "[Launching Application]");
            sharedpreferences.edit().putBoolean("settings_fully_exit", false).commit();
            Intent intent = new Intent(launcherui, com/tencent/mm/ui/MainTabUI);
            intent.addFlags(0x4000000);
            launcherui.startActivity(intent);
        } else
        {
            MMCore.o().b();
            MMCore.f().Y();
            MMCore.y();
            MMCore.z();
            if(s.equals(""))
                launcherui.startActivity((new Intent()).setClass(launcherui, com/tencent/mm/ui/login/LoginSelectorUI));
            else
                launcherui.startActivity((new Intent()).setClass(launcherui, com/tencent/mm/ui/login/LoginHistoryUI));
        }
    }

    static void a(LauncherUI launcherui, int i)
    {
        launcherui.a(200, i);
    }

    static void a(LauncherUI launcherui, Intent intent, int i)
    {
        launcherui.a(intent, 100, i);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        Log.e("MicroMsg.LauncherUI", "on activity result");
        b = intent;
        i;
        JVM INSTR tableswitch 1 1: default 40
    //                   1 41;
           goto _L1 _L2
_L1:
        return;
_L2:
        if(j == -1)
            Log.e("MicroMsg.LauncherUI", "on activity from WelcomeUI");
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        Log.e("MicroMsg.LauncherUI", "onCreate");
        super.onCreate(bundle);
        NotifyReceiver.a();
        if(MMCore.c() == null)
            MMCore.a(getApplicationContext());
        CoreServiceHelper.a(getApplicationContext(), "noop");
        MMActivity.a((float)e.a(this, 160F) / 160F);
    }

    protected void onDestroy()
    {
        Log.e("MicroMsg.LauncherUI", "on destroy");
        super.onDestroy();
    }

    protected void onNewIntent(Intent intent)
    {
        Log.d("MicroMsg.LauncherUI", "onNewIntent");
        b = intent;
        super.onNewIntent(intent);
    }

    protected void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        File file;
        Log.d("MicroMsg.LauncherUI", "onResume");
        super.onResume();
        AvatarLogic.a();
        file = new File((new StringBuilder()).append(ConstantsStorage.b).append("crash_record_file").toString());
        if(!file.exists()) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.LauncherUI", "last time crash!!");
        file.delete();
        finish();
_L4:
        return;
_L2:
        if(b == null)
            b = getIntent();
        if(b.getBooleanExtra("absolutely_exit", false))
        {
            Log.b("MicroMsg.LauncherUI", "exit absolutely!!!");
            Intent intent = (Intent)b.getParcelableExtra("exit_and_view");
            if(intent != null)
            {
                Log.b("MicroMsg.LauncherUI", (new StringBuilder()).append("jump to exit:").append(intent).toString());
                startActivity(intent);
            }
            finish();
            MMAppMgr.f();
            continue; /* Loop/switch isn't completed */
        }
        if(b.getBooleanExtra("can_finish", false))
        {
            Log.c("MicroMsg.LauncherUI", "exit obviously");
            MMCore.g().a(true);
            if(getApplicationContext().getSharedPreferences("com.tencent.mm_preferences", 0).getBoolean("settings_fully_exit", false))
                CoreServiceHelper.a(getApplicationContext());
            finish();
            continue; /* Loop/switch isn't completed */
        }
        if(MMCore.q() == null)
            CoreServiceHelper.b(getApplicationContext());
        SharedPreferences sharedpreferences = getApplicationContext().getSharedPreferences("com.tencent.mm_preferences", 0);
        boolean flag = Util.a(this, "com.tencent.mm:push");
        boolean flag1 = sharedpreferences.getBoolean("settings_fully_exit", false);
        if(flag && !flag1)
            MMEntryLock.a("welcome_page_show");
        String s = b.getStringExtra("nofification_type");
        if(s == null || !s.equals("new_msg_nofification") && !s.equals("update_nofification"))
            break; /* Loop/switch isn't completed */
        a(b, 0, 0);
_L5:
        b = null;
        if(true) goto _L4; else goto _L3
_L3:
        if(MMEntryLock.a("welcome_page_show"))
            startActivityForResult(new Intent(this, com/tencent/mm/ui/WelcomeUI), 1);
        else
            a(0, 0);
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    private static Debugger a;
    private Intent b;

    private class _cls1
        implements Runnable
    {

        public void run()
        {
            if(MMCore.q() != null)
                LauncherUI.a(b);
            else
            if(a >= 20)
            {
                Log.a("MicroMsg.LauncherUI", "can't not bind Service");
                b.finish();
            } else
            {
                LauncherUI.a(b, 1 + a);
            }
        }

        private int a;
        private LauncherUI b;

        _cls1(int i)
        {
            b = LauncherUI.this;
            a = i;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        public void run()
        {
            if(MMCore.q() == null && a < 10) goto _L2; else goto _L1
_L1:
            LauncherUI launcherui;
            Intent intent;
            String s;
            launcherui = c;
            intent = b;
            s = intent.getStringExtra("nofification_type");
            if(s == null) goto _L4; else goto _L3
_L3:
            if(!s.equals("new_msg_nofification")) goto _L6; else goto _L5
_L5:
            Context context1 = launcherui.getApplicationContext();
            Log.c("MicroMsg.LauncherUI", "dealWithNewMsgNotification");
            int j = intent.getIntExtra("talkerCount", 0);
            int k = intent.getIntExtra("Intro_Bottle_unread_count", 0);
            String s1 = intent.getStringExtra("Main_User");
            int l = intent.getIntExtra("MainUI_User_Last_Msg_Type", 0);
            Intent intent2 = new Intent(context1, com/tencent/mm/ui/MainTabUI);
            if(j <= 1)
            {
                intent2.putExtra("Intro_Is_Muti_Talker", false);
                intent2.putExtra("Intro_Bottle_unread_count", k);
            } else
            {
                intent2.putExtra("Intro_Is_Muti_Talker", true);
            }
            intent2.putExtra("Main_User", s1);
            intent2.putExtra("MainUI_User_Last_Msg_Type", l);
            intent2.addFlags(0x4000000);
            intent2.addFlags(0x20000000);
            launcherui.startActivity(intent2);
_L4:
            return;
_L6:
            if(s.equals("update_nofification"))
            {
                Context context = launcherui.getApplicationContext();
                Log.c("MicroMsg.LauncherUI", "dealWithUpdateNotification");
                int i = intent.getIntExtra("update_type", 0);
                Intent intent1 = new Intent(context, com/tencent/mm/ui/MainTabUI);
                intent1.addFlags(0x4000000);
                intent1.addFlags(0x20000000);
                intent1.putExtra("show_update_dialog", true);
                intent1.putExtra("update_type", i);
                launcherui.startActivity(intent1);
            }
            continue; /* Loop/switch isn't completed */
_L2:
            LauncherUI.a(c, b, 1 + a);
            if(true) goto _L4; else goto _L7
_L7:
        }

        private int a;
        private Intent b;
        private LauncherUI c;

        _cls2(int i, Intent intent)
        {
            c = LauncherUI.this;
            a = i;
            b = intent;
            super();
        }
    }

}
