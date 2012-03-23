// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.booter;

import android.app.*;
import android.content.*;
import android.media.*;
import android.os.Handler;
import android.text.format.Time;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelemoji.EmojiService;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.modelvoice.NetSceneDownloadVoice;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.LauncherUI;
import com.tencent.mm.ui.MMAppMgr;
import com.tencent.mm.ui.chatting.SpanUtil;
import java.io.IOException;
import java.util.List;

public class MMNotification
    implements IOnNewMsgNotify
{

    public MMNotification(Context context)
    {
        g = null;
        h = new _cls1();
        g = context;
        a = "";
        b = "";
        f = 0L;
        e = false;
        NetSceneSync.a(this);
        NetSceneDownloadVoice.a(this);
        EmojiService.a(this);
    }

    static String a(MMNotification mmnotification)
    {
        return mmnotification.a;
    }

    private String a(String s, boolean flag)
    {
        String s1;
        String s2;
        s1 = null;
        Context context8;
        Object aobj8[];
        if(ContactStorageLogic.b(s) && flag)
        {
            int i = MsgInfoStorageLogic.a(b);
            if(i != -1)
                s1 = ContactStorageLogic.e(b.substring(0, i).trim());
        } else
        {
            s1 = ContactStorageLogic.e(s);
        }
        if(!s.contains("@bottle")) goto _L2; else goto _L1
_L1:
        context8 = g;
        aobj8 = new Object[1];
        aobj8[0] = Integer.valueOf(1);
        s2 = context8.getString(0x7f0a00d0, aobj8);
_L4:
        return s2;
_L2:
        switch(c)
        {
        default:
            if(ContactStorageLogic.p(s))
            {
                Context context7 = g;
                Object aobj7[] = new Object[1];
                aobj7[0] = s1;
                s2 = context7.getString(0x7f0a00cf, aobj7);
            } else
            {
                Context context6 = g;
                Object aobj6[] = new Object[1];
                aobj6[0] = s1;
                s2 = context6.getString(0x7f0a00ca, aobj6);
            }
            break;

        case 3: // '\003'
        case 13: // '\r'
        case 23: // '\027'
        case 33: // '!'
            if(ContactStorageLogic.p(s))
            {
                Context context5 = g;
                Object aobj5[] = new Object[1];
                aobj5[0] = s1;
                s2 = context5.getString(0x7f0a00cf, aobj5);
            } else
            {
                Context context4 = g;
                Object aobj4[] = new Object[1];
                aobj4[0] = s1;
                s2 = context4.getString(0x7f0a00cb, aobj4);
            }
            break;

        case 34: // '"'
            Context context3 = g;
            Object aobj3[] = new Object[1];
            aobj3[0] = s1;
            s2 = context3.getString(0x7f0a00cc, aobj3);
            break;

        case 35: // '#'
            Context context2 = g;
            Object aobj2[] = new Object[1];
            aobj2[0] = s1;
            s2 = context2.getString(0x7f0a00ce, aobj2);
            break;

        case 43: // '+'
            Context context1 = g;
            Object aobj1[] = new Object[1];
            aobj1[0] = s1;
            s2 = context1.getString(0x7f0a00cd, aobj1);
            break;

        case 47: // '/'
            Context context = g;
            Object aobj[] = new Object[1];
            aobj[0] = s1;
            s2 = context.getString(0x7f0a00d1, aobj);
            break;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    static void a(MMNotification mmnotification, String s, String s1, int i)
    {
        if(!MMEntryLock.c("keep_app_silent")) goto _L2; else goto _L1
_L1:
        boolean flag;
        Log.d("MicroMsg.MMNotification", "shouldKeepSilent: is locked");
        flag = true;
_L11:
        boolean flag1;
        int j;
        int k;
        Time time;
        flag1 = ConfigStorageLogic.k();
        j = ConfigStorageLogic.o();
        k = ConfigStorageLogic.p();
        time = new Time();
        time.setToNow();
        if(ContactStorageLogic.F(s) && flag1 && Util.a(time.hour, j, k)) goto _L4; else goto _L3
_L3:
        boolean flag2;
        SharedPreferences sharedpreferences1;
        android.net.Uri uri;
        MediaPlayer mediaplayer;
        if(ContactStorageLogic.b(s) && !ContactStorageLogic.I(s))
            flag2 = false;
        else
            flag2 = true;
        if(!s.equals(MMAppMgr.a())) goto _L6; else goto _L5
_L5:
        mmnotification.a(flag);
        if(flag) goto _L4; else goto _L7
_L7:
        sharedpreferences1 = mmnotification.g.getSharedPreferences("com.tencent.mm_preferences", 0);
        boolean flag4 = sharedpreferences1.getBoolean("settings_shake", true);
        Util.a(mmnotification.g, flag4);
        if(!sharedpreferences1.getBoolean("settings_sound", true) || MMEntryLock.c((new StringBuilder()).append("keep_chatting_silent").append(s).toString())) goto _L4; else goto _L8
_L8:
        uri = RingtoneManager.getDefaultUri(2);
        mediaplayer = new MediaPlayer();
        mediaplayer.setDataSource(mmnotification.g, uri);
        if(((AudioManager)mmnotification.g.getSystemService("audio")).getStreamVolume(5) != 0)
        {
            mediaplayer.setAudioStreamType(5);
            mediaplayer.setLooping(true);
            mediaplayer.prepare();
            mediaplayer.setLooping(false);
            mediaplayer.start();
        }
_L4:
        return;
_L2:
        if(mmnotification.f > 0L) goto _L10; else goto _L9
_L9:
        Log.d("MicroMsg.MMNotification", (new StringBuilder()).append("shouldKeepSilent: lastNotSilentTime = ").append(mmnotification.f).toString());
_L13:
        flag = false;
          goto _L11
_L10:
        if(System.currentTimeMillis() <= mmnotification.f || System.currentTimeMillis() >= 5000L + mmnotification.f) goto _L13; else goto _L12
_L12:
        Log.d("MicroMsg.MMNotification", (new StringBuilder()).append("shouldKeepSilent: lastNotSilentTime = ").append(mmnotification.f).append(" current time = ").append(System.currentTimeMillis()).toString());
        flag = mmnotification.e;
          goto _L11
_L6:
        if(!s.trim().endsWith("@chatroom") || !MMAppMgr.d() || flag2)
        {
            mmnotification.a();
            mmnotification.a(flag);
            SharedPreferences sharedpreferences = mmnotification.g.getSharedPreferences("com.tencent.mm_preferences", 0);
            if(sharedpreferences.getBoolean("settings_new_msg_notification", true))
            {
                boolean flag3;
                Notification notification;
                String s2;
                int l;
                Conversation conversation;
                int i1;
                String s3;
                Intent intent;
                android.text.SpannableString spannablestring;
                android.text.SpannableString spannablestring1;
                NotificationManager notificationmanager;
                IllegalArgumentException illegalargumentexception;
                SecurityException securityexception;
                IllegalStateException illegalstateexception;
                IOException ioexception;
                if(s.trim().endsWith("@chatroom") && !ContactStorageLogic.I(s))
                    flag3 = false;
                else
                    flag3 = true;
                notification = new Notification();
                notification.icon = 0x7f0201f4;
                notification.ledARGB = 0xff00ff00;
                notification.ledOnMS = 300;
                notification.ledOffMS = 1000;
                notification.flags = 1 | notification.flags;
                if(sharedpreferences.getBoolean("settings_sound", true) && !flag && flag3)
                    notification.defaults = 1 | notification.defaults;
                if(sharedpreferences.getBoolean("settings_shake", true) && !flag && flag3)
                    notification.defaults = 2 | notification.defaults;
                s2 = MsgInfoStorageLogic.a(0, s, s1, i, mmnotification.g);
                l = MMCore.f().j().h(ContactStorageLogic.a);
                mmnotification.d = MMCore.f().j().i(ContactStorageLogic.a);
                MMAppMgr.b(s);
                MMAppMgr.a(mmnotification.d);
                conversation = MMCore.f().j().d("floatbottle");
                if(conversation != null)
                    i1 = conversation.b();
                else
                    i1 = 0;
                if(i1 - l == 0 && i1 > 0)
                {
                    s3 = mmnotification.g.getString(0x7f0a00db);
                    Context context3 = mmnotification.g;
                    Object aobj3[] = new Object[1];
                    aobj3[0] = Integer.valueOf(i1);
                    s2 = context3.getString(0x7f0a00d0, aobj3);
                } else
                if(l > 0 && i1 > 0)
                {
                    s3 = mmnotification.g.getString(0x7f0a00db);
                    Context context2 = mmnotification.g;
                    Object aobj2[] = new Object[2];
                    aobj2[0] = Integer.valueOf(mmnotification.d);
                    aobj2[1] = Integer.valueOf(l);
                    s2 = context2.getString(0x7f0a00c8, aobj2);
                } else
                if(l > 1)
                {
                    if(mmnotification.d > 1)
                    {
                        s3 = mmnotification.g.getString(0x7f0a00db);
                        Context context1 = mmnotification.g;
                        Object aobj1[] = new Object[2];
                        aobj1[0] = Integer.valueOf(mmnotification.d);
                        aobj1[1] = Integer.valueOf(l);
                        s2 = context1.getString(0x7f0a00c8, aobj1);
                    } else
                    {
                        s3 = ContactStorageLogic.e(s);
                        Context context = mmnotification.g;
                        Object aobj[] = new Object[1];
                        aobj[0] = Integer.valueOf(l);
                        s2 = context.getString(0x7f0a00c9, aobj);
                    }
                } else
                {
                    s3 = mmnotification.a(s, false);
                }
                notification.tickerText = SpanUtil.a(mmnotification.g, mmnotification.a(s, true), -2);
                intent = new Intent(mmnotification.g, com/tencent/mm/ui/LauncherUI);
                intent.putExtra("nofification_type", "new_msg_nofification");
                intent.putExtra("talkerCount", mmnotification.d);
                if(mmnotification.d <= 1)
                {
                    intent.putExtra("Intro_Is_Muti_Talker", false);
                    intent.putExtra("Intro_Bottle_unread_count", i1);
                } else
                {
                    intent.putExtra("Intro_Is_Muti_Talker", true);
                }
                intent.putExtra("Main_User", s);
                intent.putExtra("MainUI_User_Last_Msg_Type", i);
                intent.addFlags(0x20000000);
                intent.addFlags(0x4000000);
                spannablestring = SpanUtil.a(mmnotification.g, s2, -2);
                spannablestring1 = SpanUtil.a(mmnotification.g, s3, -1);
                notification.setLatestEventInfo(mmnotification.g, spannablestring1, spannablestring, PendingIntent.getActivity(mmnotification.g, 0, intent, 0x8000000));
                notificationmanager = (NotificationManager)mmnotification.g.getSystemService("notification");
                if(notificationmanager != null)
                    notificationmanager.notify(0, notification);
            }
            AvatarLogic.k(s);
        }
          goto _L4
        ioexception;
          goto _L4
        illegalstateexception;
          goto _L4
        securityexception;
          goto _L4
        illegalargumentexception;
          goto _L4
    }

    private void a(boolean flag)
    {
        Log.d("MicroMsg.MMNotification", (new StringBuilder()).append("updateNotifyInfo: silent = ").append(flag).toString());
        e = true;
        if(!flag)
        {
            Log.d("MicroMsg.MMNotification", (new StringBuilder()).append("updateNotifyInfo : modify lastNotSilentTime = ").append(f).toString());
            f = System.currentTimeMillis();
        }
    }

    static String b(MMNotification mmnotification)
    {
        return mmnotification.b;
    }

    static int c(MMNotification mmnotification)
    {
        return mmnotification.c;
    }

    public final void a()
    {
        Log.d("MicroMsg.MMNotification", "cancelNotification");
        NotificationManager notificationmanager = (NotificationManager)g.getSystemService("notification");
        if(notificationmanager != null)
        {
            e = false;
            notificationmanager.cancel(0);
        }
    }

    public final void a(int i)
    {
        Intent intent = new Intent(g, com/tencent/mm/ui/LauncherUI);
        intent.addFlags(0x20000000);
        intent.addFlags(0x4000000);
        intent.addFlags(0x10000000);
        intent.putExtra("nofification_type", "update_nofification");
        intent.putExtra("show_update_dialog", true);
        intent.putExtra("update_type", i);
        PendingIntent pendingintent = PendingIntent.getActivity(g, 0, intent, 0);
        Notification notification = new Notification(0x7f0201f4, null, System.currentTimeMillis());
        notification.flags = 0x10 | notification.flags;
        notification.setLatestEventInfo(g, g.getString(0x7f0a0030), g.getString(0x7f0a0031), pendingintent);
        ((NotificationManager)g.getSystemService("notification")).notify(34, notification);
    }

    public final void a(Context context)
    {
        g = context;
    }

    public final void a(MsgInfo msginfo)
    {
        a = msginfo.h();
        b = msginfo.i();
        c = msginfo.d();
        h.sendEmptyMessageDelayed(0, 200L);
    }

    public final void a(String s)
    {
        Notification notification = new Notification();
        notification.icon = 0x7f0201f4;
        Intent intent = new Intent(g, com/tencent/mm/ui/LauncherUI);
        intent.putExtra("Intro_Notify", true);
        intent.putExtra("Intro_Notify_User", a);
        intent.addFlags(0x20000000);
        intent.addFlags(0x4000000);
        intent.addFlags(0x10000000);
        notification.setLatestEventInfo(g, s, null, PendingIntent.getActivity(g, 0, intent, 0x10000000));
        NotificationManager notificationmanager = (NotificationManager)g.getSystemService("notification");
        if(notificationmanager != null)
            notificationmanager.notify(0, notification);
        else
            Log.b("MicroMsg.MMNotification", "get NotificationManager failed");
    }

    public final void a(List list)
    {
        if(list != null && list.size() > 0)
        {
            int i = -1 + list.size();
            a = ((MsgInfo)list.get(i)).h();
            b = ((MsgInfo)list.get(i)).i();
            c = ((MsgInfo)list.get(i)).d();
            h.sendEmptyMessageDelayed(0, 200L);
        }
    }

    private String a;
    private String b;
    private int c;
    private int d;
    private boolean e;
    private long f;
    private Context g;
    private Handler h;

    private class _cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
            super.handleMessage(message);
            MMNotification.a(a, MMNotification.a(a), MMNotification.b(a), MMNotification.c(a));
        }

        private MMNotification a;

        _cls1()
        {
            a = MMNotification.this;
            super();
        }
    }

}
