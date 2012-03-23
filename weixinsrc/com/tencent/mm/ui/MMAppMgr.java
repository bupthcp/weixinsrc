// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.Activity;
import android.content.*;
import android.os.Process;
import com.tencent.mm.algorithm.Base64;
import com.tencent.mm.booter.CoreServiceHelper;
import com.tencent.mm.booter.MMNotification;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.tools.WhatsNewUI;

// Referenced classes of package com.tencent.mm.ui:
//            MMAlert, LauncherUI

public final class MMAppMgr
{

    private MMAppMgr()
    {
        b = false;
        c = false;
    }

    public static String a()
    {
        return d;
    }

    public static void a(int i)
    {
        f = i;
    }

    public static void a(Activity activity)
    {
        if(MMEntryLock.a("show_whatsnew"))
        {
            Intent intent = new Intent();
            intent.setClass(activity, com/tencent/mm/ui/tools/WhatsNewUI);
            activity.startActivity(intent);
        }
    }

    public static void a(Context context)
    {
        if(MMEntryLock.a("network_doctor_shown"))
            MMAlert.a(context, 0x7f0a0075, 0x7f0a0010, new _cls3(context), null);
    }

    public static void a(Context context, Intent intent)
    {
        Intent intent1 = (new Intent()).setClass(context, com/tencent/mm/ui/LauncherUI);
        intent1.addFlags(0x4000000);
        intent1.putExtra("absolutely_exit", true);
        intent1.putExtra("exit_and_view", intent);
        context.startActivity(intent1);
        MMCore.r();
    }

    public static void a(Context context, String s, String s1)
    {
        if(MMEntryLock.a("wap_reporter_shown"))
            MMAlert.a(context, 0x7f0a0074, 0x7f0a0010, new _cls2(context, s, s1), null);
    }

    public static void a(String s)
    {
        d = s;
    }

    public static void a(boolean flag)
    {
        if(flag)
            AvatarLogic.a();
        g().b = flag;
        g().g.a(1000L);
    }

    static boolean a(MMAppMgr mmappmgr)
    {
        return mmappmgr.c;
    }

    static boolean a(MMAppMgr mmappmgr, boolean flag)
    {
        mmappmgr.c = flag;
        return flag;
    }

    public static String b()
    {
        return e;
    }

    public static void b(Context context)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("com.tencent.mm_preferences", 0);
        if(!sharedpreferences.getBoolean("Main_ShortCut", false))
        {
            MMAlert.a(context, 0x7f0a012f, 0x7f0a0010, new _cls4(context), null);
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putBoolean("Main_ShortCut", true);
            editor.commit();
        }
    }

    public static void b(Context context, String s, String s1)
    {
        String s2 = (String)MMCore.f().f().a(2);
        String s3 = (new StringBuilder()).append("http://w.mail.qq.com/cgi-bin/mmfeedback?t=mmfeedback&f=xhtml").append("&u=").append(Base64.b(s2.getBytes())).toString();
        String s4 = (new StringBuilder()).append(s3).append("&i=").append(Base64.b(s.getBytes())).toString();
        String s5 = (new StringBuilder()).append(s4).append("&e=").append(Base64.b(s1.getBytes())).toString();
        String s6 = (new StringBuilder()).append(s5).append("&autologin=n").toString();
        Log.d("MicroMsg.MMAppMgr", (new StringBuilder()).append("upload error to ").append(s6).toString());
        Util.b(context, s6);
    }

    public static void b(String s)
    {
        e = s;
    }

    static boolean b(MMAppMgr mmappmgr)
    {
        return mmappmgr.b;
    }

    public static int c()
    {
        return f;
    }

    public static boolean d()
    {
        return g().c;
    }

    public static void e()
    {
        MMCore.p().a();
    }

    public static void f()
    {
        Context context = MMCore.c();
        if(context != null)
        {
            CoreServiceHelper.a(context);
            context.stopService(new Intent(context, com/tencent/mm/booter/NotifyReceiver$NotifyService));
        }
        Process.killProcess(Process.myPid());
    }

    private static MMAppMgr g()
    {
        if(a == null)
            a = new MMAppMgr();
        return a;
    }

    private static MMAppMgr a = null;
    private static String d;
    private static String e;
    private static int f;
    private boolean b;
    private boolean c;
    private final MTimerHandler g = new MTimerHandler(new _cls1(), false);


    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            if(MMAppMgr.a(a) == MMAppMgr.b(a))
            {
                Log.d("MicroMsg.MMAppMgr", (new StringBuilder()).append("status not changed, cur=").append(MMAppMgr.a(a)).toString());
            } else
            {
                MMAppMgr.a(a, MMAppMgr.b(a));
                if(MMAppMgr.a(a))
                {
                    Log.b("MicroMsg.MMAppMgr", "[ACTIVATED MODE]");
                    if(MMCore.f().b() && !MMCore.w())
                    {
                        MMCore.g().b(new NetSceneSync(3));
                        MMCore.g().b(new NetSceneSendMsg(ConfigStorageLogic.b()));
                        MMCore.i().a();
                        MMCore.j().a();
                        MMCore.l().a();
                        MMCore.m().a();
                    }
                    MMCore.a(true);
                } else
                {
                    Log.b("MicroMsg.MMAppMgr", "[DEACTIVATED MODE]");
                    if(MMCore.f().b())
                    {
                        PostTaskFMessageCardStat.b();
                        PostTaskLocationOpenStat.a();
                    }
                    MMCore.a(false);
                }
            }
            return true;
        }

        private MMAppMgr a;

        _cls1()
        {
            a = MMAppMgr.this;
            super();
        }
    }


    private class _cls3
        implements android.content.DialogInterface.OnClickListener
    {

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            a.startActivity(new Intent("android.settings.WIRELESS_SETTINGS"));
        }

        private Context a;

        _cls3(Context context)
        {
            a = context;
            super();
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            MMAppMgr.b(a, b, c);
        }

        private Context a;
        private String b;
        private String c;

        _cls2(Context context, String s, String s1)
        {
            a = context;
            b = s;
            c = s1;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            Intent intent = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
            intent.putExtra("android.intent.extra.shortcut.NAME", a.getString(0x7f0a000f));
            intent.putExtra("duplicate", false);
            Intent intent1 = new Intent("android.intent.action.MAIN");
            intent1.addCategory("android.intent.category.LAUNCHER");
            intent1.setComponent(new ComponentName(a.getPackageName(), (new StringBuilder()).append(a.getPackageName()).append(".ui.LauncherUI").toString()));
            intent.putExtra("android.intent.extra.shortcut.INTENT", intent1);
            intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", android.content.Intent.ShortcutIconResource.fromContext(a, 0x7f02013b));
            a.sendBroadcast(intent);
        }

        private Context a;

        _cls4(Context context)
        {
            a = context;
            super();
        }
    }

}
