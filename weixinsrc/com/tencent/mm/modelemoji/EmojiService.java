// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelemoji;

import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;
import java.util.*;

// Referenced classes of package com.tencent.mm.modelemoji:
//            EmojiInfo, EmojiInfoStorage, NetSceneUploadEmoji, NetSceneDownloadEmoji

public class EmojiService
    implements IOnSceneEnd
{

    public EmojiService()
    {
        b = false;
        c = false;
        d = new LinkedList();
        e = new LinkedList();
        f = new MTimerHandler(new _cls1(), false);
        MMCore.g().a(62, this);
        MMCore.g().a(63, this);
    }

    private static long a(EmojiExtension.EmojiMsgInfo emojimsginfo, EmojiInfo emojiinfo)
    {
        boolean flag = false;
        MsgInfo msginfo = new MsgInfo();
        msginfo.c(47);
        msginfo.a(emojimsginfo.a);
        msginfo.e(flag);
        msginfo.c(emojiinfo.f());
        String s = emojimsginfo.b;
        if(!emojiinfo.d() && !emojiinfo.e())
            flag = true;
        msginfo.b(com.tencent.mm.model.MsgInfoStorageLogic.EmojiContent.a(s, 0L, flag));
        msginfo.b(MsgInfoStorageLogic.c(msginfo.h()));
        msginfo.d(3);
        long l = MMCore.f().i().a(msginfo);
        MsgInfo msginfo1 = MMCore.f().i().a(l);
        if(msginfo1 != null && a != null)
            a.a(msginfo1);
        return l;
    }

    public static void a(IOnNewMsgNotify ionnewmsgnotify)
    {
        if(a == null)
            a = ionnewmsgnotify;
    }

    static void a(EmojiService emojiservice)
    {
        List list = MMCore.f().i().b();
        if(list.size() != 0)
        {
            Iterator iterator = list.iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                MsgInfo msginfo = (MsgInfo)iterator.next();
                EmojiInfo emojiinfo = MMCore.f().l().d(msginfo.j());
                com.tencent.mm.model.MsgInfoStorageLogic.EmojiContent emojicontent = com.tencent.mm.model.MsgInfoStorageLogic.EmojiContent.a(msginfo.i());
                if(emojicontent.c() > 0L)
                    emojiservice.d.add(emojiservice. new UploadEmojiInfo(msginfo.b(), msginfo.h(), emojiinfo, (new StringBuilder()).append(emojicontent.c()).append("").toString()));
            } while(true);
            if(!emojiservice.b && emojiservice.d.size() > 0)
            {
                UploadEmojiInfo uploademojiinfo = (UploadEmojiInfo)emojiservice.d.get(0);
                MMCore.g().b(new NetSceneUploadEmoji(uploademojiinfo.d, uploademojiinfo.b, uploademojiinfo.c));
            }
        }
    }

    private void c()
    {
        c = false;
        b = false;
        d.clear();
        e.clear();
    }

    public final void a()
    {
        f.a(10L);
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        if(!(netscenebase instanceof NetSceneUploadEmoji)) goto _L2; else goto _L1
_L1:
        if(d.size() <= 0) goto _L4; else goto _L3
_L3:
        UploadEmojiInfo uploademojiinfo = (UploadEmojiInfo)d.remove(0);
        byte byte0 = 2;
        if(i != 0 || j != 0)
            byte0 = 5;
        MsgInfo msginfo = MMCore.f().i().a(uploademojiinfo.a);
        if(msginfo != null)
        {
            msginfo.d(byte0);
            MMCore.f().i().a(uploademojiinfo.a, msginfo);
        }
        if(d.size() <= 0) goto _L4; else goto _L5
_L5:
        UploadEmojiInfo uploademojiinfo1 = (UploadEmojiInfo)d.get(0);
        MMCore.g().b(new NetSceneUploadEmoji(uploademojiinfo1.d, uploademojiinfo1.b, uploademojiinfo1.c));
_L7:
        return;
_L4:
        b = false;
        continue; /* Loop/switch isn't completed */
_L2:
        if(e.size() > 0)
        {
            EmojiExtension.EmojiMsgInfo emojimsginfo = (EmojiExtension.EmojiMsgInfo)e.remove(0);
            if(i == 0 && j == 0)
                a(emojimsginfo, ((NetSceneDownloadEmoji)netscenebase).d());
            do
            {
                if(e.size() <= 0)
                    break;
                EmojiExtension.EmojiMsgInfo emojimsginfo2 = (EmojiExtension.EmojiMsgInfo)e.get(0);
                EmojiInfo emojiinfo1 = MMCore.f().l().d(emojimsginfo2.d);
                if(emojiinfo1 == null)
                    break;
                a(emojimsginfo2, emojiinfo1);
                e.remove(0);
            } while(true);
            if(e.size() > 0)
            {
                EmojiExtension.EmojiMsgInfo emojimsginfo1 = (EmojiExtension.EmojiMsgInfo)e.get(0);
                EmojiInfo emojiinfo = MMCore.f().l().a(emojimsginfo1.d, emojimsginfo1.c, EmojiInfo.f, EmojiInfo.h, emojimsginfo1.f);
                MMCore.g().b(new NetSceneDownloadEmoji(emojiinfo));
                continue; /* Loop/switch isn't completed */
            }
        }
        c = false;
        if(true) goto _L7; else goto _L6
_L6:
    }

    public final void a(EmojiExtension.EmojiMsgInfo emojimsginfo)
    {
        if(c) goto _L2; else goto _L1
_L1:
        EmojiInfo emojiinfo1 = MMCore.f().l().d(emojimsginfo.d);
        if(emojiinfo1 == null || !emojiinfo1.b()) goto _L2; else goto _L3
_L3:
        a(emojimsginfo, emojiinfo1);
_L5:
        return;
_L2:
        e.add(emojimsginfo);
        if(!c)
        {
            c = true;
            EmojiInfo emojiinfo = MMCore.f().l().a(emojimsginfo.d, emojimsginfo.c, EmojiInfo.f, emojimsginfo.e, emojimsginfo.f);
            MMCore.g().b(new NetSceneDownloadEmoji(emojiinfo));
        }
        if(true) goto _L5; else goto _L4
_L4:
    }

    public final void a(String s, EmojiInfo emojiinfo, MsgInfo msginfo)
    {
        if(!Util.i(s) && emojiinfo != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        long l2;
        long l3;
        long l = System.currentTimeMillis();
        if(msginfo != null)
            break; /* Loop/switch isn't completed */
        MsgInfo msginfo1 = new MsgInfo();
        msginfo1.c(47);
        msginfo1.a(s);
        msginfo1.e(1);
        String s1 = ConfigStorageLogic.b();
        boolean flag;
        long l1;
        if(!emojiinfo.d() && !emojiinfo.e())
            flag = true;
        else
            flag = false;
        msginfo1.b(com.tencent.mm.model.MsgInfoStorageLogic.EmojiContent.a(s1, l, flag));
        msginfo1.c(emojiinfo.f());
        msginfo1.b(MsgInfoStorageLogic.c(msginfo1.h()));
        l1 = MMCore.f().i().a(msginfo1);
        l2 = l;
        l3 = l1;
_L5:
        Log.c("MicroMsg.EmojiService", (new StringBuilder()).append("NetSceneUploadEmoji: msgId = ").append(l3).toString());
        d.add(new UploadEmojiInfo(l3, s, emojiinfo, (new StringBuilder()).append("").append(l2).toString()));
        if(!b || d.size() == 1)
        {
            b = true;
            MMCore.g().b(new NetSceneUploadEmoji((new StringBuilder()).append(l2).append("").toString(), s, emojiinfo));
        }
        if(true) goto _L1; else goto _L3
_L3:
        com.tencent.mm.model.MsgInfoStorageLogic.EmojiContent emojicontent;
        l3 = msginfo.b();
        emojicontent = com.tencent.mm.model.MsgInfoStorageLogic.EmojiContent.a(msginfo.i());
        if(emojicontent.c() == 0L) goto _L1; else goto _L4
_L4:
        l2 = emojicontent.c();
          goto _L5
    }

    public final void b()
    {
        c();
    }

    protected void finalize()
    {
        MMCore.g().b(62, this);
        MMCore.g().b(63, this);
        c();
        super.finalize();
    }

    private static IOnNewMsgNotify a = null;
    private boolean b;
    private boolean c;
    private List d;
    private List e;
    private MTimerHandler f;


    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            EmojiService.a(a);
            return false;
        }

        private EmojiService a;

        _cls1()
        {
            a = EmojiService.this;
            super();
        }
    }


    private class UploadEmojiInfo
    {

        long a;
        String b;
        EmojiInfo c;
        String d;
        private EmojiService e;

        public UploadEmojiInfo(long l, String s, EmojiInfo emojiinfo, String s1)
        {
            e = EmojiService.this;
            super();
            a = l;
            b = s;
            c = emojiinfo;
            d = s1;
        }
    }

}
