// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import android.content.Context;
import android.content.res.AssetManager;
import b.a.e;
import com.tencent.mm.booter.MMNotification;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelbase.LocalAccInfo;
import com.tencent.mm.modelbase.MMUncaughtExceptionHandler;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelbase.RDispatcher;
import com.tencent.mm.modelemoji.EmojiExtension;
import com.tencent.mm.modelemoji.EmojiInfoStorage;
import com.tencent.mm.modelemoji.EmojiService;
import com.tencent.mm.modelimage.ImgService;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.modelpmsg.PushMessageExtension;
import com.tencent.mm.modelqmsg.QMsgExtension;
import com.tencent.mm.modelstat.NetStatMsgExtension;
import com.tencent.mm.modelvideo.VideoMsgExtension;
import com.tencent.mm.modelvoice.VoiceMsgExtension;
import com.tencent.mm.modelvoip.VoipService;
import com.tencent.mm.network.IAccInfo;
import com.tencent.mm.network.IDispatcher;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.plugin.qqmail.model.MailAppService;
import com.tencent.mm.plugin.readerapp.model.ReaderAppGetPicService;
import com.tencent.mm.plugin.readerapp.model.ReaderAppMsgExtension;
import com.tencent.mm.protocal.*;
import com.tencent.mm.storage.*;
import java.io.File;
import java.io.IOException;
import java.util.Random;

// Referenced classes of package com.tencent.mm.model:
//            SysNoticeMsgExtension, SoftwareMsgExtension, CrashUpload, AccountStorage, 
//            ConfigStorageLogic

public final class MMCore
{

    private MMCore()
    {
        k = null;
        l = null;
        m = null;
        n = null;
        o = null;
        p = null;
        s = false;
        t = new VoiceMsgExtension();
        u = new VideoMsgExtension();
        v = new PushMessageExtension();
        w = new QMsgExtension();
        x = new EmojiExtension();
        y = new SysNoticeMsgExtension();
        z = new SoftwareMsgExtension();
        A = new ReaderAppMsgExtension();
        B = new NetStatMsgExtension();
        C = new _cls2();
        D = new _cls3();
        E = new _cls4();
        boolean flag;
        if(Util.a((Integer)f.a(17)) != 0)
            flag = true;
        else
            flag = false;
        h = flag;
        b = new AccountStorage(j, new _cls1());
    }

    static void A()
    {
        NetSceneSync.a(9998);
        NetSceneSync.a(38);
        NetSceneSync.a(34);
        NetSceneSync.a(43);
        NetSceneSync.a(44);
        NetSceneSync.a(36);
        NetSceneSync.a(47);
        NetSceneSync.a(39);
        NetSceneSync.a(9999);
        NetSceneSync.a(41);
        NetSceneSync.a(0xbd357f);
    }

    private static MMCore B()
    {
        if(a == null)
            a = new MMCore();
        return a;
    }

    static EmojiService a(MMCore mmcore, EmojiService emojiservice)
    {
        mmcore.p = emojiservice;
        return emojiservice;
    }

    static ImgService a(MMCore mmcore, ImgService imgservice)
    {
        mmcore.o = imgservice;
        return imgservice;
    }

    static com.tencent.mm.modelvideo.VideoService.Service a(MMCore mmcore, com.tencent.mm.modelvideo.VideoService.Service service)
    {
        mmcore.l = service;
        return service;
    }

    static com.tencent.mm.modelvoice.SceneVoice.Service a(MMCore mmcore, com.tencent.mm.modelvoice.SceneVoice.Service service)
    {
        mmcore.k = service;
        return service;
    }

    static VoipService a(MMCore mmcore, VoipService voipservice)
    {
        mmcore.n = voipservice;
        return voipservice;
    }

    static MailAppService a(MMCore mmcore, MailAppService mailappservice)
    {
        mmcore.q = mailappservice;
        return mailappservice;
    }

    static ReaderAppGetPicService a(MMCore mmcore, ReaderAppGetPicService readerappgetpicservice)
    {
        mmcore.m = readerappgetpicservice;
        return readerappgetpicservice;
    }

    public static String a()
    {
        String s1 = "/data/data/com.tencent.mm/MicroMsg/";
        File file = new File(s1);
        if(!file.exists())
            file.mkdirs();
        if((new File(ConstantsStorage.a)).exists())
        {
            File file1 = new File(ConstantsStorage.b);
            if(file1.exists() || file1.mkdirs())
                s1 = ConstantsStorage.b;
            File file2 = new File(ConstantsStorage.c);
            if(!file2.exists())
                file2.mkdirs();
            File file3 = new File(ConstantsStorage.d);
            if(!file3.exists())
                file3.mkdirs();
        }
        File file4 = new File(s1);
        if(!file4.exists())
            file4.mkdirs();
        return s1;
    }

    public static void a(Context context)
    {
        B().i = context;
        StringBuilder stringbuilder;
        String s1;
        if(B().e == null)
            B().e = new MMNotification(context);
        else
            B().e.a(context);
        ChannelUtil.a(context);
        ChannelUtil.b(context);
        if((2 & ChannelUtil.b) != 0)
            B().f.a(16, Long.valueOf(Util.c()));
        stringbuilder = (new StringBuilder()).append("android-");
        if(Util.i(ChannelUtil.a))
            s1 = android.os.Build.VERSION.SDK;
        else
            s1 = ChannelUtil.a;
        ConstantsProtocal.a = stringbuilder.append(s1).toString();
    }

    static void a(MMCore mmcore)
    {
        mmcore.b.h().a(mmcore.C);
        mmcore.b.j().b(mmcore.E);
        mmcore.b.j().a(mmcore.D);
        NetSceneSync.a(9998, mmcore.B);
        NetSceneSync.a(38, mmcore.v);
        NetSceneSync.a(34, mmcore.t);
        NetSceneSync.a(43, mmcore.u);
        NetSceneSync.a(44, mmcore.u);
        NetSceneSync.a(36, mmcore.w);
        NetSceneSync.a(47, mmcore.x);
        NetSceneSync.a(39, mmcore.w);
        NetSceneSync.a(9999, mmcore.y);
        NetSceneSync.a(41, mmcore.z);
        NetSceneSync.a(0xbd357f, mmcore.A);
    }

    public static void a(IDispatcher idispatcher)
    {
        Log.b("MicroMsg.MMCore", "setting up remote dispatcher");
        B().d = idispatcher;
        B().c.a(idispatcher);
        AccountStorage accountstorage = f();
        IAccInfo iaccinfo = idispatcher.e();
        if(!accountstorage.b())
        {
            Log.b("MicroMsg.MMCore", "need to clear acc info and maybe stop networking");
            iaccinfo.a();
            idispatcher.c();
        } else
        {
            idispatcher.a(B().B);
            if(accountstorage.a() != iaccinfo.g())
            {
                Log.b("MicroMsg.MMCore", (new StringBuilder()).append("update acc info with acc stg: uin =").append(iaccinfo.g()).toString());
                String s1 = (String)f().f().a(2);
                String s2 = (String)f().f().a(3);
                String s3 = (String)f().f().a(19);
                iaccinfo.a("", f().a());
                iaccinfo.a(s1, s2, s3);
                String s4 = (String)B().f.a(2);
                String s5 = (String)B().f.a(3);
                com.tencent.mm.protocal.MMBuiltInIP.NetworkControl networkcontrol = MMBuiltInIP.a((String)B().f.a(6), (String)B().f.a(7));
                B().d.a(s4, s5, networkcontrol.a(), networkcontrol.b(), networkcontrol.c(), networkcontrol.d());
            }
            B().r = new MMUncaughtExceptionHandler(iaccinfo, "ui_worker");
        }
    }

    public static void a(com.tencent.mm.protocal.MMProfile.Resp resp)
    {
        Log.c("MicroMsg.MMCore", "updateBuiltInIPs");
        String s1 = MMBuiltInIP.b(resp.y());
        String s2 = MMBuiltInIP.b(resp.z());
        B().f.a(2, s1);
        B().f.a(3, s2);
        B().f.a(4, Integer.valueOf(resp.A()));
        B().f.a(6, resp.B());
        B().f.a(7, resp.C());
        com.tencent.mm.protocal.MMBuiltInIP.NetworkControl networkcontrol = MMBuiltInIP.a(resp.B(), resp.C());
        if(B().d != null)
            B().d.a(s1, s2, networkcontrol.a(), networkcontrol.b(), networkcontrol.c(), networkcontrol.d());
    }

    public static void a(boolean flag)
    {
        B().s = flag;
        if(B().d != null)
            B().d.a(flag);
    }

    static AccountStorage b(MMCore mmcore)
    {
        return mmcore.b;
    }

    public static void b()
    {
        B().d = null;
        B().c.a(null);
        B().c.b();
    }

    public static Context c()
    {
        return B().i;
    }

    static void c(MMCore mmcore)
    {
        Contact contact = mmcore.b.h().c("qqsync");
        if(contact == null || contact.o() == 0)
        {
            contact.a("qqsync");
            contact.f();
            if(mmcore.i != null)
            {
                contact.b(mmcore.i.getString(0x7f0a004d));
                contact.d(mmcore.i.getString(0x7f0a004e));
                contact.e(mmcore.i.getString(0x7f0a004f));
                contact.i(3);
            }
            contact.a(-2L);
            mmcore.b.h().c(contact);
            mmcore.b.f().a(0x10100, Boolean.valueOf(true));
            mmcore.b.f().a(0x10102, Long.valueOf(Util.c() - 0x112380L));
        }
        if(!AvatarLogic.m("qqsync") || mmcore.i == null)
            break MISSING_BLOCK_LABEL_199;
        android.graphics.Bitmap bitmap = b.a.e.a(mmcore.i.getAssets().open("avatar/default_qqsync.jpg"));
        mmcore.b.y().a("qqsync", bitmap);
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    static void d(MMCore mmcore)
    {
        Contact contact = mmcore.b.h().c("floatbottle");
        if(contact == null || contact.o() == 0)
        {
            contact.a("floatbottle");
            contact.f();
            if(mmcore.i != null)
            {
                contact.b(mmcore.i.getString(0x7f0a0050));
                contact.d(mmcore.i.getString(0x7f0a0051));
                contact.e(mmcore.i.getString(0x7f0a0052));
                contact.i(3);
            }
            contact.a(-2L);
            mmcore.b.h().c(contact);
        }
    }

    public static boolean d()
    {
        return B().s;
    }

    public static ConfigStorage e()
    {
        return B().f;
    }

    static void e(MMCore mmcore)
    {
        Contact contact = mmcore.b.h().c("shakeapp");
        if(contact == null || contact.o() == 0)
        {
            contact.a("shakeapp");
            contact.f();
            if(mmcore.i != null)
            {
                contact.b(mmcore.i.getString(0x7f0a0056));
                contact.d(mmcore.i.getString(0x7f0a0057));
                contact.e(mmcore.i.getString(0x7f0a0058));
                contact.i(3);
            }
            contact.a(-2L);
            mmcore.b.h().c(contact);
        }
        if(!AvatarLogic.m("shakeapp") || mmcore.i == null)
            break MISSING_BLOCK_LABEL_159;
        android.graphics.Bitmap bitmap = b.a.e.a(mmcore.i.getAssets().open("avatar/default_shake.jpg"));
        mmcore.b.y().a("shakeapp", bitmap);
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static AccountStorage f()
    {
        AccountStorage accountstorage = B().b;
        AccountStorage accountstorage1;
        if(accountstorage != null && accountstorage.b())
        {
            accountstorage1 = accountstorage;
        } else
        {
            Integer integer = (Integer)B().f.a(1);
            if(integer != null && integer.intValue() != 0)
            {
                Log.b("MicroMsg.MMCore", "auto set up account storage");
                accountstorage.a(integer.intValue());
                if(Util.h((String)accountstorage.f().a(2)).length() <= 0)
                {
                    Log.a("MicroMsg.MMCore", (new StringBuilder()).append("username of acc stg not set: uin=").append(integer).toString());
                    accountstorage.Y();
                }
            }
            accountstorage1 = accountstorage;
        }
        return accountstorage1;
    }

    static void f(MMCore mmcore)
    {
        Contact contact = mmcore.b.h().c("lbsapp");
        if(contact == null || contact.o() == 0)
        {
            contact.a("lbsapp");
            contact.f();
            if(mmcore.i != null)
            {
                contact.b(mmcore.i.getString(0x7f0a0053));
                contact.d(mmcore.i.getString(0x7f0a0054));
                contact.e(mmcore.i.getString(0x7f0a0055));
                contact.i(3);
            }
            contact.a(-2L);
            mmcore.b.h().c(contact);
        }
        if(!AvatarLogic.m("lbsapp") || mmcore.i == null)
            break MISSING_BLOCK_LABEL_159;
        android.graphics.Bitmap bitmap = b.a.e.a(mmcore.i.getAssets().open("avatar/default_nearby.jpg"));
        mmcore.b.y().a("lbsapp", bitmap);
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static NetSceneQueue g()
    {
        return B().c;
    }

    static void g(MMCore mmcore)
    {
        Contact contact = mmcore.b.h().c("medianote");
        if(contact == null)
            contact = new Contact();
        if(contact.o() == 0)
        {
            contact.a("medianote");
            contact.f();
            if(mmcore.i != null)
            {
                contact.b(mmcore.i.getString(0x7f0a0059));
                contact.d(mmcore.i.getString(0x7f0a005a));
                contact.e(mmcore.i.getString(0x7f0a005b));
                contact.i(3);
            }
            contact.a(-2L);
            mmcore.b.h().c(contact);
        }
        if(!AvatarLogic.m("medianote") || mmcore.i == null)
            break MISSING_BLOCK_LABEL_165;
        android.graphics.Bitmap bitmap = b.a.e.a(mmcore.i.getAssets().open("avatar/default_medianote.jpg"));
        mmcore.b.y().a("medianote", bitmap);
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static ReaderAppGetPicService h()
    {
        return B().m;
    }

    static void h(MMCore mmcore)
    {
        Contact contact = mmcore.b.h().c("readerapp");
        if(contact == null)
            contact = new Contact();
        if(contact.o() == 0)
        {
            contact.a("readerapp");
            contact.f();
            if(mmcore.i != null)
            {
                contact.b(mmcore.i.getString(0x7f0a006c));
                contact.d(mmcore.i.getString(0x7f0a006d));
                contact.e(mmcore.i.getString(0x7f0a006e));
                contact.i(4);
            }
            contact.a(-2L);
            mmcore.b.h().c(contact);
        }
        if(AvatarLogic.l("readerapp") || mmcore.i == null)
            break MISSING_BLOCK_LABEL_165;
        android.graphics.Bitmap bitmap = b.a.e.a(mmcore.i.getAssets().open("avatar/default_readerapp.jpg"));
        mmcore.b.y().a("readerapp", bitmap);
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static com.tencent.mm.modelvoice.SceneVoice.Service i()
    {
        return B().k;
    }

    static void i(MMCore mmcore)
    {
        Contact contact = mmcore.b.h().c("blogapp");
        if(contact == null)
            contact = new Contact();
        if(contact.o() == 0)
        {
            contact.a("blogapp");
            contact.f();
            if(mmcore.i != null)
            {
                contact.b(mmcore.i.getString(0x7f0a006f));
                contact.d(mmcore.i.getString(0x7f0a0070));
                contact.e(mmcore.i.getString(0x7f0a0071));
                contact.i(4);
            }
            contact.a(-2L);
            mmcore.b.h().c(contact);
        }
        if(AvatarLogic.l("blogapp") || mmcore.i == null)
            break MISSING_BLOCK_LABEL_165;
        android.graphics.Bitmap bitmap = b.a.e.a(mmcore.i.getAssets().open("avatar/default_readerapp_weibo.jpg"));
        mmcore.b.y().a("blogapp", bitmap);
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static com.tencent.mm.modelvideo.VideoService.Service j()
    {
        return B().l;
    }

    static void j(MMCore mmcore)
    {
        Contact contact = mmcore.b.h().c("facebookapp");
        if(contact == null)
            contact = new Contact();
        if(contact.o() == 0)
        {
            contact.a("facebookapp");
            contact.f();
            if(mmcore.i != null)
            {
                contact.b(mmcore.i.getString(0x7f0a005c));
                contact.d(mmcore.i.getString(0x7f0a005d));
                contact.e(mmcore.i.getString(0x7f0a005e));
                contact.i(4);
            }
            contact.a(-2L);
            mmcore.b.h().c(contact);
        }
        if(AvatarLogic.l("facebookapp") || mmcore.i == null)
            break MISSING_BLOCK_LABEL_165;
        android.graphics.Bitmap bitmap = b.a.e.a(mmcore.i.getAssets().open("avatar/default_facebook.jpg"));
        mmcore.b.y().a("facebookapp", bitmap);
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static VoipService k()
    {
        return B().n;
    }

    static void k(MMCore mmcore)
    {
        Contact contact = mmcore.b.h().c("qqfriend");
        if(contact == null)
            contact = new Contact();
        if(contact.o() == 0)
        {
            contact.a("qqfriend");
            contact.f();
            if(mmcore.i != null)
            {
                contact.b(mmcore.i.getString(0x7f0a0062));
                contact.d(mmcore.i.getString(0x7f0a0063));
                contact.e(mmcore.i.getString(0x7f0a0064));
                contact.i(3);
            }
            contact.a(-2L);
            mmcore.b.h().c(contact);
        }
        if(!AvatarLogic.m("qqfriend") || mmcore.i == null)
            break MISSING_BLOCK_LABEL_165;
        android.graphics.Bitmap bitmap = b.a.e.a(mmcore.i.getAssets().open("avatar/default_qqfriend.jpg"));
        mmcore.b.y().a("qqfriend", bitmap);
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static ImgService l()
    {
        return B().o;
    }

    static void l(MMCore mmcore)
    {
        Contact contact = mmcore.b.h().c("masssendapp");
        if(contact == null)
            contact = new Contact();
        if(contact.o() == 0)
        {
            contact.a("masssendapp");
            contact.f();
            if(mmcore.i != null)
            {
                contact.b(mmcore.i.getString(0x7f0a0065));
                contact.d(mmcore.i.getString(0x7f0a0066));
                contact.e(mmcore.i.getString(0x7f0a0067));
                contact.i(4);
            }
            contact.a(-2L);
            mmcore.b.h().c(contact);
        }
        if(AvatarLogic.l("masssendapp") || mmcore.i == null)
            break MISSING_BLOCK_LABEL_165;
        android.graphics.Bitmap bitmap = b.a.e.a(mmcore.i.getAssets().open("avatar/default_masssend.jpg"));
        mmcore.b.y().a("masssendapp", bitmap);
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static EmojiService m()
    {
        return B().p;
    }

    static void m(MMCore mmcore)
    {
        if(mmcore.i != null)
            mmcore.b.l().a(mmcore.i);
    }

    public static MailAppService n()
    {
        return B().q;
    }

    static void n(MMCore mmcore)
    {
        String s1 = ConfigStorageLogic.b();
        if(!Util.i(s1))
        {
            Contact contact = mmcore.b.h().c(s1);
            if(contact.o() == 0)
            {
                contact.a(ConfigStorageLogic.b());
                contact.f();
                f().h().c(contact);
            }
            if(!contact.l())
            {
                contact.f();
                f().h().a(ConfigStorageLogic.b(), contact);
            }
        }
    }

    public static LocalAccInfo o()
    {
        return ((RDispatcher)B().d).d();
    }

    static com.tencent.mm.modelvoice.SceneVoice.Service o(MMCore mmcore)
    {
        return mmcore.k;
    }

    public static MMNotification p()
    {
        if(B().e == null)
            B().e = new MMNotification(B().i);
        return B().e;
    }

    static com.tencent.mm.modelvideo.VideoService.Service p(MMCore mmcore)
    {
        return mmcore.l;
    }

    public static IDispatcher q()
    {
        return B().d;
    }

    static ReaderAppGetPicService q(MMCore mmcore)
    {
        return mmcore.m;
    }

    static VoipService r(MMCore mmcore)
    {
        return mmcore.n;
    }

    public static void r()
    {
        if(B().c != null)
            B().c.b();
        if(B().d != null)
            B().d.c();
    }

    public static CrashUpload s()
    {
        return B().g;
    }

    static ImgService s(MMCore mmcore)
    {
        return mmcore.o;
    }

    static EmojiService t(MMCore mmcore)
    {
        return mmcore.p;
    }

    public static boolean t()
    {
        boolean flag;
        if(f().b() && f().a() == Util.a((Integer)B().f.a(1)))
            flag = true;
        else
            flag = false;
        return flag;
    }

    static MailAppService u(MMCore mmcore)
    {
        return mmcore.q;
    }

    public static String u()
    {
        int i1;
        String s1;
        i1 = 0;
        s1 = (String)B().f.a(256);
        if(s1 == null) goto _L2; else goto _L1
_L1:
        return s1;
_L2:
        String s2 = Util.a(B().i);
        if(s2 == null || s2.length() <= 0)
            break; /* Loop/switch isn't completed */
        s1 = (new StringBuilder()).append("A").append(s2).append("123456789ABCDEF").toString().substring(i1, 15);
_L4:
        Log.b("MicroMsg.MMCore", (new StringBuilder()).append("generated deviceId=").append(s1).toString());
        B().f.a(256, s1);
        if(true) goto _L1; else goto _L3
_L3:
        Random random = new Random();
        random.setSeed(System.currentTimeMillis());
        s1 = "A";
        while(i1 < 15) 
        {
            String s3 = (new StringBuilder()).append(s1).append((char)(65 + random.nextInt(25))).toString();
            i1++;
            s1 = s3;
        }
          goto _L4
        if(true) goto _L1; else goto _L5
_L5:
    }

    public static String v()
    {
        String s1 = (String)B().f.a(258);
        if(s1 == null)
        {
            s1 = Util.a(B().i);
            B().f.a(258, s1);
        }
        return s1;
    }

    public static boolean w()
    {
        if(h)
            Log.b("MicroMsg.MMCore", "account holded");
        return h;
    }

    public static void x()
    {
        h = true;
        B().f.a(17, Integer.valueOf(1));
    }

    public static void y()
    {
        h = false;
        B().f.a(17, Integer.valueOf(0));
    }

    public static void z()
    {
        B().f.a(1, Integer.valueOf(0));
    }

    private static MMCore a = null;
    private static boolean h = true;
    private ReaderAppMsgExtension A;
    private NetStatMsgExtension B;
    private com.tencent.mm.storage.ContactStorage.IContactExtension C;
    private com.tencent.mm.storage.ConversationStorage.IConversationExtension D;
    private com.tencent.mm.storage.ConversationStorage.IConversationExtension E;
    private final AccountStorage b;
    private final NetSceneQueue c = NetSceneQueue.a();
    private IDispatcher d;
    private MMNotification e;
    private final ConfigStorage f = new ConfigStorage("/data/data/com.tencent.mm/MicroMsg/systemInfo.cfg");
    private final CrashUpload g = new CrashUpload();
    private Context i;
    private final String j = a();
    private com.tencent.mm.modelvoice.SceneVoice.Service k;
    private com.tencent.mm.modelvideo.VideoService.Service l;
    private ReaderAppGetPicService m;
    private VoipService n;
    private ImgService o;
    private EmojiService p;
    private MailAppService q;
    private MMUncaughtExceptionHandler r;
    private boolean s;
    private VoiceMsgExtension t;
    private VideoMsgExtension u;
    private PushMessageExtension v;
    private QMsgExtension w;
    private EmojiExtension x;
    private SysNoticeMsgExtension y;
    private SoftwareMsgExtension z;

    static 
    {
        System.loadLibrary("MMProtocalJni");
        System.loadLibrary("Sync");
        MMProtocalJni.setClientPackVersion(ConstantsProtocal.b);
    }

    private class _cls2
        implements com.tencent.mm.storage.ContactStorage.IContactExtension
    {

        public final void a(Contact contact)
        {
            String s1;
            s1 = contact.s();
            if(ContactStorageLogic.t(contact.s()))
                contact.a(ContactStorageLogic.u(contact.s()));
            if(!ContactStorageLogic.a(contact)) goto _L2; else goto _L1
_L1:
            contact.e(43);
            contact.a(8L | contact.c());
_L4:
            return;
_L2:
            if(s1.equals("readerapp") || s1.equals("blogapp") || s1.equals("facebookapp"))
            {
                contact.f();
                contact.i(4);
            }
            String as[] = ContactStorageLogic.d;
            int i1 = as.length;
            int j1 = 0;
            do
            {
                if(j1 < i1)
                {
label0:
                    {
                        if(!as[j1].equalsIgnoreCase(s1))
                            break label0;
                        contact.e(33);
                        contact.a(8L | contact.c());
                    }
                }
                if(true)
                    continue;
                j1++;
            } while(true);
            if(true) goto _L4; else goto _L3
_L3:
        }

        private MMCore a;

        _cls2()
        {
            a = MMCore.this;
            super();
        }
    }


    private class _cls3
        implements com.tencent.mm.storage.ConversationStorage.IConversationExtension
    {

        public final void a(Conversation conversation, ConversationStorage conversationstorage)
        {
            boolean flag;
            boolean flag1;
            flag = false;
            flag1 = true;
            break MISSING_BLOCK_LABEL_5;
            if(conversation != null && (ContactStorageLogic.p(conversation.g()) || ContactStorageLogic.r(conversation.g()) || ContactStorageLogic.t(conversation.g())))
                if(ContactStorageLogic.t(conversation.g()))
                {
                    Conversation conversation6 = conversationstorage.d("floatbottle");
                    Conversation conversation1;
                    MsgInfo msginfo;
                    Conversation conversation2;
                    Conversation conversation3;
                    MsgInfoStorage msginfostorage;
                    Long long1;
                    long l1;
                    Conversation conversation4;
                    Conversation conversation5;
                    MsgInfoStorage msginfostorage1;
                    Long long2;
                    long l2;
                    MsgInfo msginfo1;
                    if(conversation6 == null)
                        conversation6 = new Conversation("floatbottle");
                    else
                        flag1 = flag;
                    conversation6.a(MMCore.f().j().e());
                    msginfo1 = MMCore.f().i().a(8);
                    if(msginfo1 != null && msginfo1.b() > 0L)
                    {
                        conversation6.a(msginfo1);
                        conversation6.b((new StringBuilder()).append(ContactStorageLogic.u(msginfo1.h())).append(":").append(msginfo1.i()).toString());
                        conversation6.c(Integer.toString(msginfo1.d()));
                    } else
                    {
                        conversation6.j();
                    }
                    if(flag1)
                        conversationstorage.a(conversation6);
                    else
                        conversationstorage.a(conversation6, conversation6.g());
                } else
                {
                    conversation1 = null;
                    msginfo = null;
                    if(ContactStorageLogic.p(conversation.g()))
                    {
                        conversation4 = conversationstorage.d("tmessage");
                        if(conversation4 == null)
                        {
                            conversation5 = new Conversation("tmessage");
                            flag = flag1;
                            conversation1 = conversation5;
                        } else
                        {
                            conversation1 = conversation4;
                        }
                        msginfostorage1 = MMCore.f().i();
                        long2 = (Long)MMCore.f().f().a(12294);
                        if(long2 == null)
                            l2 = 0L;
                        else
                            l2 = long2.longValue();
                        conversation1.a(msginfostorage1.a(4, l2));
                        msginfo = MMCore.f().i().a(4);
                    }
                    if(ContactStorageLogic.r(conversation.g()))
                    {
                        conversation3 = conversationstorage.d("qmessage");
                        if(conversation3 == null)
                        {
                            conversation2 = new Conversation("qmessage");
                        } else
                        {
                            flag1 = flag;
                            conversation2 = conversation3;
                        }
                        msginfostorage = MMCore.f().i();
                        long1 = (Long)MMCore.f().f().a(12295);
                        if(long1 == null)
                            l1 = 0L;
                        else
                            l1 = long1.longValue();
                        conversation2.a(msginfostorage.a(2, l1));
                        msginfo = MMCore.f().i().a(2);
                    } else
                    {
                        flag1 = flag;
                        conversation2 = conversation1;
                    }
                    if(msginfo != null && msginfo.b() > 0L)
                    {
                        conversation2.a(msginfo);
                        conversation2.b((new StringBuilder()).append(msginfo.h()).append(":").append(msginfo.i()).toString());
                        conversation2.c(Integer.toString(msginfo.d()));
                    } else
                    {
                        conversation2.j();
                    }
                    if(flag1)
                        conversationstorage.a(conversation2);
                    else
                        conversationstorage.a(conversation2, conversation2.g());
                }
            return;
        }

        private MMCore a;

        _cls3()
        {
            a = MMCore.this;
            super();
        }
    }


    private class _cls4
        implements com.tencent.mm.storage.ConversationStorage.IConversationExtension
    {

        public final void a(Conversation conversation, ConversationStorage conversationstorage)
        {
            if(conversation != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            if("_USER_FOR_THROWBOTTLE_".equals(conversation.g()))
                conversation.a("");
            else
            if(1 != conversation.d() && ContactStorageLogic.t(conversation.g()) && !conversationstorage.g(conversation.g()))
                BottleLogic.b(conversation.g());
            if(true) goto _L1; else goto _L3
_L3:
        }

        private MMCore a;

        _cls4()
        {
            a = MMCore.this;
            super();
        }
    }


    private class _cls1
        implements AccountStorage.IEvent
    {

        public final void a()
        {
            MMCore.A();
        }

        public final void b()
        {
            MMCore.a(a);
            MMCore.b(a).i().q("qqmail");
            Cursor cursor = MMCore.f().i().j("@t.qq.com");
            if(cursor != null)
            {
                if(cursor.moveToFirst())
                    for(; !cursor.isAfterLast(); cursor.moveToNext())
                    {
                        MsgInfo msginfo = new MsgInfo();
                        msginfo.a(cursor);
                        if(!MMCore.f().i().b(msginfo.h(), msginfo.c()))
                            MMCore.f().i().a(msginfo);
                    }

                cursor.close();
            }
            int i1 = MMCore.f().e().b();
            MMCore.c(a);
            MMCore.d(a);
            com.tencent.mm.model.MMCore.e(a);
            MMCore.f(a);
            MMCore.g(a);
            MMCore.h(a);
            MMCore.i(a);
            MMCore.j(a);
            MMCore.k(a);
            MMCore.l(a);
            MMCore.m(a);
            MMCore.n(a);
            MMCore.f().e().b(i1);
            MMCore.f().e().a(i1);
        }

        public final void c()
        {
            if(MMCore.o(a) == null)
                MMCore.a(a, new com.tencent.mm.modelvoice.SceneVoice.Service());
            else
                MMCore.o(a).b();
            if(MMCore.p(a) == null)
                MMCore.a(a, new com.tencent.mm.modelvideo.VideoService.Service());
            else
                MMCore.p(a).b();
            if(MMCore.q(a) == null)
                MMCore.a(a, new ReaderAppGetPicService());
            else
                MMCore.q(a).a();
            if(MMCore.r(a) == null)
                MMCore.a(a, new VoipService());
            if(MMCore.s(a) == null)
                MMCore.a(a, new ImgService());
            else
                MMCore.s(a).b();
            if(MMCore.t(a) == null)
                MMCore.a(a, new EmojiService());
            else
                MMCore.t(a).b();
            if(MMCore.u(a) == null)
                MMCore.a(a, new MailAppService(ConstantsProtocal.b, ConstantsProtocal.a));
            else
                MMCore.u(a).a();
        }

        private MMCore a;

        _cls1()
        {
            a = MMCore.this;
            super();
        }
    }

}
