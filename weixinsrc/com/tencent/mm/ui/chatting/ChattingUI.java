// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.app.ProgressDialog;
import android.content.*;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.media.*;
import android.net.Uri;
import android.os.*;
import android.text.ClipboardManager;
import android.view.*;
import android.widget.*;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.algorithm.TypeTransform;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelemoji.*;
import com.tencent.mm.modelfriend.AddrUpload;
import com.tencent.mm.modelfriend.AddrUploadStorage;
import com.tencent.mm.modelgetcontact.NetSceneGetContact;
import com.tencent.mm.modelimage.ImgInfo;
import com.tencent.mm.modelimage.ImgInfoStorage;
import com.tencent.mm.modelmulti.NetSceneSendMsg;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.modelpackage.*;
import com.tencent.mm.modelsimple.NetSceneDirectSend;
import com.tencent.mm.modelvideo.*;
import com.tencent.mm.modelvoice.*;
import com.tencent.mm.network.NetService;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.plugin.qqmail.ui.ComposeUI;
import com.tencent.mm.plugin.qqmail.ui.ReadMailUI;
import com.tencent.mm.protocal.ConstantsProtocal;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.contact.ContactInfoUI;
import com.tencent.mm.ui.location.WebViewMap;
import com.tencent.mm.ui.tools.CropImageUI;
import com.tencent.mm.ui.tools.WebViewUI;
import com.tencent.mm.ui.video.*;
import java.io.*;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.chatting:
//            SendMessageFaster, ChattingListAdapter, ImageDownloadUI, SyncKeyParser, 
//            ChattingAnimFrame, AutoPlay, CustomSmileyPreviewUI, ProcessErrNeedQQPwd, 
//            ChatFooter, EmojiView

public class ChattingUI extends MMActivity
    implements IOnNewMsgNotify, IOnSendMsgFailNotify, IOnSceneEnd, IOnSceneProgressEnd, com.tencent.mm.platformtools.SensorController.SensorEventCallBack, com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public ChattingUI()
    {
        i = null;
        n = false;
        o = new _cls1();
        p = null;
        r = false;
        t = -1L;
        z = null;
        B = false;
    }

    static String A(ChattingUI chattingui)
    {
        return chattingui.h;
    }

    private void A()
    {
        if(C != null)
            C.dismiss();
    }

    private boolean B()
    {
        boolean flag = false;
        if(s != null)
        {
            boolean flag1;
            boolean flag2;
            if(s.g() && C())
                flag1 = true;
            else
                flag1 = flag;
            flag2 = s.c();
            E.a();
            G.a();
            t = -1L;
            if(flag1)
            {
                MsgInfo msginfo = new MsgInfo();
                msginfo.a("medianote");
                msginfo.c(34);
                msginfo.e(1);
                msginfo.c(O);
                msginfo.d(2);
                msginfo.b(com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent.a(ConfigStorageLogic.b(), s.f(), flag));
                msginfo.b(MsgInfoStorageLogic.c("medianote"));
                long l1 = MMCore.f().i().a(msginfo);
                if(l1 <= 0L)
                    Log.a("MicroMsg.ChattingUI", "insertLocalMsg fail");
                else
                    Log.c("MicroMsg.ChattingUI", (new StringBuilder()).append("insertLocalMsg success, msgId = ").append(l1).toString());
            }
            MMEntryLock.b("keep_app_silent");
            flag = flag2;
        }
        return flag;
    }

    private boolean C()
    {
        boolean flag;
        if(f.s().equals("medianote") && (0x4000 & ConfigStorageLogic.d()) == 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    private String D()
    {
        String s1;
        if(g == null)
            s1 = ConfigStorageLogic.b();
        else
            s1 = g.a();
        return s1;
    }

    private void E()
    {
        if(h == null || h.equals("") || !FileOperation.c(h))
            Log.d("MicroMsg.ChattingUI", " doSendImage : filePath is null or empty");
        else
        if(g != null && !g.b())
        {
            String s1;
            if(g.e().a("").equalsIgnoreCase("@t.qq.com"))
            {
                s1 = getString(0x7f0a0095);
            } else
            {
                Object aobj[] = new Object[1];
                aobj[0] = Contact.g(g.a());
                s1 = getString(0x7f0a0094, aobj);
            }
            MMAlert.a(this, s1, getString(0x7f0a0010));
        } else
        {
            o.post(new _cls44());
            c(true);
        }
    }

    private void F()
    {
        if(P != null)
            P.recycle();
    }

    private void G()
    {
        ChattingBgInfo chattingbginfo;
        int i1;
        chattingbginfo = MMCore.f().V().a(f.s());
        if(chattingbginfo == null)
            i1 = Util.a((Integer)MMCore.f().f().a(12311), -2);
        else
            i1 = chattingbginfo.d();
        if(i1 != -2) goto _L2; else goto _L1
_L1:
        h(getResources().getColor(0x7f080013));
        c.a(this, "chatting/purecolor_chat.xml");
_L11:
        return;
_L2:
        int j1;
        MMCore.f().T();
        j1 = PackageInfoStorage.a(this);
        if(i1 != 0) goto _L4; else goto _L3
_L3:
        j1;
        JVM INSTR tableswitch 1 4: default 132
    //                   1 223
    //                   2 223
    //                   3 223
    //                   4 223;
           goto _L5 _L6 _L6 _L6 _L6
_L5:
        int k1 = -1;
_L8:
        if(k1 != -1)
        {
            F();
            P = BitmapFactory.decodeResource(getResources(), 0x7f0200c8);
            if(P == null)
            {
                Log.a("MicroMsg.ChattingUI", (new StringBuilder()).append("setBackground decodeFile fail, bm is null, resId = ").append(0x7f0200c8).toString());
                findViewById(0x7f070091).setBackgroundColor(-1);
            } else
            {
                BitmapDrawable bitmapdrawable1 = new BitmapDrawable(P);
                findViewById(0x7f070091).setBackgroundDrawable(bitmapdrawable1);
            }
            c.a(this, "chatting/reserved_chat.xml");
        }
          goto _L7
_L6:
        k1 = 0x7f0200c8;
          goto _L8
_L4:
        PackageInfoStorage packageinfostorage = MMCore.f().T();
        if(i1 <= 0) goto _L10; else goto _L9
_L9:
        String s1;
        String s2 = (new StringBuilder()).append(packageinfostorage.d(i1, 1)).append("chat.xml").toString();
        c.b(s2);
        s1 = packageinfostorage.e(i1, j1);
_L12:
        F();
        P = BitmapFactory.decodeFile(s1);
        if(P == null)
        {
            Log.a("MicroMsg.ChattingUI", (new StringBuilder()).append("setBackground decodeFile fail, bm is null, path = ").append(s1).toString());
            h(getResources().getColor(0x7f080013));
        } else
        {
            BitmapDrawable bitmapdrawable = new BitmapDrawable(P);
            findViewById(0x7f070091).setBackgroundDrawable(bitmapdrawable);
        }
_L7:
        if(true) goto _L11; else goto _L10
_L10:
        c.a(this, "chatting/default_chat.xml");
        if(chattingbginfo == null)
            s1 = packageinfostorage.a("default", j1);
        else
            s1 = packageinfostorage.a(o(), j1);
          goto _L12
    }

    static long a(ChattingUI chattingui, long l1)
    {
        chattingui.t = l1;
        return l1;
    }

    static Toast a(ChattingUI chattingui, Toast toast)
    {
        chattingui.u = toast;
        return toast;
    }

    static Contact a(ChattingUI chattingui, Contact contact)
    {
        chattingui.f = contact;
        return contact;
    }

    private void a(long l1, int i1)
    {
        Intent intent = new Intent(this, com/tencent/mm/ui/chatting/ImageDownloadUI);
        intent.putExtra("img_msg_id", l1);
        intent.putExtra("img_server_id", i1);
        startActivity(intent);
    }

    private void a(Intent intent)
    {
        ImportVideo importvideo = new ImportVideo();
        importvideo.a(this, intent, new _cls37());
        p = MMAlert.a(this, getString(0x7f0a0010), getString(0x7f0a0026), true, new _cls38(importvideo));
    }

    static void a(EmojiInfo emojiinfo)
    {
        emojiinfo.f(0);
        emojiinfo.g(EmojiInfo.l);
        MMCore.f().l().a(emojiinfo);
        MsgInfo msginfo = new MsgInfo();
        msginfo.c(47);
        msginfo.a("medianote");
        msginfo.e(1);
        if(emojiinfo.d())
            msginfo.b(com.tencent.mm.model.MsgInfoStorageLogic.EmojiContent.a(ConfigStorageLogic.b(), 0L, false));
        msginfo.c(emojiinfo.f());
        msginfo.b(MsgInfoStorageLogic.c(msginfo.h()));
        msginfo.d(2);
        MMCore.f().i().a(msginfo);
    }

    private void a(Contact contact, com.tencent.mm.storage.MsgInfo.FriendContent friendcontent)
    {
        if(contact != null && friendcontent != null && contact.s() != null && contact.s().length() > 0)
        {
            Intent intent = new Intent(this, com/tencent/mm/ui/contact/ContactInfoUI);
            intent.putExtra("Contact_User", contact.s());
            intent.putExtra("Contact_Nick", contact.t());
            intent.putExtra("Contact_QuanPin", contact.x());
            intent.putExtra("Contact_PyInitial", contact.w());
            intent.putExtra("Contact_Uin", friendcontent.i());
            intent.putExtra("Contact_Mobile_MD5", friendcontent.h());
            intent.putExtra("Contact_full_Mobile_MD5", friendcontent.k());
            intent.putExtra("Contact_QQNick", friendcontent.j());
            intent.putExtra("User_From_Fmessage", true);
            intent.putExtra("Contact_Scene", friendcontent.g());
            intent.putExtra("Contact_from_msgType", 40);
            startActivity(intent);
        }
    }

    private void a(com.tencent.mm.storage.MsgInfo.FriendContent friendcontent)
    {
        Contact contact = new Contact();
        contact.a(friendcontent.a());
        contact.b(friendcontent.c());
        contact.d(friendcontent.e());
        contact.e(friendcontent.d());
        a(contact, friendcontent);
    }

    static void a(ChattingUI chattingui, int i1)
    {
        LinkedList linkedlist = new LinkedList();
        linkedlist.add(chattingui.o());
        NetSceneDirectSend netscenedirectsend = new NetSceneDirectSend(linkedlist, TypeTransform.b(i1));
        MMCore.g().b(netscenedirectsend);
    }

    static void a(ChattingUI chattingui, Intent intent)
    {
        chattingui.a(intent);
    }

    static boolean a(ChattingUI chattingui)
    {
        return chattingui.n;
    }

    static boolean a(ChattingUI chattingui, String s1)
    {
        return chattingui.a(s1, 0);
    }

    private boolean a(String s1, int i1)
    {
        boolean flag = true;
        if(s1 != null && s1.length() != 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.ChattingUI", "doSendMessage null");
        flag = false;
_L9:
        return flag;
_L2:
        if(!ContactStorageLogic.b(o()))
            a(s1, flag);
        if(!s1.startsWith("//assert")) goto _L4; else goto _L3
_L3:
        Assert.assertTrue("test errlog", false);
_L7:
        boolean flag1 = false;
_L5:
        if(flag1)
            continue; /* Loop/switch isn't completed */
        if(g != null)
        {
            String s2 = null;
            String s3 = g.e().a("");
            String s4;
            LinkedList linkedlist;
            String s5;
            Contact contact;
            Intent intent;
            if(s3.equalsIgnoreCase("@t.qq.com") && !g.b())
                s2 = getString(0x7f0a0095);
            else
            if(s3.equalsIgnoreCase("@qqim") && (0x40 & ConfigStorageLogic.d()) == 0)
                s2 = getString(0x7f0a0096);
            else
            if(!g.b())
            {
                Object aobj[] = new Object[flag];
                aobj[0] = Contact.g(g.a());
                s2 = getString(0x7f0a0094, aobj);
            }
            if(s2 != null)
            {
                MMAlert.a(this, s2, getString(0x7f0a0010));
                flag = false;
                continue; /* Loop/switch isn't completed */
            }
        }
        break MISSING_BLOCK_LABEL_577;
_L4:
        if(s1.startsWith("//whatsnew"))
        {
            MMEntryLock.b("show_whatsnew");
            MMAppMgr.a(this);
            flag1 = flag;
        } else
        if(s1.startsWith("//profile "))
        {
            contact = MMCore.f().h().c(s1.replace("//profile ", "").trim());
            if(contact != null && contact.o() != 0)
            {
                intent = (new Intent()).setClass(this, com/tencent/mm/ui/contact/ContactInfoUI);
                intent.putExtra("Contact_User", contact.s());
                startActivity(intent);
            }
            flag1 = flag;
        } else
        if(s1.startsWith("//version"))
        {
            MMAlert.a(this, (new StringBuilder()).append(Util.b(this, ConstantsProtocal.b)).append("[").append(Integer.toHexString(ConstantsProtocal.b)).append("]").toString(), "Build Version");
            flag1 = flag;
        } else
        if(s1.startsWith("//dumpdb"))
        {
            MMCore.f().aa();
            flag1 = flag;
        } else
        if(s1.startsWith("//set_synckey "))
        {
            s5 = SyncKeyParser.a(s1.replace("//set_synckey", "").trim());
            MMCore.f().f().a(8195, s5);
            flag1 = flag;
        } else
        {
            if(!s1.startsWith("//getcontact "))
                continue; /* Loop/switch isn't completed */
            s4 = s1.replace("//getcontact ", "").trim();
            linkedlist = new LinkedList();
            linkedlist.add(s4);
            MMCore.g().b(new NetSceneGetContact(linkedlist));
            flag1 = flag;
        }
          goto _L5
        if(!s1.startsWith("//set_updatemode ")) goto _L7; else goto _L6
_L6:
        ChannelUtil.b = Integer.valueOf(s1.replace("//set_updatemode ", "").trim()).intValue();
        flag1 = flag;
          goto _L5
        o.post(new _cls43(s1, i1));
        c(flag);
        if(true) goto _L9; else goto _L8
_L8:
    }

    private boolean a(String s1, boolean flag)
    {
        boolean flag1 = false;
        if(Q == null)
            Q = getResources().getStringArray(0x7f060017);
        int i1;
        for(i1 = ((flag1) ? 1 : 0); i1 < Q.length && !s1.contains(Q[i1]); i1++);
        if(i1 <= 3)
        {
            ((ChattingAnimFrame)findViewById(0x7f070094)).d(this);
            int i2;
            if(flag)
                i2 = 0x10a02;
            else
                i2 = 0x10a03;
            i(i2);
        } else
        if(i1 <= 7)
        {
            ((ChattingAnimFrame)findViewById(0x7f070094)).a(this);
            int l1;
            if(flag)
                l1 = 0x10a04;
            else
                l1 = 0x10a05;
            i(l1);
        } else
        {
            if(i1 > 11)
                continue;
            ((ChattingAnimFrame)findViewById(0x7f070094)).c(this);
            int k1;
            if(flag)
                k1 = 0x10a06;
            else
                k1 = 0x10a07;
            i(k1);
        }
        do
        {
            flag1 = true;
            do
                return flag1;
            while(i1 > 15);
            ((ChattingAnimFrame)findViewById(0x7f070094)).b(this);
            int j1;
            if(flag)
                j1 = 0x10a08;
            else
                j1 = 0x10a09;
            i(j1);
        } while(true);
    }

    static void b(ChattingUI chattingui, int i1)
    {
        int j1;
        MsgInfo msginfo;
        chattingui.j.requestFocus();
        j1 = i1 + -1;
        msginfo = (MsgInfo)chattingui.c.getItem(j1);
        if(msginfo == null) goto _L2; else goto _L1
_L1:
        Log.c("MicroMsg.ChattingUI", (new StringBuilder()).append("CreateTime:").append(msginfo.g()).toString());
        if(!msginfo.k()) goto _L4; else goto _L3
_L3:
        if(!MMCore.f().c())
        {
            com.tencent.mm.ui.MMToast.ToastSdcard.a(chattingui, 1);
        } else
        {
            Boolean boolean1 = (Boolean)MMCore.f().f().a(4115);
            if(boolean1 == null || !boolean1.booleanValue())
            {
                MMCore.f().f().a(4115, Boolean.valueOf(true));
                chattingui.A();
                chattingui.C = MMToast.a(chattingui, chattingui.getString(0x7f0a0158), 4000L);
            }
            chattingui.z.a(j1, msginfo);
        }
_L2:
        return;
_L4:
        if(msginfo.m())
        {
            com.tencent.mm.storage.MsgInfo.MailContent mailcontent = MMCore.f().i().l(msginfo.i());
            if(Util.h(mailcontent.f()).length() > 0)
                chattingui.a(com/tencent/mm/plugin/qqmail/ui/ReadMailUI, (new Intent()).putExtra("msgid", msginfo.b()));
            else
            if(Util.h(mailcontent.d()).length() > 0)
                chattingui.a(com/tencent/mm/ui/tools/WebViewUI, new Intent("android.intent.action.VIEW", Uri.parse(mailcontent.d())));
            continue; /* Loop/switch isn't completed */
        }
        if(msginfo.l())
        {
            ImgInfo imginfo;
            if(msginfo.f() == 1)
                imginfo = MMCore.f().k().c((int)msginfo.b());
            else
                imginfo = MMCore.f().k().b(msginfo.c());
            if(imginfo != null)
                if(!MMCore.f().c())
                    com.tencent.mm.ui.MMToast.ToastSdcard.a(chattingui, 1);
                else
                if(msginfo.f() == 1)
                {
                    if(FileOperation.c((new StringBuilder()).append(MMCore.f().M()).append(imginfo.j()).toString()))
                        chattingui.e((new StringBuilder()).append(MMCore.f().M()).append(imginfo.j()).toString());
                    else
                        chattingui.a(msginfo.b(), msginfo.c());
                } else
                if(imginfo.m())
                    chattingui.e((new StringBuilder()).append(MMCore.f().M()).append(imginfo.j()).toString());
                else
                    chattingui.a(msginfo.b(), msginfo.c());
            continue; /* Loop/switch isn't completed */
        }
        if(msginfo.n())
        {
            String s5 = msginfo.i();
            if(chattingui.r)
                s5 = MsgInfoStorageLogic.b(s5);
            com.tencent.mm.storage.MsgInfo.FriendContent friendcontent1 = MMCore.f().i().n(s5);
            Intent intent6 = new Intent(chattingui, com/tencent/mm/ui/contact/ContactInfoUI);
            intent6.putExtra("Contact_User", friendcontent1.a());
            intent6.putExtra("Contact_Nick", friendcontent1.b());
            intent6.putExtra("Contact_QuanPin", friendcontent1.d());
            intent6.putExtra("Contact_PyInitial", friendcontent1.e());
            intent6.putExtra("Contact_Uin", friendcontent1.i());
            intent6.putExtra("Contact_Mobile_MD5", friendcontent1.h());
            intent6.putExtra("Contact_full_Mobile_MD5", friendcontent1.k());
            intent6.putExtra("Contact_QQNick", friendcontent1.j());
            intent6.putExtra("User_From_Fmessage", false);
            intent6.putExtra("Contact_Scene", friendcontent1.g());
            intent6.putExtra("Contact_FMessageCard", true);
            chattingui.startActivity(intent6);
            PostTaskFMessageCardStat.a(friendcontent1.g());
            continue; /* Loop/switch isn't completed */
        }
        if(msginfo.d() != 37) goto _L6; else goto _L5
_L5:
        String s4;
        String s3 = msginfo.i();
        Log.b("MicroMsg.ChattingUI", (new StringBuilder()).append("dealClickVerifyMsgEvent : ").append(s3).toString());
        if(s3 == null || s3.length() <= 0)
            continue; /* Loop/switch isn't completed */
        com.tencent.mm.storage.MsgInfo.VerifyContent verifycontent = MMCore.f().i().m(s3);
        if(verifycontent == null)
            continue; /* Loop/switch isn't completed */
        boolean flag;
        Contact contact1;
        Intent intent5;
        if(verifycontent.a().length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        contact1 = MMCore.f().h().c(verifycontent.a());
        intent5 = new Intent(chattingui, com/tencent/mm/ui/contact/ContactInfoUI);
        if(contact1 != null && contact1.o() > 0 && contact1.l())
        {
            intent5.putExtra("Contact_User", contact1.s());
        } else
        {
            intent5.putExtra("User_Verify", true);
            intent5.putExtra("Contact_User", verifycontent.a());
            intent5.putExtra("Contact_Nick", verifycontent.b());
            intent5.putExtra("Contact_QuanPin", verifycontent.d());
            intent5.putExtra("Contact_PyInitial", verifycontent.e());
            intent5.putExtra("Contact_Sex", verifycontent.l());
            intent5.putExtra("Contact_Signature", verifycontent.m());
            intent5.putExtra("Contact_Scene", verifycontent.h());
            intent5.putExtra("Contact_FMessageCard", true);
            intent5.putExtra("Contact_City", verifycontent.n());
            intent5.putExtra("Contact_Province", verifycontent.o());
        }
        s4 = verifycontent.f();
        if(Util.h(s4).length() > 0) goto _L8; else goto _L7
_L7:
        verifycontent.h();
        JVM INSTR tableswitch 18 29: default 960
    //                   18 1229
    //                   19 960
    //                   20 960
    //                   21 960
    //                   22 1229
    //                   23 1229
    //                   24 1229
    //                   25 1229
    //                   26 1229
    //                   27 1229
    //                   28 1229
    //                   29 1229;
           goto _L9 _L10 _L9 _L9 _L9 _L10 _L10 _L10 _L10 _L10 _L10 _L10 _L10
_L9:
        s4 = chattingui.getString(0x7f0a015f);
_L8:
        intent5.putExtra("Contact_Content", s4);
        intent5.putExtra("Contact_verify_Scene", verifycontent.h());
        intent5.putExtra("Contact_Uin", verifycontent.j());
        intent5.putExtra("Contact_QQNick", verifycontent.k());
        intent5.putExtra("Contact_Mobile_MD5", verifycontent.i());
        intent5.putExtra("User_From_Fmessage", true);
        intent5.putExtra("Contact_from_msgType", 37);
        chattingui.startActivity(intent5);
        PostTaskFMessageCardStat.a(verifycontent.h());
        continue; /* Loop/switch isn't completed */
_L10:
        s4 = chattingui.getString(0x7f0a015d);
        if(true) goto _L8; else goto _L6
_L6:
        if(msginfo.d() == 40)
        {
            String s2 = msginfo.i();
            com.tencent.mm.storage.MsgInfo.FriendContent friendcontent = MMCore.f().i().n(s2);
            if(friendcontent == null || friendcontent.a().length() <= 0)
                continue; /* Loop/switch isn't completed */
            PostTaskFMessageCardStat.a(friendcontent.g());
            Contact contact = MMCore.f().h().c(friendcontent.a());
            if(contact != null && contact.o() > 0 && contact.l())
            {
                chattingui.a(contact, friendcontent);
                continue; /* Loop/switch isn't completed */
            }
            if(friendcontent.i() <= 0L && friendcontent.h() != null && friendcontent.h().length() > 0)
            {
                AddrUpload addrupload = MMCore.f().t().d(friendcontent.h());
                if(addrupload == null || addrupload.b() == null || addrupload.b().length() <= 0)
                {
                    if(contact != null && contact.o() > 0)
                        chattingui.a(contact, friendcontent);
                    else
                        chattingui.a(friendcontent);
                    Log.a("MicroMsg.ChattingUI", (new StringBuilder()).append("error : this is not the mobile contact, MD5 = ").append(friendcontent.h()).toString());
                    continue; /* Loop/switch isn't completed */
                }
                if(addrupload.e() == null || addrupload.e().length() <= 0)
                {
                    addrupload.g(friendcontent.a());
                    addrupload.a(128);
                    if(MMCore.f().t().a(addrupload.b(), addrupload) == -1)
                    {
                        Log.a("MicroMsg.ChattingUI", "update mobile contact username failed");
                        continue; /* Loop/switch isn't completed */
                    }
                }
                chattingui.a(friendcontent);
            } else
            {
                chattingui.a(friendcontent);
            }
            continue; /* Loop/switch isn't completed */
        }
        if(!msginfo.p())
            break MISSING_BLOCK_LABEL_2026;
        if(!MMCore.f().c())
        {
            com.tencent.mm.ui.MMToast.ToastSdcard.a(chattingui, 1);
            continue; /* Loop/switch isn't completed */
        }
        if(msginfo.f() != 0) goto _L12; else goto _L11
_L11:
        VideoInfo videoinfo1;
        videoinfo1 = VideoLogic.e(msginfo.j());
        Log.e("MicroMsg.ChattingUI", (new StringBuilder()).append("video status:").append(videoinfo1.j()).append(" is sender:").append(msginfo.f()).toString());
        videoinfo1.j();
        JVM INSTR lookupswitch 4: default 1700
    //                   111: 1909
    //                   112: 1700
    //                   113: 1700
    //                   199: 1807;
           goto _L13 _L14 _L13 _L13 _L15
_L13:
        break; /* Loop/switch isn't completed */
_L14:
        break MISSING_BLOCK_LABEL_1909;
_L12:
        if(msginfo.f() == 1)
        {
            VideoInfo videoinfo = VideoLogic.e(msginfo.j());
            Log.e("MicroMsg.ChattingUI", (new StringBuilder()).append("video status:").append(videoinfo.j()).append(" is sender:").append(msginfo.f()).toString());
            Intent intent3;
            Intent intent4;
            if(videoinfo.r() == 0)
            {
                Intent intent2 = new Intent(chattingui, com/tencent/mm/ui/video/VideoPlayerUI);
                intent2.putExtra("VideoPlayer_File_nam", msginfo.j());
                chattingui.startActivity(intent2);
            } else
            if(!VideoPlayerUI.a(videoinfo.c(), chattingui))
                Toast.makeText(chattingui, chattingui.getString(0x7f0a032e), 0).show();
        }
        continue; /* Loop/switch isn't completed */
_L15:
        if(videoinfo1.r() == 0)
        {
            intent4 = new Intent(chattingui, com/tencent/mm/ui/video/VideoPlayerUI);
            intent4.putExtra("VideoRecorder_VideoSize", videoinfo1.g());
            intent4.putExtra("VideoRecorder_VideoLength", videoinfo1.m());
            intent4.putExtra("VideoPlayer_File_nam", msginfo.j());
            chattingui.startActivity(intent4);
        } else
        if(!VideoPlayerUI.a(videoinfo1.c(), chattingui))
            Toast.makeText(chattingui, chattingui.getString(0x7f0a032e), 0).show();
          goto _L12
        if(!NetService.b(chattingui) && !a)
        {
            a = true;
            MMAlert.a(chattingui, 0x7f0a0331, 0x7f0a0010, chattingui. new _cls35(msginfo), null);
        } else
        {
            VideoLogic.d(msginfo.j());
            intent3 = new Intent(chattingui, com/tencent/mm/ui/video/VideoDownloadUI);
            intent3.putExtra("file_name", msginfo.j());
            chattingui.startActivity(intent3);
        }
          goto _L12
        if(msginfo.q())
        {
            if(MMCore.f().c())
            {
                EmojiInfo emojiinfo = MMCore.f().l().d(msginfo.j());
                if(emojiinfo != null && !emojiinfo.d())
                {
                    Intent intent1 = new Intent(chattingui, com/tencent/mm/ui/chatting/CustomSmileyPreviewUI);
                    intent1.putExtra("custom_smiley_preview_md5", msginfo.j());
                    chattingui.startActivity(intent1);
                }
            }
        } else
        if(msginfo.d() == 48)
        {
            String s1 = msginfo.i();
            if(ContactStorageLogic.b(chattingui.f.s()))
            {
                int k1 = MsgInfoStorageLogic.a(s1);
                if(k1 != -1)
                    s1 = s1.substring(k1 + 1).trim();
            }
            com.tencent.mm.storage.MsgInfo.LocationContent locationcontent = MMCore.f().i().o(s1);
            if(!MMCore.f().c())
            {
                com.tencent.mm.ui.MMToast.ToastSdcard.a(chattingui.c(), 1);
            } else
            {
                Intent intent = new Intent(chattingui.c(), com/tencent/mm/ui/location/WebViewMap);
                intent.putExtra("kwebmap_slat", locationcontent.a());
                intent.putExtra("kwebmap_lng", locationcontent.b());
                intent.putExtra("kwebmap_scale", locationcontent.c());
                intent.putExtra("Kwebmap_locaion", chattingui.D.a(msginfo));
                intent.putExtra("kimg_path", MMCore.f().M());
                intent.putExtra("kwebmap_from_to", true);
                chattingui.c().startActivity(intent);
            }
        } else
        {
            Log.a("MicroMsg.ChattingUI", "uknown msg type");
        }
        if(true) goto _L2; else goto _L16
_L16:
    }

    static boolean b(ChattingUI chattingui)
    {
        chattingui.n = false;
        return false;
    }

    static com.tencent.mm.modelvoice.SceneVoice.Recorder c(ChattingUI chattingui)
    {
        return chattingui.s;
    }

    static long d(ChattingUI chattingui)
    {
        return chattingui.t;
    }

    static Toast e(ChattingUI chattingui)
    {
        return chattingui.u;
    }

    private void e(String s1)
    {
        if(s1 == null || s1.equals("") || !FileOperation.c(s1))
            Log.d("MicroMsg.ChattingUI", "showImg : imgPath is null");
        else
            a(com/tencent/mm/ui/tools/CropImageUI, (new Intent()).putExtra("CropImage_ImgPath", s1).putExtra("CropImage_bCrop", false));
    }

    private String f(String s1)
    {
        if(r && s1 != null)
            s1 = MsgInfoStorageLogic.b(s1);
        return s1;
    }

    static boolean f(ChattingUI chattingui)
    {
        return chattingui.B();
    }

    static MTimerHandler g(ChattingUI chattingui)
    {
        return chattingui.E;
    }

    static MTimerHandler h(ChattingUI chattingui)
    {
        return chattingui.G;
    }

    private void h(int i1)
    {
        F();
        findViewById(0x7f070091).setBackgroundColor(i1);
    }

    static AutoPlay i(ChattingUI chattingui)
    {
        return chattingui.z;
    }

    private static void i(int i1)
    {
        int j1 = 1 + Util.a((Integer)MMCore.f().f().a(i1), 0);
        Log.d("MicroMsg.ChattingUI", (new StringBuilder()).append("recv egg tyep:").append(i1).append("  count:").append(j1).toString());
        MMCore.f().f().a(i1, Integer.valueOf(j1));
    }

    static ListView j(ChattingUI chattingui)
    {
        return chattingui.j;
    }

    static void k(ChattingUI chattingui)
    {
        if(chattingui.s != null)
        {
            MMEntryLock.a("keep_app_silent");
            chattingui.s.a(chattingui.o());
            chattingui.O = chattingui.s.b();
            chattingui.y.startTone(24);
            chattingui.o.postDelayed(chattingui. new _cls34(), 200L);
            chattingui.s.a(chattingui.I);
            chattingui.w.vibrate(50L);
            chattingui.c.notifyDataSetChanged();
            chattingui.c(true);
            chattingui.s.a(chattingui.H);
        }
    }

    static void l(ChattingUI chattingui)
    {
        if(chattingui.s != null)
        {
            chattingui.s.j();
            chattingui.E.a();
            chattingui.G.a();
            chattingui.t = -1L;
        }
    }

    static View m(ChattingUI chattingui)
    {
        return chattingui.f();
    }

    static View n(ChattingUI chattingui)
    {
        return chattingui.f();
    }

    static void o(ChattingUI chattingui)
    {
        chattingui.G();
    }

    static boolean p(ChattingUI chattingui)
    {
        return chattingui.r;
    }

    static MMPullDownView q(ChattingUI chattingui)
    {
        return chattingui.m;
    }

    static Handler r(ChattingUI chattingui)
    {
        return chattingui.o;
    }

    static Contact s(ChattingUI chattingui)
    {
        return chattingui.f;
    }

    static boolean t(ChattingUI chattingui)
    {
        return chattingui.C();
    }

    static void u(ChattingUI chattingui)
    {
        Intent intent = new Intent(chattingui.c(), com/tencent/mm/ui/AddressUI);
        intent.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
        intent.putExtra("List_Type", 4);
        intent.putExtra("received_card_name", chattingui.o());
        String s1;
        if(chattingui.r)
            s1 = Util.a(MMCore.f().n().c(chattingui.o()), ",");
        else
            s1 = chattingui.o();
        intent.putExtra("Block_list", s1);
        intent.putExtra("Add_SendCard", true);
        chattingui.c().startActivity(intent);
    }

    static ToneGenerator v(ChattingUI chattingui)
    {
        return chattingui.y;
    }

    static ProgressDialog w(ChattingUI chattingui)
    {
        return chattingui.p;
    }

    static ProgressDialog x(ChattingUI chattingui)
    {
        chattingui.p = null;
        return null;
    }

    static void y(ChattingUI chattingui)
    {
        chattingui.o.post(chattingui. new _cls10());
    }

    static String z(ChattingUI chattingui)
    {
        return chattingui.D();
    }

    protected final int a()
    {
        return 0x7f030026;
    }

    public final void a(int i1, int j1, NetSceneBase netscenebase)
    {
        Log.d("MicroMsg.ChattingUI", (new StringBuilder()).append("onSceneProgressEnd : offset = ").append(i1).append(" totalLen = ").append(j1).toString());
        if(netscenebase.b() == 9)
            c.notifyDataSetChanged();
    }

    public final void a(int i1, int j1, String s1, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.ChattingUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i1).append(" errCode = ").append(j1).append(" errMsg = ").append(s1).toString());
        if(p != null)
        {
            p.dismiss();
            p = null;
        }
        break MISSING_BLOCK_LABEL_65;
        while(true) 
        {
            do
                return;
            while(!Util.c(this) || 10 != netscenebase.b() && a(i1, j1));
            if(i1 == 0 && j1 == 0)
                switch(netscenebase.b())
                {
                case 10: // '\n'
                    NetSceneDirectSend netscenedirectsend = (NetSceneDirectSend)netscenebase;
                    if(netscenedirectsend.d() != null && netscenedirectsend.d().equals(o()))
                        if(netscenedirectsend.f() == null || netscenedirectsend.f().length != 4)
                        {
                            Log.a("MicroMsg.ChattingUI", "unknown directsend op");
                        } else
                        {
                            int k1 = TypeTransform.a(netscenedirectsend.f());
                            Log.d("MicroMsg.ChattingUI", (new StringBuilder()).append("directsend: status=").append(k1).toString());
                            switch(k1)
                            {
                            case 2: // '\002'
                            default:
                                n = false;
                                q();
                                break;

                            case 1: // '\001'
                                n = true;
                                d(0x7f0a014e);
                                Message message1 = new Message();
                                o.sendMessageDelayed(message1, 15000L);
                                break;

                            case 3: // '\003'
                                n = true;
                                d(0x7f0a014f);
                                Message message = new Message();
                                o.sendMessageDelayed(message, 15000L);
                                break;
                            }
                        }
                    break;

                case 21: // '\025'
                    VoiceLogic.j(((NetSceneUploadVoice)netscenebase).f());
                    break;
                }
            else
            if(j1 == -49)
                (new ProcessErrNeedQQPwd(this, new _cls42())).b();
            else
            if(netscenebase.b() == 8)
                MMAlert.a(this, 0x7f0a0152, 0x7f0a0010);
        }
    }

    public final void a(MsgInfo msginfo)
    {
        if(!ContactStorageLogic.b(o()) && msginfo.h().equals(o()) && msginfo.o())
            a(msginfo.i(), false);
    }

    public final void a(List list)
    {
        if(!ContactStorageLogic.b(o()))
        {
            Iterator iterator = list.iterator();
            MsgInfo msginfo;
            do
            {
                if(!iterator.hasNext())
                    break;
                msginfo = (MsgInfo)iterator.next();
            } while(!msginfo.h().equals(o()) || !msginfo.o() || !a(msginfo.i(), false));
        }
    }

    public final void a(boolean flag)
    {
        if(B)
        {
            b.a(false);
            if(z.g() != -1L)
                a_(flag);
            else
                a_(true);
            z.i();
        } else
        if(z.g() == -1L)
        {
            a_(true);
            b.a(true);
            z.i();
        } else
        {
            a_(flag);
            if(!flag)
            {
                Log.e("sensor", "speaker off");
                b.a(false);
                z.d();
            } else
            {
                Log.e("sensor", "speaker true");
                A();
                C = MMToast.a(this, getString(0x7f0a0078), 2000L);
                b.a(true);
                z.i();
            }
        }
    }

    protected final boolean a(int i1, int j1)
    {
        boolean flag;
        flag = true;
        break MISSING_BLOCK_LABEL_2;
        if(!com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), i1, j1, 3) && MMErrorProcessor.a(this, i1, j1, (new Intent()).setClass(this, com/tencent/mm/ui/LauncherUI).putExtra("Intro_Switch", flag).addFlags(0x4000000)) == null)
            flag = false;
        return flag;
    }

    public final void a_(String s1)
    {
        Contact contact = MMCore.f().h().c(o());
        if(contact != null && contact.o() != 0)
        {
            f = contact;
            q();
        }
    }

    protected void b()
    {
        File file;
        file = new File((new StringBuilder()).append(MMCore.f().X()).append("chatstate.cfg").toString());
        if(!file.exists())
            file.createNewFile();
        if(file.length() != 0L)
            break MISSING_BLOCK_LABEL_992;
        x = new HashMap();
_L1:
        z = new AutoPlay(this);
        y = new ToneGenerator(1, 60);
        if(v == null)
            v = new SensorController(getApplicationContext());
        w = (Vibrator)getSystemService("vibrator");
        s = new com.tencent.mm.modelvoice.SceneVoice.Recorder();
        s.a(I);
        s.a(H);
        l = (ClipboardManager)getSystemService("clipboard");
        String s1 = getIntent().getStringExtra("Chat_User");
        f = MMCore.f().h().c(s1);
        Exception exception;
        boolean flag;
        ChatFooter chatfooter;
        int i1;
        Button button;
        FileInputStream fileinputstream;
        ObjectInputStream objectinputstream;
        if(f != null && f.o() != 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("invalid chatting talker", flag);
        g = MMCore.f().m().a((new com.tencent.mm.storage.RoleInfo.Parser(o())).a(""));
        r = o().endsWith("@chatroom");
        b = (ChatFooter)findViewById(0x7f070095);
        b.a(findViewById(0x7f070198));
        chatfooter = b;
        if(ContactStorageLogic.i(s1) || ContactStorageLogic.p(s1))
        {
            i1 = 1;
        } else
        {
            int j1 = getIntent().getIntExtra("Chat_Mode", -1);
            Integer integer = (Integer)x.get(s1);
            if(integer != null)
                j1 = integer.intValue();
            if(j1 == -1)
            {
                if(integer == null)
                    integer = (Integer)MMCore.f().f().a(18);
                if(integer != null)
                    i1 = integer.intValue();
                else
                    i1 = 0;
            } else
            {
                i1 = j1;
            }
        }
        chatfooter.c(i1);
        if(ContactStorageLogic.h(s1) || ContactStorageLogic.g(s1))
            b.setVisibility(8);
        if(ContactStorageLogic.p(s1))
            b.g();
        if(ContactStorageLogic.v(s1) || ContactStorageLogic.r(s1) || ContactStorageLogic.p(s1))
            b.h();
        if(ContactStorageLogic.t(s1) || ContactStorageLogic.p(s1) || ContactStorageLogic.r(s1))
            b.i();
        b.a(new _cls20());
        b.a(new _cls21());
        b.a(new _cls22());
        b.a(new _cls23());
        b.a(new _cls24());
        b.a(J);
        b.a(J);
        b.a(J);
        b.b(new _cls25());
        b.a(new _cls26());
        b.a(new _cls27());
        b.b(new _cls28());
        b.a(new _cls29());
        b.a(new _cls30());
        b.a(new _cls31());
        b.a(new _cls32());
        j = (ListView)findViewById(0x7f070093);
        m = (MMPullDownView)findViewById(0x7f070092);
        m.a(j);
        m.a(new _cls14());
        d = getLayoutInflater().inflate(0x7f030039, null);
        k = (Button)d.findViewById(0x7f0700c0);
        k.setOnClickListener(new _cls15());
        button = (Button)d.findViewById(0x7f0700bf);
        if(!r)
            if(!f.l() && ContactStorageLogic.a(o()))
                button.setVisibility(0);
            else
                button.setVisibility(8);
        button.setOnClickListener(new _cls16(button));
        c = new ChattingListAdapter(this, new MsgInfo(), o(), p(), r, z);
        c.l();
        c.a(new _cls17());
        j.addHeaderView(d);
        j.setAdapter(c);
        j.setTranscriptMode(1);
        c(true);
        j.setOnItemClickListener(new _cls18());
        j.setOnTouchListener(new _cls19());
        j.setOnScrollListener(new EmojiView.EmojiScrollListener());
        registerForContextMenu(j);
        s();
        q();
        b(((android.view.View.OnClickListener) (new _cls11())));
        a(new _cls12());
        return;
        try
        {
            fileinputstream = new FileInputStream(file);
            objectinputstream = new ObjectInputStream(fileinputstream);
            x = (Map)objectinputstream.readObject();
            objectinputstream.close();
            fileinputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch(Exception exception)
        {
            x = new HashMap();
        }
          goto _L1
    }

    public final void b(String s1)
    {
        if(s1 != null && !s1.equals(o()))
            Util.a(this, getSharedPreferences("com.tencent.mm_preferences", 0).getBoolean("settings_shake", true));
    }

    protected final void c(boolean flag)
    {
        o.postDelayed(new _cls33(flag), 10L);
    }

    public String o()
    {
        return f.s();
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        Log.c("MicroMsg.ChattingUI", (new StringBuilder()).append("onAcvityResult requestCode:").append(i1).toString());
        if(j1 == -1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        switch(i1)
        {
        case 9: // '\t'
        case 12: // '\f'
        case 14: // '\016'
        default:
            Log.a("MicroMsg.ChattingUI", "onActivityResult: not found this requestCode");
            break;

        case 4: // '\004'
            if(intent != null)
            {
                h = Util.a(this, intent, MMCore.f().M());
                Intent intent3 = new Intent(this, com/tencent/mm/ui/tools/CropImageUI);
                intent3.putExtra("CropImage_bCrop", false);
                intent3.putExtra("CropImage_bPrev", true);
                intent3.putExtra("CropImage_ImgPath", h);
                startActivityForResult(intent3, 7);
            }
            break;

        case 5: // '\005'
            h = CameraUtil.a(getApplicationContext(), intent, MMCore.f().M());
            if(h != null)
            {
                Intent intent2 = new Intent(this, com/tencent/mm/ui/tools/CropImageUI);
                intent2.putExtra("CropImage_bCrop", false);
                intent2.putExtra("CropImage_bPrev", true);
                intent2.putExtra("CropImage_ImgPath", h);
                startActivityForResult(intent2, 7);
            }
            break;

        case 6: // '\006'
            int l1 = intent.getIntExtra("Chat_Mode", 1);
            if(b != null)
                b.c(l1);
            break;

        case 7: // '\007'
            h = intent.getStringExtra("CropImage_ImgPath");
            if(h != null)
                E();
            break;

        case 13: // '\r'
            a(intent.getStringExtra("art_smiley_slelct_data"), 4);
            break;

        case 10: // '\n'
            if(intent != null)
            {
                String s3 = Util.a(this, intent, MMCore.f().M());
                if(s3 != null && s3.length() > 0)
                {
                    Intent intent1 = new Intent();
                    intent1.setClass(this, com/tencent/mm/ui/tools/CropImageUI);
                    intent1.putExtra("CropImage_ImgPath", s3);
                    intent1.putExtra("CropImage_OutputPath", MMCore.f().N());
                    intent1.putExtra("CropImage_bMatting", true);
                    startActivityForResult(intent1, 11);
                }
            }
            break;

        case 11: // '\013'
            String s1 = intent.getStringExtra("CropImage_OutputPath");
            if(s1 != null && s1.length() > 0)
            {
                String s2 = s1.substring(1 + s1.lastIndexOf('/'));
                int k1 = FileOperation.a((new StringBuilder()).append(MMCore.f().N()).append(s2).toString());
                MMCore.f().l().a(s2, "", EmojiInfo.g, EmojiInfo.h, k1);
                b.k();
            }
            break;

        case 15: // '\017'
            if(!NetService.b(this))
                MMAlert.a(this, 0x7f0a0331, 0x7f0a0010, new _cls36(intent), null);
            else
                a(intent);
            break;

        case 8: // '\b'
            break;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        if(b != null)
            b.onConfigurationChanged(configuration);
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        super.onContextItemSelected(menuitem);
        menuitem.getItemId();
        JVM INSTR tableswitch 1 17: default 96
    //                   1 102
    //                   2 744
    //                   3 839
    //                   4 1082
    //                   5 1095
    //                   6 96
    //                   7 96
    //                   8 96
    //                   9 340
    //                   10 96
    //                   11 96
    //                   12 208
    //                   13 96
    //                   14 300
    //                   15 1108
    //                   16 1147
    //                   17 1003;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L1 _L1 _L1 _L7 _L1 _L1 _L8 _L1 _L9 _L10 _L11 _L12
_L1:
        break; /* Loop/switch isn't completed */
_L11:
        break MISSING_BLOCK_LABEL_1147;
_L14:
        boolean flag = true;
_L13:
        return flag;
_L2:
        MsgInfo msginfo2 = (MsgInfo)c.getItem(menuitem.getGroupId());
        if(msginfo2.k() && msginfo2.b() == z.g())
            z.a(true);
        MsgInfoStorageLogic.a(msginfo2.b());
        if(!f.s().equals("medianote"))
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDelMsg(msginfo2.h(), msginfo2.c()));
        flag = false;
          goto _L13
_L8:
        MsgInfo msginfo1 = (MsgInfo)c.getItem(menuitem.getGroupId());
        if(!msginfo1.q())
        {
            flag = false;
        } else
        {
            EmojiInfo emojiinfo = MMCore.f().l().d(msginfo1.j());
            if(emojiinfo.i() == EmojiInfo.f)
            {
                emojiinfo.c(EmojiInfo.g);
                MMCore.f().l().a(emojiinfo);
            }
            b.k();
            flag = false;
        }
          goto _L13
_L9:
        MsgInfo msginfo = (MsgInfo)c.getItem(menuitem.getGroupId());
        MMCore.f().l().c(f(msginfo.i()));
          goto _L14
_L7:
        int i1 = menuitem.getGroupId();
        String s2 = VoiceLogic.d(((MsgInfo)c.getItem(i1)).j());
        Log.c("MicroMsg.ChattingUI", (new StringBuilder()).append("set MyRingtone file is ").append(s2).toString());
        int j1 = s2.lastIndexOf("voice");
        String s3 = (new StringBuilder()).append(s2.substring(0, j1)).append("ringtone.amr").toString();
        Log.d("MicroMsg.ChattingUI", (new StringBuilder()).append("newPath ").append(s3).toString());
        FilesCopy.a(s2, s3, false);
        File file = new File(s3);
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("_data", s3);
        contentvalues.put("title", file.getName());
        contentvalues.put("mime_type", "audio/amr");
        contentvalues.put("is_ringtone", Boolean.valueOf(true));
        contentvalues.put("is_notification", Boolean.valueOf(false));
        contentvalues.put("is_alarm", Boolean.valueOf(false));
        contentvalues.put("is_music", Boolean.valueOf(false));
        Uri uri = android.provider.MediaStore.Audio.Media.getContentUriForPath(s3);
        Log.d("MicroMsg.ChattingUI", (new StringBuilder()).append("uri ").append(uri).toString());
        ContentResolver contentresolver = getContentResolver();
        String as[] = new String[1];
        as[0] = s3;
        Cursor cursor = contentresolver.query(uri, null, "_data=?", as, null);
        Uri uri1;
        if(cursor.moveToFirst() && cursor.getCount() > 0)
            uri1 = Uri.withAppendedPath(uri, cursor.getString(cursor.getColumnIndex("_id")));
        else
            uri1 = getContentResolver().insert(uri, contentvalues);
        cursor.close();
        Log.d("MicroMsg.ChattingUI", (new StringBuilder()).append("set riginton ").append(uri1).toString());
        RingtoneManager.setActualDefaultRingtoneUri(this, 1, uri1);
          goto _L14
_L3:
        Log.d("MicroMsg.ChattingUI", (new StringBuilder()).append("groupId = ").append(menuitem.getGroupId()).append("content: ").append(((MsgInfo)c.getItem(menuitem.getGroupId())).i()).toString());
        l.setText(f(((MsgInfo)c.getItem(menuitem.getGroupId())).i()));
        flag = false;
          goto _L13
_L4:
        if(i.k())
        {
label0:
            {
                if(MMCore.f().c())
                    break label0;
                com.tencent.mm.ui.MMToast.ToastSdcard.a(this, 1);
                flag = false;
            }
        } else
        {
label1:
            {
                if(!i.l())
                    break MISSING_BLOCK_LABEL_924;
                if(MMCore.f().c())
                    break label1;
                com.tencent.mm.ui.MMToast.ToastSdcard.a(this, 1);
                flag = false;
            }
        }
          goto _L13
        VoiceLogic.a((int)i.b());
_L15:
        flag = false;
          goto _L13
        E();
          goto _L15
label2:
        {
            if(!i.q())
                break MISSING_BLOCK_LABEL_987;
            if(MMCore.f().c())
                break label2;
            com.tencent.mm.ui.MMToast.ToastSdcard.a(this, 1);
            flag = false;
        }
          goto _L13
        MMCore.m().a(o(), MMCore.f().l().d(i.j()), i);
          goto _L15
        a(i.i(), 0);
          goto _L15
_L12:
        String s1 = VideoLogic.f(MMCore.f().p().d(i.j()));
        if(Util.i(s1))
        {
            Toast.makeText(this, getString(0x7f0a0323), 1).show();
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = s1;
            Toast.makeText(this, getString(0x7f0a0322, aobj), 1).show();
        }
          goto _L14
_L5:
        b.r();
        flag = false;
          goto _L13
_L6:
        b.q();
        flag = false;
          goto _L13
_L10:
        Intent intent1 = new Intent("android.intent.action.GET_CONTENT");
        intent1.setType("video/*");
        startActivityForResult(Intent.createChooser(intent1, null), 15);
        flag = false;
          goto _L13
        Intent intent = new Intent(this, com/tencent/mm/ui/video/VideoRecorderUI);
        intent.putExtra("VideoRecorder_ToUser", o());
        startActivity(intent);
        flag = false;
          goto _L13
    }

    public void onCreate(Bundle bundle)
    {
        Log.c("MicroMsg.ChattingUI", "onCreate");
        super.onCreate(bundle);
        b();
        MMCore.g().a(4, this);
        MMCore.g().a(9, this);
        MMCore.g().a(10, this);
        MMCore.g().a(21, this);
        VoiceMsgExtension.a(z);
        NetSceneDownloadVoice.a(z);
        MMCore.f().h().a(this);
        MMCore.f().y().a(K);
        MMCore.f().l().a(L);
        MMCore.f().V().a(M);
        D = MMCore.f().S();
        if(ContactStorageLogic.b(f.s()))
            D.a(LocaleUtil.a(), true);
        else
            D.a(LocaleUtil.a(), false);
        EmojiView.a();
        G();
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        android.widget.AdapterView.AdapterContextMenuInfo adaptercontextmenuinfo;
        super.onCreateContextMenu(contextmenu, view, contextmenuinfo);
        adaptercontextmenuinfo = (android.widget.AdapterView.AdapterContextMenuInfo)contextmenuinfo;
        adaptercontextmenuinfo.position = -1 + adaptercontextmenuinfo.position;
        if(ContactStorageLogic.t(o()))
        {
            Object aobj[] = new Object[1];
            aobj[0] = Util.h(f.M());
            contextmenu.setHeaderTitle(getString(0x7f0a03d7, aobj).trim());
        } else
        {
            contextmenu.setHeaderTitle(f.A());
        }
        i = (MsgInfo)c.getItem(adaptercontextmenuinfo.position);
        if(i != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(!i.l()) goto _L4; else goto _L3
_L3:
        contextmenu.add(adaptercontextmenuinfo.position, 1, 0, getString(0x7f0a013d));
_L5:
        if(i.e() == 5)
        {
            contextmenu.add(adaptercontextmenuinfo.position, 3, 0, getString(0x7f0a0146));
            String s1;
            EmojiInfo emojiinfo;
            VideoInfo videoinfo;
            if(!i.l())
                s1 = null;
            else
                s1 = (new StringBuilder()).append(MMCore.f().M()).append(MMCore.f().k().a(i.j()).j()).toString();
            h = s1;
        }
          goto _L1
_L4:
label0:
        {
            if(!i.p())
                break label0;
            contextmenu.add(adaptercontextmenuinfo.position, 1, 0, getString(0x7f0a013f));
            videoinfo = MMCore.f().p().a(i.j());
            if(videoinfo != null && (videoinfo.j() == 199 || videoinfo.j() == 199))
                contextmenu.add(adaptercontextmenuinfo.position, 17, 0, getString(0x7f0a0140));
        }
          goto _L1
        if(i.k())
        {
            if(((new com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent(i.i())).c() != 0L || i.f() != 0) && (i.e() != 1 || i.f() != 1))
            {
                contextmenu.add(adaptercontextmenuinfo.position, 1, 0, getString(0x7f0a013e));
                contextmenu.add(adaptercontextmenuinfo.position, 9, 0, getString(0x7f0a0141));
            }
        } else
        if(i.q())
        {
            contextmenu.add(adaptercontextmenuinfo.position, 1, 0, getString(0x7f0a0143));
            emojiinfo = MMCore.f().l().d(i.j());
            if(emojiinfo != null && emojiinfo.i() == EmojiInfo.f)
                contextmenu.add(adaptercontextmenuinfo.position, 12, 0, getString(0x7f0a0144));
        } else
        if(i.o())
        {
            if(SmileyUtil.a(i.i()))
            {
                contextmenu.add(adaptercontextmenuinfo.position, 1, 0, getString(0x7f0a013c));
                contextmenu.add(adaptercontextmenuinfo.position, 2, 0, getString(0x7f0a0142));
                contextmenu.add(adaptercontextmenuinfo.position, 14, 0, getString(0x7f0a0145));
            } else
            {
                contextmenu.add(adaptercontextmenuinfo.position, 1, 0, getString(0x7f0a013c));
                contextmenu.add(adaptercontextmenuinfo.position, 2, 0, getString(0x7f0a0142));
            }
        } else
        if(i.d() == 48)
        {
            contextmenu.add(adaptercontextmenuinfo.position, 1, 0, getString(0x7f0a013c));
        } else
        {
            contextmenu.add(adaptercontextmenuinfo.position, 1, 0, getString(0x7f0a013c));
            if(i.d() != 42 && i.d() != 10000 && !ContactStorageLogic.g(o()) && !ContactStorageLogic.h(o()))
                contextmenu.add(adaptercontextmenuinfo.position, 2, 0, getString(0x7f0a0142));
        }
          goto _L5
    }

    public void onDestroy()
    {
        Log.c("MicroMsg.ChattingUI", "onDestroy");
        MMCore.g().b(4, this);
        MMCore.g().b(9, this);
        MMCore.g().b(10, this);
        MMCore.g().b(21, this);
        VoiceMsgExtension.b(z);
        NetSceneDownloadVoice.b(z);
        if(A != null)
            A.a();
        y.release();
        z.a();
        if(D != null)
            D.a();
        if(MMCore.f().b())
        {
            MMCore.f().h().b(this);
            MMCore.f().y().b(K);
            MMCore.f().l().b(L);
            MMCore.f().V().b(M);
        }
        c.n();
        c.m();
        F();
        super.onDestroy();
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        boolean flag = true;
        if(keyevent.getKeyCode() != 4 || keyevent.getAction() != 0) goto _L2; else goto _L1
_L1:
        if(!b.m()) goto _L4; else goto _L3
_L3:
        b.l();
_L6:
        return flag;
_L4:
        if(b.o())
        {
            b.n();
            continue; /* Loop/switch isn't completed */
        }
_L2:
        AudioManager audiomanager = (AudioManager)getSystemService("audio");
        int j1 = audiomanager.getStreamMaxVolume(0);
        if(i1 == 25 && z != null && z.j() && (B || !b.f()))
        {
            int i2 = audiomanager.getStreamVolume(0);
            Log.e("MicroMsg.ChattingUI", (new StringBuilder()).append("volume current:").append(i2).append(" max:").append(j1).toString());
            int j2 = j1 / 7;
            if(j2 == 0)
                j2 = ((flag) ? 1 : 0);
            audiomanager.setStreamVolume(0, i2 - j2, 5);
            Log.e("MicroMsg.ChattingUI", (new StringBuilder()).append("volume current:").append(i2).append(" max:").append(j1).toString());
        } else
        if(i1 == 24 && z != null && z.j() && (B || !b.f()))
        {
            int k1 = audiomanager.getStreamVolume(0);
            Log.e("MicroMsg.ChattingUI", (new StringBuilder()).append("volume current:").append(k1).append(" max:").append(j1).toString());
            int l1 = j1 / 7;
            if(l1 == 0)
                l1 = ((flag) ? 1 : 0);
            audiomanager.setStreamVolume(0, l1 + k1, 5);
            Log.e("MicroMsg.ChattingUI", (new StringBuilder()).append("volume current:").append(k1).append(" max:").append(j1).toString());
        } else
        if(i1 == 4)
            t();
        else
            flag = super.onKeyDown(i1, keyevent);
        if(true) goto _L6; else goto _L5
_L5:
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        if(!o().equals("qqmail")) goto _L2; else goto _L1
_L1:
        menuitem.getItemId();
        JVM INSTR tableswitch 1 2: default 40
    //                   1 42
    //                   2 74;
           goto _L3 _L4 _L5
_L3:
        return true;
_L4:
        Intent intent = new Intent(this, com/tencent/mm/plugin/qqmail/ui/ComposeUI);
        intent.putExtra("composeType", 1);
        startActivity(intent);
        continue; /* Loop/switch isn't completed */
_L5:
        MMAlert.a(this, getString(0x7f0a024e), getString(0x7f0a0010), new _cls39(), null);
        if(true) goto _L3; else goto _L2
_L2:
        switch(menuitem.getItemId())
        {
        case 1: // '\001'
            String s1;
            if(ContactStorageLogic.t(o()))
            {
                Object aobj1[] = new Object[1];
                aobj1[0] = f.M();
                s1 = getString(0x7f0a008e, aobj1);
            } else
            if(r)
            {
                s1 = getString(0x7f0a008f);
            } else
            {
                Object aobj[] = new Object[1];
                aobj[0] = f.A();
                s1 = getString(0x7f0a008d, aobj);
            }
            MMAlert.a(this, s1, getString(0x7f0a0010), new _cls40(), null);
            break;

        case 2: // '\002'
            MMAlert.a(this, getString(0x7f0a0365), getString(0x7f0a0010), new _cls41(), null);
            break;

        case 3: // '\003'
            b.a(false);
            B = true;
            f(0);
            A();
            C = MMToast.a(this, getString(0x7f0a0077), 2000L);
            z.i();
            break;

        case 4: // '\004'
            b.a(true);
            B = false;
            f(8);
            A();
            C = MMToast.a(this, getString(0x7f0a0078), 2000L);
            z.i();
            break;
        }
        if(true) goto _L3; else goto _L6
_L6:
    }

    public void onPause()
    {
        Log.c("MicroMsg.ChattingUI", "onPause");
        super.onPause();
        F.a();
        N.b();
        b.a();
        u();
        MMAppMgr.a("");
        NetSceneSync.b(this);
        NetSceneSendMsg.b(this);
        MMCore.f().i().b(c);
        MMCore.f().p().b(c);
        x.put(o(), Integer.valueOf(b.j()));
        MMCore.f().f().a(18, Integer.valueOf(b.j()));
        MMCore.f().f().a(26, Boolean.valueOf(B));
        try
        {
            FileOutputStream fileoutputstream = new FileOutputStream((new StringBuilder()).append(MMCore.f().X()).append("chatstate.cfg").toString());
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(fileoutputstream);
            objectoutputstream.writeObject(x);
            objectoutputstream.close();
            fileoutputstream.flush();
            fileoutputstream.close();
        }
        catch(IOException ioexception) { }
        Log.e("MicroMsg.ChattingUI", "record stop on pause");
        B();
        E.a();
        G.a();
        b.e();
        MMEntryLock.b("keep_app_silent");
        MMEntryLock.b((new StringBuilder()).append("keep_chatting_silent").append(o()).toString());
        if(b != null && f != null && o() != null)
            q.put(o(), b.c());
        try
        {
            unregisterReceiver(v);
        }
        catch(Exception exception)
        {
            Log.e("MicroMsg.ChattingUI", "sensor receiver has already unregistered");
        }
        v.a();
        z.a(false);
        VoicePlayer.a(this, true);
        A();
        com.tencent.mm.ui.chatting.EmojiView.b(false);
    }

    public boolean onPrepareOptionsMenu(Menu menu)
    {
        menu.clear();
        if(!o().equals("qqmail")) goto _L2; else goto _L1
_L1:
        menu.add(0, 1, 0, getString(0x7f0a016e)).setIcon(0x7f02017e);
        menu.add(0, 2, 0, getString(0x7f0a016f)).setIcon(0x7f020183);
_L4:
        return true;
_L2:
        if(!B)
            menu.add(0, 3, 0, getString(0x7f0a0173)).setIcon(0x7f020182);
        else
            menu.add(0, 4, 0, getString(0x7f0a0174)).setIcon(0x7f020181);
        menu.add(0, 1, 1, getString(0x7f0a013b)).setIcon(0x7f020183);
        if(r)
            menu.add(0, 2, 1, getString(0x7f0a0382)).setIcon(0x7f020180);
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected void onResume()
    {
        Log.c("MicroMsg.ChattingUI", "onResume");
        super.onResume();
        F.a(0x493e0L);
        N.a();
        MMEntryLock.a((new StringBuilder()).append("keep_chatting_silent").append(o()).toString());
        MMAppMgr.a(o());
        if(MMAppMgr.b() != null && MMAppMgr.b().equals(o()) && MMAppMgr.c() == 1)
            MMAppMgr.e();
        NetSceneSync.a(this);
        NetSceneSendMsg.a(this);
        MMCore.f().i().a(c);
        MMCore.f().p().a(c);
        Boolean boolean1 = (Boolean)MMCore.f().f().a(26);
        ChatFooter chatfooter;
        boolean flag;
        IntentFilter intentfilter;
        if(boolean1 == null)
            B = false;
        else
            B = boolean1.booleanValue();
        if(B)
            f(0);
        else
            f(8);
        if(r && f.H() == 0)
            g(0);
        else
            g(8);
        chatfooter = b;
        if(!B)
            flag = true;
        else
            flag = false;
        chatfooter.a(flag);
        c.a_(null);
        if(f != null)
        {
            String s1 = (String)q.get(o());
            if(s1 != null && b != null)
                b.a(s1);
        }
        intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.HEADSET_PLUG");
        registerReceiver(v, intentfilter);
        v.a(this);
        z.h();
        if(e)
        {
            e = false;
            c(true);
        }
        com.tencent.mm.ui.chatting.EmojiView.b(true);
        EmojiView.a(false);
    }

    protected String p()
    {
        return D();
    }

    protected void q()
    {
        if(!ContactStorageLogic.p(o())) goto _L2; else goto _L1
_L1:
        b.p();
        d(f.A());
_L4:
        return;
_L2:
        if(ContactStorageLogic.D(o()))
        {
            d(f.z());
        } else
        {
            if(f.t().equals(""))
            {
                ContactStorageLogic.e(o());
                Object aobj1[] = new Object[2];
                aobj1[0] = getString(0x7f0a0159);
                aobj1[1] = Integer.valueOf(ChatroomMembersLogic.e(o()));
                d(getString(0x7f0a009c, aobj1));
            } else
            if(ContactStorageLogic.b(f.s()))
            {
                Object aobj[] = new Object[2];
                aobj[0] = f.z();
                aobj[1] = Integer.valueOf(ChatroomMembersLogic.e(o()));
                d(getString(0x7f0a009c, aobj));
            } else
            {
                d(f.z());
            }
            if(ContactStorageLogic.r(o()))
                l();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected boolean r()
    {
        String s1 = Util.d(this);
        boolean flag;
        if(s1.equalsIgnoreCase(com/tencent/mm/ui/chatting/ChattingUI.getName()) || s1.equalsIgnoreCase(com/tencent/mm/ui/tools/WebViewUI.getName()))
            flag = true;
        else
            flag = false;
        return flag;
    }

    protected void s()
    {
        _cls13 _lcls13 = new _cls13();
        if(!ContactStorageLogic.E(o())) goto _L2; else goto _L1
_L1:
        a(getString(0x7f0a0013), _lcls13);
_L4:
        return;
_L2:
        if(ContactStorageLogic.p(o()) || ContactStorageLogic.r(o()) || ContactStorageLogic.t(o()))
            c(0x7f0201c5, _lcls13);
        else
        if(o().endsWith("@chatroom"))
        {
            String s1 = o();
            String s2 = (String)MMCore.f().f().a(2);
            List list = ChatroomMembersLogic.c(s1);
            boolean flag;
            if(list != null && (list.size() == 0 || !list.contains(s2)))
                flag = false;
            else
                flag = true;
            if(flag)
                c(0x7f0201c8, _lcls13);
        } else
        {
            c(0x7f0201c8, _lcls13);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected void t()
    {
        if(ContactStorageLogic.p(o()))
        {
            Intent intent = new Intent(this, com/tencent/mm/ui/TConversationUI);
            intent.addFlags(0x4000000);
            startActivity(intent);
        } else
        if(ContactStorageLogic.r(o()))
        {
            Intent intent1 = new Intent(this, com/tencent/mm/ui/QConversationUI);
            intent1.addFlags(0x4000000);
            startActivity(intent1);
        } else
        {
            Intent intent2 = new Intent(this, com/tencent/mm/ui/MainTabUI);
            intent2.addFlags(0x4000000);
            startActivity(intent2);
        }
        finish();
    }

    protected final boolean u()
    {
        Log.d("MicroMsg.ChattingUI", (new StringBuilder()).append("writeOpLogAndMarkRead :").append(o()).toString());
        if(ContactStorageLogic.p(o())) goto _L2; else goto _L1
_L1:
        boolean flag = MMCore.f().j().e(o());
_L4:
        return flag;
_L2:
        flag = false;
        String s1 = D();
        Cursor cursor = MMCore.f().i().k(o());
        cursor.moveToFirst();
        while(!cursor.isAfterLast()) 
        {
            MsgInfo msginfo = new MsgInfo();
            msginfo.a(cursor);
            if(msginfo.d() != 34)
            {
                msginfo.d(4);
                if(!f.s().equals("medianote"))
                    MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModMsgStatus(msginfo.c(), 4, o(), s1));
                Log.d("MicroMsg.ChattingUI", (new StringBuilder()).append("writeOpLog: msgSvrId = ").append(msginfo.c()).append(" status = ").append(msginfo.e()).toString());
            }
            cursor.moveToNext();
            flag = true;
        }
        cursor.close();
        if(flag)
        {
            MMCore.f().j().e(o());
            MMCore.f().i().h(o());
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected final void v()
    {
        j.setKeepScreenOn(true);
    }

    protected final void w()
    {
        j.setKeepScreenOn(false);
    }

    public final boolean x()
    {
        return B;
    }

    public final boolean y()
    {
        return b.f();
    }

    public final ChattingListAdapter z()
    {
        return c;
    }

    public static boolean a = false;
    public static boolean e = false;
    private static Map q = new HashMap();
    private static SensorController v;
    private final ProcessErrNeedQQPwd A = null;
    private boolean B;
    private PopupWindow C;
    private com.tencent.mm.modellocation.LocationLogic.LocationServer D;
    private final MTimerHandler E = new MTimerHandler(new _cls2(), true);
    private final MTimerHandler F = new MTimerHandler(new _cls3(), true);
    private final MTimerHandler G = new MTimerHandler(new _cls4(), true);
    private final com.tencent.mm.modelvoice.SceneVoice.Recorder.OnErrorListener H = new _cls5();
    private final com.tencent.mm.modelvoice.SceneVoice.Recorder.OnPartListener I = new _cls6();
    private final RecordResponser J = new RecordResponser();
    private final com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged K = new _cls7();
    private final com.tencent.mm.storagebase.MStorage.IOnStorageChange L = new _cls8();
    private final com.tencent.mm.storagebase.MStorage.IOnStorageChange M = new _cls9();
    private final SendMessageFaster N = new SendMessageFaster();
    private String O;
    private Bitmap P;
    private String Q[];
    protected ChatFooter b;
    protected ChattingListAdapter c;
    protected View d;
    private Contact f;
    private RoleInfo g;
    private String h;
    private MsgInfo i;
    private ListView j;
    private Button k;
    private ClipboardManager l;
    private MMPullDownView m;
    private boolean n;
    private Handler o;
    private ProgressDialog p;
    private boolean r;
    private com.tencent.mm.modelvoice.SceneVoice.Recorder s;
    private long t;
    private Toast u;
    private Vibrator w;
    private Map x;
    private ToneGenerator y;
    private AutoPlay z;


    private class _cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
            if(!a.isFinishing() && ChattingUI.a(a))
            {
                com.tencent.mm.ui.chatting.ChattingUI.b(a);
                a.q();
            }
        }

        private ChattingUI a;

        _cls1()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls2
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            a.b.b(ChattingUI.c(a).h());
            return true;
        }

        private ChattingUI a;

        _cls2()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls3
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            a.c.a_(null);
            return true;
        }

        private ChattingUI a;

        _cls3()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls4
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            boolean flag = false;
            if(ChattingUI.d(a) == -1L)
                ChattingUI.a(a, Util.e());
            long l1 = Util.f(ChattingUI.d(a));
            if(l1 >= 50000L && l1 <= 60000L)
            {
                if(ChattingUI.e(a) == null)
                {
                    ChattingUI chattingui1 = a;
                    ChattingUI chattingui2 = a;
                    ChattingUI chattingui3 = a;
                    Object aobj1[] = new Object[1];
                    aobj1[flag] = Integer.valueOf((int)((60000L - l1) / 1000L));
                    ChattingUI.a(chattingui1, Toast.makeText(chattingui2, chattingui3.getString(0x7f0a0153, aobj1), flag));
                } else
                {
                    Toast toast = ChattingUI.e(a);
                    ChattingUI chattingui = a;
                    Object aobj[] = new Object[1];
                    aobj[flag] = Integer.valueOf((int)((60000L - l1) / 1000L));
                    toast.setText(chattingui.getString(0x7f0a0153, aobj));
                }
                ChattingUI.e(a).show();
            }
            if(l1 >= 60000L)
            {
                Log.e("MicroMsg.ChattingUI", "record stop on countdown");
                ChattingUI.f(a);
                a.b.e();
                Util.a(a, 0x7f0a000b);
            } else
            {
                flag = true;
            }
            return flag;
        }

        private ChattingUI a;

        _cls4()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls5
        implements com.tencent.mm.modelvoice.SceneVoice.Recorder.OnErrorListener
    {

        public final void a()
        {
            ChattingUI.c(a).e();
            ChattingUI.g(a).a();
            ChattingUI.h(a).a();
            MMEntryLock.b("keep_app_silent");
            a.b.e();
            ChattingUI.i(a).c();
            Log.e("MicroMsg.ChattingUI", "record stop on error");
            Toast.makeText(a, a.getString(0x7f0a0154), 0).show();
        }

        private ChattingUI a;

        _cls5()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls6
        implements com.tencent.mm.modelvoice.SceneVoice.Recorder.OnPartListener
    {

        public final void a()
        {
            a.b.d();
        }

        private ChattingUI a;

        _cls6()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class RecordResponser
        implements com.tencent.mm.modelvoice.RemoteController.CallBack, ChatFooter.OnVoiceRcdCancelRequest, ChatFooter.OnVoiceRcdStartRequest, ChatFooter.OnVoiceRcdStopRequest
    {

        public final boolean a()
        {
            if(!MMCore.f().c())
            {
                com.tencent.mm.ui.MMToast.ToastSdcard.a(a, 1);
            } else
            {
                a.b.l();
                ChattingUI.g(a).a(100L);
                ChattingUI.h(a).a(200L);
                a.b.a(ChattingUI.j(a).getHeight());
                ChattingUI.i(a).b();
                ChattingUI.k(a);
                a.v();
                ChattingUI.a(a, 3);
            }
            return false;
        }

        public final boolean b()
        {
            Log.e("MicroMsg.ChattingUI", "record stop on stop request");
            a.w();
            if(!ChattingUI.f(a))
                a.b.b();
            else
                a.b.e();
            ChattingUI.i(a).c();
            ChattingUI.a(a, 4);
            return false;
        }

        public final void c()
        {
            a();
        }

        public final void d()
        {
            Log.e("MicroMsg.ChattingUI", "record stop on key up");
            b();
        }

        public final boolean e()
        {
            Log.e("MicroMsg.ChattingUI", "record cancel on cancel request");
            a.w();
            ChattingUI.l(a);
            a.b.e();
            ChattingUI.i(a).c();
            ChattingUI.a(a, 4);
            return false;
        }

        private ChattingUI a;

        RecordResponser()
        {
            this((byte)0);
        }

        private RecordResponser(byte byte0)
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls7
        implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged
    {

        public final void b(String s1)
        {
            a.c.notifyDataSetChanged();
        }

        private ChattingUI a;

        _cls7()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls8
        implements com.tencent.mm.storagebase.MStorage.IOnStorageChange
    {

        public final void a_(String s1)
        {
            EmojiView emojiview = (EmojiView)ChattingUI.m(a).findViewById(EmojiView.a(s1));
            if(emojiview != null)
            {
                emojiview.c();
                Log.d("MicroMsg.ChattingUI", "emojiview update");
            } else
            {
                ChattingUI.n(a).invalidate();
            }
        }

        private ChattingUI a;

        _cls8()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls9
        implements com.tencent.mm.storagebase.MStorage.IOnStorageChange
    {

        public final void a_(String s1)
        {
            if(s1 != null && s1.equals(a.o()))
                ChattingUI.o(a);
        }

        private ChattingUI a;

        _cls9()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls44
        implements Runnable
    {

        public void run()
        {
            if(ChattingUI.t(a))
            {
                NetSceneUploadMsgImgFake netsceneuploadmsgimgfake = new NetSceneUploadMsgImgFake(ChattingUI.z(a), ChattingUI.s(a).s(), ChattingUI.A(a), a);
                MMCore.g().b(netsceneuploadmsgimgfake);
            } else
            {
                NetSceneUploadMsgImg netsceneuploadmsgimg = new NetSceneUploadMsgImg(ChattingUI.z(a), a.o(), ChattingUI.A(a), a);
                MMCore.g().b(netsceneuploadmsgimg);
            }
        }

        private ChattingUI a;

        _cls44()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls37
        implements com.tencent.mm.modelvideo.ImportVideo.OnImportFinishListener
    {

        public final void a(int i1, String s1, String s2, int j1)
        {
            if(ChattingUI.w(a) != null)
            {
                ChattingUI.w(a).dismiss();
                ChattingUI.x(a);
            }
            if(i1 == -50002)
                Toast.makeText(a, a.getString(0x7f0a0330), 0).show();
            else
            if(i1 < 0)
            {
                Toast.makeText(a, a.getString(0x7f0a032f), 0).show();
            } else
            {
                VideoLogic.a(s1, j1, ChattingUI.s(a).s(), s2);
                VideoLogic.c(s1);
            }
        }

        private ChattingUI a;

        _cls37()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls38
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            a.a();
        }

        private ImportVideo a;
        private ChattingUI b;

        _cls38(ImportVideo importvideo)
        {
            b = ChattingUI.this;
            a = importvideo;
            super();
        }
    }


    private class _cls43
        implements Runnable
    {

        public void run()
        {
            if(ChattingUI.t(c))
            {
                ChattingUI.z(c);
                NetSceneSendMsgFake netscenesendmsgfake = new NetSceneSendMsgFake(ChattingUI.s(c).s(), a);
                MMCore.g().b(netscenesendmsgfake);
            } else
            {
                String s1 = c.o();
                NetSceneSendMsg netscenesendmsg = new NetSceneSendMsg(ChattingUI.z(c), s1, a, ContactStorageLogic.G(s1), b);
                MMCore.g().b(netscenesendmsg);
            }
        }

        private String a;
        private int b;
        private ChattingUI c;

        _cls43(String s1, int i1)
        {
            c = ChattingUI.this;
            a = s1;
            b = i1;
            super();
        }
    }


    private class _cls35
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            VideoLogic.d(a.j());
            Intent intent = new Intent(b, com/tencent/mm/ui/video/VideoDownloadUI);
            intent.putExtra("file_name", a.j());
            b.startActivity(intent);
        }

        private MsgInfo a;
        private ChattingUI b;

        _cls35(MsgInfo msginfo)
        {
            b = ChattingUI.this;
            a = msginfo;
            super();
        }
    }


    private class _cls34
        implements Runnable
    {

        public void run()
        {
            ChattingUI.v(a).stopTone();
        }

        private ChattingUI a;

        _cls34()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls10
        implements Runnable
    {

        public void run()
        {
            MMCore.g().b(new NetSceneSync(5));
        }

        private ChattingUI a;

        _cls10()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls42 extends ProcessErrNeedQQPwd.CallBack
    {

        public final boolean a(int i1, int j1)
        {
            return a.a(i1, j1);
        }

        private ChattingUI a;

        _cls42()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls20
        implements android.view.View.OnCreateContextMenuListener
    {

        public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
        {
            contextmenu.setHeaderTitle(0x7f0a014a);
            contextmenu.add(0, 4, 0, a.getString(0x7f0a014b));
            contextmenu.add(0, 5, 0, a.getString(0x7f0a014c));
        }

        private ChattingUI a;

        _cls20()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls21
        implements ChatFooter.OnChooseListener
    {

        public final boolean a(View view)
        {
            a.openContextMenu(view);
            return true;
        }

        private ChattingUI a;

        _cls21()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls22
        implements TextWatcher
    {

        public void afterTextChanged(Editable editable)
        {
            b.b.l();
            if(!ChattingUI.p(b)) goto _L2; else goto _L1
_L1:
            return;
_L2:
            if(!a && editable.length() > 0)
            {
                ChattingUI.a(b, 1);
                a = true;
            } else
            if(a && editable.length() <= 0)
            {
                ChattingUI.a(b, 2);
                a = false;
            }
            if(true) goto _L1; else goto _L3
_L3:
        }

        public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
        {
        }

        private boolean a;
        private ChattingUI b;

        _cls22()
        {
            b = ChattingUI.this;
            super();
            a = false;
        }
    }


    private class _cls23
        implements ChatFooter.OnSendRequest
    {

        public final boolean a(String s1)
        {
            return ChattingUI.a(a, s1);
        }

        private ChattingUI a;

        _cls23()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls24
        implements android.view.View.OnFocusChangeListener
    {

        public void onFocusChange(View view, boolean flag)
        {
            if(flag)
            {
                ChattingUI.i(a).a(true);
                a.b.l();
            } else
            {
                ChattingUI.a(a, 2);
            }
        }

        private ChattingUI a;

        _cls24()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls25
        implements android.view.View.OnCreateContextMenuListener
    {

        public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
        {
            contextmenu.setHeaderTitle(0x7f0a0147);
            contextmenu.add(0, 15, 0, a.getString(0x7f0a0148));
            contextmenu.add(0, 16, 0, a.getString(0x7f0a0149));
        }

        private ChattingUI a;

        _cls25()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls26
        implements ChatFooter.OnSelectImageListener
    {

        public final boolean a()
        {
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("image/*");
            Intent intent1 = Intent.createChooser(intent, null);
            a.startActivityForResult(intent1, 4);
            return false;
        }

        private ChattingUI a;

        _cls26()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls27
        implements ChatFooter.OnArtSmileySelectListener
    {

        public final void a(String s1)
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/chatting/ArtSmileySelectUI);
            intent.putExtra("art_smiley_select_group_md5", s1);
            a.startActivityForResult(intent, 13);
        }

        private ChattingUI a;

        _cls27()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls28
        implements ChatFooter.OnSelectImageListener
    {

        public final boolean a()
        {
            File file = new File(ConstantsStorage.c);
            if(file.exists() || file.mkdir()) goto _L2; else goto _L1
_L1:
            Toast.makeText(a, a.getString(0x7f0a014d), 1).show();
_L4:
            return false;
_L2:
            if(!CameraUtil.a(a, ConstantsStorage.c, (new StringBuilder()).append("microMsg.").append(System.currentTimeMillis()).append(".jpg").toString(), 5))
                Toast.makeText(a, a.getString(0x7f0a00c5), 1).show();
            if(true) goto _L4; else goto _L3
_L3:
        }

        private ChattingUI a;

        _cls28()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls29
        implements ChatFooter.OnSendCustomEmojiListener
    {

        public final void a(EmojiInfo emojiinfo)
        {
            if(!MMCore.f().c())
            {
                com.tencent.mm.ui.MMToast.ToastSdcard.a(a, 1);
            } else
            {
                if(emojiinfo.i() == EmojiInfo.a && emojiinfo.j() == EmojiInfo.h && emojiinfo.o().length() > 0 && EmojiInfo.b(Integer.parseInt(emojiinfo.o())))
                {
                    Cursor cursor = MMCore.f().l().b(Integer.parseInt(emojiinfo.o()));
                    int i1 = Util.a(-1 + cursor.getCount());
                    emojiinfo = new EmojiInfo();
                    cursor.moveToPosition(i1);
                    emojiinfo.a(cursor);
                    cursor.close();
                }
                a.c(true);
                if(ChattingUI.t(a))
                    ChattingUI.a(emojiinfo);
                else
                    MMCore.m().a(a.o(), emojiinfo, null);
            }
        }

        private ChattingUI a;

        _cls29()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls30
        implements ChatFooter.OnAddCustomEmojiListener
    {

        public final void a()
        {
            if(!MMCore.f().c())
            {
                com.tencent.mm.ui.MMToast.ToastSdcard.a(a, 1);
            } else
            {
                Intent intent = new Intent("android.intent.action.GET_CONTENT");
                intent.setType("image/*");
                Intent intent1 = Intent.createChooser(intent, null);
                a.startActivityForResult(intent1, 10);
            }
        }

        private ChattingUI a;

        _cls30()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls31
        implements SmileyGrid.OnSmileyLongClickListener
    {

        public final void a(EmojiInfo emojiinfo)
        {
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    a.c(EmojiInfo.f);
                    if(MMCore.f().l().a(a) && b.a.b != null)
                        b.a.b.k();
                }

                private EmojiInfo a;
                private _cls31 b;

                _cls1(EmojiInfo emojiinfo)
                {
                    b = _cls31.this;
                    a = emojiinfo;
                    super();
                }
            }

            MMAlert.a(a, a.getResources().getString(0x7f0a0179), null, new _cls1(emojiinfo), null);
        }

        final ChattingUI a;

        _cls31()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls32
        implements ChatFooter.OnSendCardRequest
    {

        public final void a()
        {
            ChattingUI.u(a);
        }

        private ChattingUI a;

        _cls32()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls14
        implements com.tencent.mm.ui.MMPullDownView.OnLoadDataListener
    {

        public final void a()
        {
            if(a.c.e())
            {
                ChattingUI.j(a).setSelectionFromTop(1, ChattingUI.q(a).a());
            } else
            {
                int i1 = a.c.c();
                Log.e("MicroMsg.ChattingUI", (new StringBuilder()).append("onLoadData add count:").append(i1).toString());
                a.c.a_(null);
                a.c.a(i1);
                ChattingUI.j(a).setSelectionFromTop(i1 + 1, a.d.getHeight() + ChattingUI.q(a).a());
            }
        }

        private ChattingUI a;

        _cls14()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls15
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            class _cls1
                implements Runnable
            {

                public void run()
                {
                    int i1 = a.a.c.c();
                    a.a.c.a_(null);
                    a.a.c.a(i1);
                    ChattingUI.j(a.a).setSelectionFromTop(i1 + 1, a.a.d.getHeight());
                }

                private _cls15 a;

                _cls1()
                {
                    a = _cls15.this;
                    super();
                }
            }

            ChattingUI.r(a).post(new _cls1());
        }

        final ChattingUI a;

        _cls15()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls16
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ChattingUI.s(b).o() == 0)
            {
                ChattingUI.s(b).a(-2L);
                if(MMCore.f().h().c(ChattingUI.s(b)) != -1)
                    ChattingUI.a(b, MMCore.f().h().c(b.o()));
            }
            class _cls1
                implements com.tencent.mm.ui.AddContact.IOnAddContact
            {

                public final void a(boolean flag)
                {
                    if(flag)
                    {
                        ContactStorageLogic.e(ChattingUI.s(a.b));
                        a.a.setVisibility(8);
                    }
                }

                private _cls16 a;

                _cls1()
                {
                    a = _cls16.this;
                    super();
                }
            }

            AddContact addcontact = new AddContact(b, new _cls1());
            LinkedList linkedlist = new LinkedList();
            linkedlist.add(Integer.valueOf(3));
            addcontact.a(b.o(), linkedlist);
        }

        final Button a;
        final ChattingUI b;

        _cls16(Button button)
        {
            b = ChattingUI.this;
            a = button;
            super();
        }
    }


    private class _cls17
        implements com.tencent.mm.ui.MListAdapter.CallBack
    {

        public final void a()
        {
            ChattingUI.q(b).a(b.c.e());
            if(a < b.c.d())
                b.c(false);
            if(b.r())
                b.u();
        }

        public final void b()
        {
            a = b.c.d();
        }

        private int a;
        private ChattingUI b;

        _cls17()
        {
            b = ChattingUI.this;
            super();
            a = 0;
        }
    }


    private class _cls18
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i1, long l1)
        {
            Log.e("MicroMsg.ChattingUI", "chatting item clicked");
            com.tencent.mm.ui.chatting.ChattingUI.b(a, i1);
        }

        private ChattingUI a;

        _cls18()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls19
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            a.n();
            a.b.l();
            a.b.n();
            return false;
        }

        private ChattingUI a;

        _cls19()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls11
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.t();
        }

        private ChattingUI a;

        _cls11()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls12
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(ChattingUI.j(a));
        }

        private ChattingUI a;

        _cls12()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls33
        implements Runnable
    {

        public void run()
        {
            int i1 = ChattingUI.j(b).getLastVisiblePosition();
            int j1 = -1 + ChattingUI.j(b).getCount();
            Log.d("MicroMsg.ChattingUI", (new StringBuilder()).append("last visible/adapter=").append(i1).append("/").append(j1).toString());
            if(i1 >= j1 + -1 || a)
                ChattingUI.j(b).setSelection(j1);
        }

        private boolean a;
        private ChattingUI b;

        _cls33(boolean flag)
        {
            b = ChattingUI.this;
            a = flag;
            super();
        }
    }


    private class _cls36
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            ChattingUI.a(b, a);
        }

        private Intent a;
        private ChattingUI b;

        _cls36(Intent intent)
        {
            b = ChattingUI.this;
            a = intent;
            super();
        }
    }


    private class _cls39
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            MsgInfoStorageLogic.d("qqmail");
        }

        private ChattingUI a;

        _cls39()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls40
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            MsgInfo msginfo = MMCore.f().i().a(a.o());
            if(!ChattingUI.s(a).s().equals("medianote"))
                MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDelContactMsg(a.o(), msginfo.c()));
            MsgInfoStorageLogic.d(a.o());
            ChattingUI.y(a);
        }

        private ChattingUI a;

        _cls40()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls41
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            ChatroomMembersLogic.f(a.o());
            ChattingUI.y(a);
            a.finish();
        }

        private ChattingUI a;

        _cls41()
        {
            a = ChattingUI.this;
            super();
        }
    }


    private class _cls13
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/RoomInfoUI);
            if(ChattingUI.p(a))
            {
                intent.putExtra("RoomInfo_Id", a.o());
                intent.putExtra("Is_Chatroom", true);
                a.startActivity(intent);
            } else
            if(ContactStorageLogic.D(a.o()) || ContactStorageLogic.p(a.o()) || ContactStorageLogic.r(a.o()))
            {
                Intent intent1 = new Intent();
                intent1.setClass(a, com/tencent/mm/ui/contact/ContactInfoUI);
                intent1.putExtra("Contact_User", a.o());
                a.startActivity(intent1);
            } else
            {
                intent.putExtra("Single_Chat_Talker", a.o());
                intent.putExtra("Is_Chatroom", false);
                a.startActivity(intent);
            }
        }

        private ChattingUI a;

        _cls13()
        {
            a = ChattingUI.this;
            super();
        }
    }

}
