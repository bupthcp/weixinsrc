// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelmulti;

import com.tencent.mm.algorithm.CodeInfo;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.network.*;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.protocal.ConstantsProtocal;
import com.tencent.mm.protocal.MMProtocalJni;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.OpLogStorage;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelmulti:
//            SyncRespHandler, InitRespHandler, SyncBuilder

public class NetSceneSync extends NetSceneBase
    implements IOnGYNetEnd
{

    public NetSceneSync(int i1)
    {
        g = 0;
        i = false;
        j = false;
        k = 0;
        l = 0;
        m = "";
        o = false;
        h = i1;
        e = new SyncRespHandler(this);
        f = new InitRespHandler(this);
        if(i1 == 7)
            n = true;
        if(MMCore.f().b() && !MMCore.w())
        {
            long l1 = Util.a((Long)MMCore.f().f().a(8196), 0L);
            if(l1 != 0L)
            {
                MMCore.f().f().a(8196, Long.valueOf(0L));
                int j1 = (int)(l1 | (long)a);
                a = j1;
                a = j1 & 0x5f;
            }
        }
        if(i1 == 9)
        {
            a = 8 | a;
            n = true;
        }
        if(i1 == 10)
        {
            a = 0x10 | a;
            n = true;
        }
        if(i1 == 11)
        {
            a = 0x40 | a;
            n = true;
        }
    }

    public NetSceneSync(IOnSceneProgressEnd ionsceneprogressend)
    {
        this(1);
        d = ionsceneprogressend;
    }

    private int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend, byte abyte0[], byte abyte1[], byte abyte2[], long l1)
    {
        Object obj;
        c = ionsceneend;
        boolean flag;
        List list2;
        String s;
        if(Util.h((String)MMCore.f().f().a(8195)).length() <= 0 || Util.a((Integer)MMCore.f().f().a(15)) == 0)
            flag = true;
        else
            flag = false;
        if(!flag) goto _L2; else goto _L1
_L1:
        Log.d("MicroMsg.NetSceneSync", "do init");
        MMReqRespInit mmreqrespinit = new MMReqRespInit();
        if(abyte0 == null || abyte0.length <= 0)
            abyte0 = Util.o(Util.h((String)MMCore.f().f().a(8197)));
        if(abyte1 == null || abyte1.length <= 0)
            abyte1 = Util.o(Util.h((String)MMCore.f().f().a(8198)));
        if(Util.a((Integer)MMCore.f().f().a(16)) != 0 && (abyte0 == null || abyte0.length <= 0))
            mmreqrespinit.f().k(7);
        else
        if(Util.h((String)MMCore.f().f().a(8195)).length() <= 0)
            mmreqrespinit.f().k(3);
        else
            mmreqrespinit.f().k(4);
        ((com.tencent.mm.protocal.MMInit.Req)mmreqrespinit.f()).a(abyte0);
        ((com.tencent.mm.protocal.MMInit.Req)mmreqrespinit.f()).b(abyte1);
        ((com.tencent.mm.protocal.MMInit.Req)mmreqrespinit.f()).a((String)MMCore.f().f().a(2));
        s = LocaleUtil.a();
        ((com.tencent.mm.protocal.MMInit.Req)mmreqrespinit.f()).b(s);
        Log.c("MicroMsg.NetSceneSync", (new StringBuilder()).append("do init, initkey=").append(Util.a(abyte0)).append(", username=").append(((com.tencent.mm.protocal.MMInit.Req)mmreqrespinit.f()).b()).append(", language=").append(s).toString());
        obj = mmreqrespinit;
_L4:
        list2 = k_();
        if(list2.size() <= 0)
            list2.add(new SceneInfo(((IReqResp) (obj)).c()));
        n = false;
        return a(idispatcher, ((IReqResp) (obj)), ((IOnGYNetEnd) (this)));
_L2:
        List list;
        Log.d("MicroMsg.NetSceneSync", "do sync");
        boolean flag1;
        MMReqRespSync mmreqrespsync;
        com.tencent.mm.protocal.MMSync.Req req;
        if(h == 8)
            flag1 = true;
        else
            flag1 = false;
        mmreqrespsync = new MMReqRespSync(flag1);
        ((com.tencent.mm.protocal.MMSync.Req)mmreqrespsync.f()).a(l1);
        req = (com.tencent.mm.protocal.MMSync.Req)mmreqrespsync.f();
        if(abyte2 == null || abyte2.length <= 0)
            abyte2 = Util.o(Util.h((String)MMCore.f().f().a(8195)));
        req.a(abyte2);
        ((com.tencent.mm.protocal.MMSync.Req)mmreqrespsync.f()).a((String)MMCore.f().f().a(2));
        list = a(MMCore.f().g().b());
        if(Util.d(Util.a((Long)MMCore.f().f().a(8211))) >= 300L)
            break; /* Loop/switch isn't completed */
        Log.d("MicroMsg.SyncBuilder", "scene cost report delay");
_L5:
        SyncBuilder.a();
        ((com.tencent.mm.protocal.MMSync.Req)mmreqrespsync.f()).a(list);
        obj = mmreqrespsync;
        if(true) goto _L4; else goto _L3
_L3:
        List list1 = MMCore.g().a(Util.d());
        if(list1 != null && list1.size() > 0)
            list.add(SyncBuilder.a(new com.tencent.mm.storage.OpLogStorage.OpKvStat(list1)));
        MMCore.f().f().a(8211, Long.valueOf(Util.c()));
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    private static List a(List list)
    {
        LinkedList linkedlist = new LinkedList();
        Iterator iterator = list.iterator();
        do
            if(iterator.hasNext())
            {
                com.tencent.mm.storage.OpLogStorage.Operation operation = (com.tencent.mm.storage.OpLogStorage.Operation)iterator.next();
                Log.c("MicroMsg.NetSceneSync", (new StringBuilder()).append("oplog id:").append(operation.a()).toString());
                switch(operation.a())
                {
                default:
                    Log.a("MicroMsg.NetSceneSync", "fromOpLogToCmd: not found cmd");
                    break;

                case 101: // 'e'
                    com.tencent.mm.storage.OpLogStorage.OpAddContact opaddcontact = (com.tencent.mm.storage.OpLogStorage.OpAddContact)operation;
                    com.tencent.mm.protocal.MMSync.CmdModContact cmdmodcontact = new com.tencent.mm.protocal.MMSync.CmdModContact();
                    cmdmodcontact.i(opaddcontact.k());
                    cmdmodcontact.j(opaddcontact.l());
                    cmdmodcontact.k(opaddcontact.m());
                    cmdmodcontact.l(opaddcontact.n());
                    cmdmodcontact.e(opaddcontact.o());
                    cmdmodcontact.f(opaddcontact.p());
                    cmdmodcontact.g(opaddcontact.q());
                    cmdmodcontact.b(opaddcontact.f());
                    cmdmodcontact.c(opaddcontact.g());
                    cmdmodcontact.c(opaddcontact.h());
                    cmdmodcontact.e(opaddcontact.i());
                    cmdmodcontact.b(opaddcontact.j());
                    cmdmodcontact.d(opaddcontact.e());
                    cmdmodcontact.f(opaddcontact.d());
                    cmdmodcontact.g(opaddcontact.c());
                    cmdmodcontact.h(opaddcontact.b());
                    cmdmodcontact.n(opaddcontact.r());
                    cmdmodcontact.l(opaddcontact.s());
                    linkedlist.add(cmdmodcontact);
                    break;

                case 102: // 'f'
                    com.tencent.mm.storage.OpLogStorage.OpDelContact opdelcontact = (com.tencent.mm.storage.OpLogStorage.OpDelContact)operation;
                    com.tencent.mm.protocal.MMSync.CmdDelContact cmddelcontact = new com.tencent.mm.protocal.MMSync.CmdDelContact();
                    cmddelcontact.a(opdelcontact.b());
                    linkedlist.add(cmddelcontact);
                    break;

                case 125: // '}'
                    com.tencent.mm.storage.OpLogStorage.OpInviteFriendOpen opinvitefriendopen = (com.tencent.mm.storage.OpLogStorage.OpInviteFriendOpen)operation;
                    com.tencent.mm.protocal.MMSync.CmdInviteFriendOpen cmdinvitefriendopen = new com.tencent.mm.protocal.MMSync.CmdInviteFriendOpen();
                    cmdinvitefriendopen.a(opinvitefriendopen.c());
                    cmdinvitefriendopen.b(opinvitefriendopen.b());
                    linkedlist.add(cmdinvitefriendopen);
                    break;

                case 128: 
                    com.tencent.mm.storage.OpLogStorage.OpModTXNewsCategory opmodtxnewscategory = (com.tencent.mm.storage.OpLogStorage.OpModTXNewsCategory)operation;
                    com.tencent.mm.protocal.MMSync.CmdModTXNewsCategory cmdmodtxnewscategory = new com.tencent.mm.protocal.MMSync.CmdModTXNewsCategory();
                    cmdmodtxnewscategory.b(opmodtxnewscategory.b());
                    linkedlist.add(cmdmodtxnewscategory);
                    break;

                case 104: // 'h'
                    com.tencent.mm.storage.OpLogStorage.OpModUserInfo opmoduserinfo = (com.tencent.mm.storage.OpLogStorage.OpModUserInfo)operation;
                    com.tencent.mm.protocal.MMSync.CmdModUserInfo cmdmoduserinfo = new com.tencent.mm.protocal.MMSync.CmdModUserInfo();
                    cmdmoduserinfo.f(opmoduserinfo.g());
                    cmdmoduserinfo.e(opmoduserinfo.h());
                    cmdmoduserinfo.f(opmoduserinfo.i());
                    cmdmoduserinfo.g(opmoduserinfo.j());
                    cmdmoduserinfo.g(opmoduserinfo.k());
                    cmdmoduserinfo.h(opmoduserinfo.l());
                    cmdmoduserinfo.h(opmoduserinfo.n());
                    cmdmoduserinfo.a(FileOperation.a(opmoduserinfo.m(), 0, -1));
                    cmdmoduserinfo.d(opmoduserinfo.f());
                    cmdmoduserinfo.e(opmoduserinfo.e());
                    cmdmoduserinfo.b(opmoduserinfo.d());
                    cmdmoduserinfo.c(opmoduserinfo.c());
                    cmdmoduserinfo.d(opmoduserinfo.b());
                    cmdmoduserinfo.k(opmoduserinfo.o());
                    cmdmoduserinfo.j(opmoduserinfo.p());
                    cmdmoduserinfo.m(opmoduserinfo.q());
                    cmdmoduserinfo.k(opmoduserinfo.r());
                    cmdmoduserinfo.n(opmoduserinfo.s());
                    cmdmoduserinfo.l(opmoduserinfo.t());
                    linkedlist.add(cmdmoduserinfo);
                    break;

                case 106: // 'j'
                    com.tencent.mm.storage.OpLogStorage.OpDelChatContact opdelchatcontact = (com.tencent.mm.storage.OpLogStorage.OpDelChatContact)operation;
                    com.tencent.mm.protocal.MMSync.CmdDelChatContact cmddelchatcontact = new com.tencent.mm.protocal.MMSync.CmdDelChatContact();
                    cmddelchatcontact.a(opdelchatcontact.b());
                    linkedlist.add(cmddelchatcontact);
                    break;

                case 107: // 'k'
                    com.tencent.mm.storage.OpLogStorage.OpDelMsg opdelmsg = (com.tencent.mm.storage.OpLogStorage.OpDelMsg)operation;
                    com.tencent.mm.protocal.MMSync.CmdDelMsg cmddelmsg = new com.tencent.mm.protocal.MMSync.CmdDelMsg();
                    cmddelmsg.a(opdelmsg.b());
                    ArrayList arraylist = new ArrayList();
                    arraylist.add(Integer.valueOf(opdelmsg.c()));
                    cmddelmsg.a(arraylist);
                    linkedlist.add(cmddelmsg);
                    break;

                case 108: // 'l'
                    com.tencent.mm.storage.OpLogStorage.OpReport opreport = (com.tencent.mm.storage.OpLogStorage.OpReport)operation;
                    com.tencent.mm.protocal.MMSync.CmdReport cmdreport = new com.tencent.mm.protocal.MMSync.CmdReport();
                    cmdreport.a((new com.tencent.mm.model.ErrLog.Error(opreport.b(), opreport.c(), opreport.d())).toString());
                    linkedlist.add(cmdreport);
                    break;

                case 109: // 'm'
                    com.tencent.mm.storage.OpLogStorage.OpOpenQQMicroBlog opopenqqmicroblog = (com.tencent.mm.storage.OpLogStorage.OpOpenQQMicroBlog)operation;
                    com.tencent.mm.protocal.MMSync.CmdOpenQQMicroBlog cmdopenqqmicroblog = new com.tencent.mm.protocal.MMSync.CmdOpenQQMicroBlog();
                    cmdopenqqmicroblog.a(opopenqqmicroblog.b());
                    linkedlist.add(cmdopenqqmicroblog);
                    break;

                case 110: // 'n'
                    com.tencent.mm.storage.OpLogStorage.OpCloseMicroBlog opclosemicroblog = (com.tencent.mm.storage.OpLogStorage.OpCloseMicroBlog)operation;
                    com.tencent.mm.protocal.MMSync.CmdCloseMicroBlog cmdclosemicroblog = new com.tencent.mm.protocal.MMSync.CmdCloseMicroBlog();
                    cmdclosemicroblog.a(opclosemicroblog.b());
                    linkedlist.add(cmdclosemicroblog);
                    break;

                case 111: // 'o'
                    com.tencent.mm.storage.OpLogStorage.OpModNotifyStatus opmodnotifystatus = (com.tencent.mm.storage.OpLogStorage.OpModNotifyStatus)operation;
                    com.tencent.mm.protocal.MMSync.CmdModNotifyStatus cmdmodnotifystatus = new com.tencent.mm.protocal.MMSync.CmdModNotifyStatus();
                    cmdmodnotifystatus.a(opmodnotifystatus.b());
                    cmdmodnotifystatus.b(opmodnotifystatus.c());
                    linkedlist.add(cmdmodnotifystatus);
                    break;

                case 119: // 'w'
                    com.tencent.mm.storage.OpLogStorage.OpModDisturbSetting opmoddisturbsetting = (com.tencent.mm.storage.OpLogStorage.OpModDisturbSetting)operation;
                    com.tencent.mm.protocal.MMSync.CmdModDisturbSetting cmdmoddisturbsetting = new com.tencent.mm.protocal.MMSync.CmdModDisturbSetting();
                    cmdmoddisturbsetting.a(opmoddisturbsetting.b());
                    cmdmoddisturbsetting.b(opmoddisturbsetting.c());
                    cmdmoddisturbsetting.c(opmoddisturbsetting.d());
                    linkedlist.add(cmdmoddisturbsetting);
                    break;

                case 112: // 'p'
                    com.tencent.mm.storage.OpLogStorage.OpModChatRoomMember opmodchatroommember = (com.tencent.mm.storage.OpLogStorage.OpModChatRoomMember)operation;
                    com.tencent.mm.protocal.MMSync.CmdModChatRoomMember cmdmodchatroommember = new com.tencent.mm.protocal.MMSync.CmdModChatRoomMember();
                    cmdmodchatroommember.d(opmodchatroommember.b());
                    cmdmodchatroommember.e(opmodchatroommember.c());
                    cmdmodchatroommember.h(opmodchatroommember.d());
                    cmdmodchatroommember.g(opmodchatroommember.e());
                    cmdmodchatroommember.c(opmodchatroommember.f());
                    cmdmodchatroommember.i(opmodchatroommember.g());
                    cmdmodchatroommember.j(opmodchatroommember.h());
                    cmdmodchatroommember.k(opmodchatroommember.i());
                    cmdmodchatroommember.e(opmodchatroommember.j());
                    linkedlist.add(cmdmodchatroommember);
                    break;

                case 113: // 'q'
                    com.tencent.mm.storage.OpLogStorage.OpQuitChatRoom opquitchatroom = (com.tencent.mm.storage.OpLogStorage.OpQuitChatRoom)operation;
                    com.tencent.mm.protocal.MMSync.CmdQuitChatRoom cmdquitchatroom = new com.tencent.mm.protocal.MMSync.CmdQuitChatRoom();
                    cmdquitchatroom.b(opquitchatroom.b());
                    cmdquitchatroom.a(opquitchatroom.c());
                    linkedlist.add(cmdquitchatroom);
                    break;

                case 115: // 's'
                    com.tencent.mm.storage.OpLogStorage.OpDelUserDomainEmail opdeluserdomainemail = (com.tencent.mm.storage.OpLogStorage.OpDelUserDomainEmail)operation;
                    com.tencent.mm.protocal.MMSync.CmdDelUserDomainEmail cmddeluserdomainemail = new com.tencent.mm.protocal.MMSync.CmdDelUserDomainEmail();
                    cmddeluserdomainemail.a(opdeluserdomainemail.b());
                    cmddeluserdomainemail.b(opdeluserdomainemail.c());
                    linkedlist.add(cmddeluserdomainemail);
                    break;

                case 114: // 'r'
                    com.tencent.mm.storage.OpLogStorage.OpModChatRoomNotify opmodchatroomnotify = (com.tencent.mm.storage.OpLogStorage.OpModChatRoomNotify)operation;
                    com.tencent.mm.protocal.MMSync.CmdModChatRoomNotify cmdmodchatroomnotify = new com.tencent.mm.protocal.MMSync.CmdModChatRoomNotify();
                    cmdmodchatroomnotify.a(opmodchatroomnotify.b());
                    cmdmodchatroomnotify.b(opmodchatroomnotify.c());
                    linkedlist.add(cmdmodchatroomnotify);
                    break;

                case 118: // 'v'
                    com.tencent.mm.storage.OpLogStorage.OpModChatRoomTopic opmodchatroomtopic = (com.tencent.mm.storage.OpLogStorage.OpModChatRoomTopic)operation;
                    com.tencent.mm.protocal.MMSync.CmdModChatRoomTopic cmdmodchatroomtopic = new com.tencent.mm.protocal.MMSync.CmdModChatRoomTopic();
                    cmdmodchatroomtopic.a(opmodchatroomtopic.b());
                    cmdmodchatroomtopic.b(opmodchatroomtopic.c());
                    linkedlist.add(cmdmodchatroomtopic);
                    break;

                case 120: // 'x'
                    com.tencent.mm.storage.OpLogStorage.OpDeleteBottle opdeletebottle = (com.tencent.mm.storage.OpLogStorage.OpDeleteBottle)operation;
                    com.tencent.mm.protocal.MMSync.CmdDeleteBottle cmddeletebottle = new com.tencent.mm.protocal.MMSync.CmdDeleteBottle();
                    cmddeletebottle.a(opdeletebottle.c());
                    cmddeletebottle.b(opdeletebottle.b());
                    linkedlist.add(cmddeletebottle);
                    break;

                case 116: // 't'
                    com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch opfunctionswitch = (com.tencent.mm.storage.OpLogStorage.OpFunctionSwitch)operation;
                    com.tencent.mm.protocal.MMSync.CmdFunctionSwitch cmdfunctionswitch = new com.tencent.mm.protocal.MMSync.CmdFunctionSwitch();
                    cmdfunctionswitch.c(opfunctionswitch.b());
                    cmdfunctionswitch.b(opfunctionswitch.c());
                    linkedlist.add(cmdfunctionswitch);
                    break;

                case 117: // 'u'
                    com.tencent.mm.storage.OpLogStorage.OpUpdateStat opupdatestat = (com.tencent.mm.storage.OpLogStorage.OpUpdateStat)operation;
                    com.tencent.mm.protocal.MMSync.CmdUpdateStat cmdupdatestat = new com.tencent.mm.protocal.MMSync.CmdUpdateStat();
                    cmdupdatestat.b(opupdatestat.b());
                    linkedlist.add(cmdupdatestat);
                    break;

                case 121: // 'y'
                    com.tencent.mm.storage.OpLogStorage.OpModUserImg opmoduserimg = (com.tencent.mm.storage.OpLogStorage.OpModUserImg)operation;
                    com.tencent.mm.protocal.MMSync.CmdModUserImg cmdmoduserimg = new com.tencent.mm.protocal.MMSync.CmdModUserImg();
                    byte abyte0[] = FileOperation.a(opmoduserimg.c(), 0, -1);
                    cmdmoduserimg.b(opmoduserimg.b());
                    cmdmoduserimg.c(abyte0.length);
                    cmdmoduserimg.a(abyte0);
                    cmdmoduserimg.a(opmoduserimg.d());
                    linkedlist.add(cmdmoduserimg);
                    break;

                case 122: // 'z'
                    com.tencent.mm.storage.OpLogStorage.OpPsmStat oppsmstat = (com.tencent.mm.storage.OpLogStorage.OpPsmStat)operation;
                    com.tencent.mm.protocal.MMSync.CmdPsmStat cmdpsmstat = new com.tencent.mm.protocal.MMSync.CmdPsmStat();
                    cmdpsmstat.b(oppsmstat.b());
                    cmdpsmstat.a(oppsmstat.c());
                    linkedlist.add(cmdpsmstat);
                    break;

                case 123: // '{'
                    linkedlist.add(SyncBuilder.a((com.tencent.mm.storage.OpLogStorage.OpKvStat)operation));
                    break;

                case 124: // '|'
                    com.tencent.mm.storage.OpLogStorage.OpTheme optheme = (com.tencent.mm.storage.OpLogStorage.OpTheme)operation;
                    com.tencent.mm.protocal.MMSync.CmdTheme cmdtheme = new com.tencent.mm.protocal.MMSync.CmdTheme();
                    cmdtheme.b(optheme.b());
                    cmdtheme.a(optheme.c());
                    linkedlist.add(cmdtheme);
                    break;

                case 127: // '\177'
                    com.tencent.mm.storage.OpLogStorage.OpMediaNote opmedianote = (com.tencent.mm.storage.OpLogStorage.OpMediaNote)operation;
                    com.tencent.mm.protocal.MMSync.CmdMediaNote cmdmedianote = new com.tencent.mm.protocal.MMSync.CmdMediaNote();
                    cmdmedianote.b(opmedianote.b());
                    cmdmedianote.c(opmedianote.c());
                    linkedlist.add(cmdmedianote);
                    break;

                case 10000: 
                    com.tencent.mm.storage.OpLogStorage.OpCommonProtobuf opcommonprotobuf = (com.tencent.mm.storage.OpLogStorage.OpCommonProtobuf)operation;
                    com.tencent.mm.protocal.MMSync.CmdCommProtoBuf cmdcommprotobuf = new com.tencent.mm.protocal.MMSync.CmdCommProtoBuf(opcommonprotobuf.b());
                    cmdcommprotobuf.a(opcommonprotobuf.c());
                    linkedlist.add(cmdcommprotobuf);
                    break;
                }
            } else
            {
                return linkedlist;
            }
        while(true);
    }

    public static void a(int i1)
    {
        q.remove(Integer.valueOf(i1));
    }

    public static void a(int i1, IMessageExtension imessageextension)
    {
        q.put(Integer.valueOf(i1), imessageextension);
    }

    public static void a(IOnNewMsgNotify ionnewmsgnotify)
    {
        if(!p.contains(ionnewmsgnotify))
            p.add(ionnewmsgnotify);
    }

    public static void b(IOnNewMsgNotify ionnewmsgnotify)
    {
        p.remove(ionnewmsgnotify);
    }

    static List j()
    {
        return p;
    }

    static HashMap k()
    {
        return q;
    }

    private static void n()
    {
        Log.d("MicroMsg.NetSceneSync", (new StringBuilder()).append("sync or init end: reset selector : now = ").append(a).append(" default = ").append(7).toString());
        a = 7;
    }

    public final int a(IDispatcher idispatcher, IOnSceneEnd ionsceneend)
    {
        return a(idispatcher, ionsceneend, ConstantsProtocal.d, ConstantsProtocal.e, ConstantsProtocal.c, a);
    }

    protected final com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus a(IReqResp ireqresp)
    {
        return com.tencent.mm.modelbase.NetSceneBase.SecurityCheckStatus.b;
    }

    protected final void a()
    {
        super.a();
        e.a();
        f.a();
    }

    public final void a(int i1, int j1, int k1, String s, IReqResp ireqresp)
    {
        if(ireqresp != null) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.NetSceneSync", "rr null, skip resp");
_L4:
        return;
_L2:
        o = true;
        if(ireqresp.c() == 38)
        {
            List list = k_();
            if(list.size() > 0)
            {
                SceneInfo sceneinfo = (SceneInfo)list.get(0);
                if(sceneinfo != null)
                {
                    sceneinfo.b(System.currentTimeMillis());
                    sceneinfo.d(ireqresp.f().z() + ireqresp.b().I());
                }
            }
            OpLogStorage oplogstorage = MMCore.f().g();
            boolean flag;
            if(j1 == 0 && k1 == 0)
                flag = true;
            else
                flag = false;
            oplogstorage.a(flag);
            if(j1 != 0 || k1 != 0)
            {
                if(e.a != null)
                {
                    k = j1;
                    l = k1;
                    m = s;
                } else
                {
                    c.a(j1, k1, s, this);
                }
            } else
            {
                com.tencent.mm.protocal.MMSync.Resp resp1 = (com.tencent.mm.protocal.MMSync.Resp)ireqresp.b();
                byte abyte0[] = ((com.tencent.mm.protocal.MMSync.Req)ireqresp.f()).e();
                byte abyte1[] = resp1.e();
                if(abyte0 == null || abyte0.length <= 0)
                    Log.d("MicroMsg.NetSceneSync", "empty old key, use new key");
                else
                if(abyte1 == null || abyte1.length <= 0)
                {
                    Log.a("MicroMsg.NetSceneSync", "newKey is null");
                    abyte1 = null;
                } else
                {
                    PByteArray pbytearray = new PByteArray();
                    if(!MMProtocalJni.mergeSyncKey(abyte0, abyte1, pbytearray))
                    {
                        Log.a("MicroMsg.NetSceneSync", "merge key failed");
                        abyte1 = null;
                    } else
                    {
                        abyte1 = pbytearray.value;
                    }
                }
                if(abyte1 == null || abyte1.length <= 0)
                {
                    resp1.e();
                    Log.b("MicroMsg.NetSceneSync", "merge key failed, use server side instead");
                } else
                {
                    resp1.a(abyte1);
                    e.b(resp1);
                }
            }
        } else
        if(j1 != 0 || k1 != 0)
        {
            if(f.a != null)
            {
                k = j1;
                l = k1;
                m = s;
            } else
            {
                c.a(j1, k1, s, this);
            }
        } else
        {
            com.tencent.mm.protocal.MMInit.Resp resp = (com.tencent.mm.protocal.MMInit.Resp)ireqresp.b();
            Log.c("MicroMsg.NetSceneSync", (new StringBuilder()).append("resp initkey=").append(Util.a(resp.g())).append(", maxInitKey=").append(Util.a(resp.h())).toString());
            if(!f.b(resp))
            {
                Log.b("MicroMsg.NetSceneSync", "init done");
                j = true;
            } else
            if(a(m(), c, resp.g(), resp.h(), ConstantsProtocal.c, a) == -1)
            {
                Log.a("MicroMsg.NetSceneSync", "parally processing init failed, mark resp as finished");
                resp.b(0);
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    protected final void a(com.tencent.mm.protocal.MMInit.Resp resp)
    {
        boolean flag = false;
        MMCore.f().f().a(8197, Util.c(resp.g()));
        MMCore.f().f().a(8198, Util.c(resp.h()));
        MMCore.f().f().a(16, Integer.valueOf(flag));
        MMCore.f().e().b(g);
        MMCore.f().e().a(g);
        if(d != null)
            d.a(resp.f(), 100, this);
        if(f.a(resp))
        {
            Log.d("MicroMsg.NetSceneSync", "waiting for next init resp");
        } else
        {
            Log.d("MicroMsg.NetSceneSync", "all resp handled");
            if(j)
            {
                Log.c("MicroMsg.NetSceneSync", (new StringBuilder()).append(CodeInfo.a()).append("set sync_selector equal last init selector :").append(resp.i()).toString());
                if(resp.h() != null || resp.h().length > 0)
                    flag = true;
                Assert.assertTrue(flag);
                MMCore.f().f().a(8196, Long.valueOf(resp.i()));
                MMCore.f().f().a(8195, Util.c(resp.h()));
                MMCore.f().f().a(8197, "");
                MMCore.f().f().a(8198, "");
                MMCore.f().f().a(15, Integer.valueOf(1));
                i = true;
                n();
            }
            c.a(k, l, m, this);
        }
    }

    protected final void a(com.tencent.mm.protocal.MMSync.Resp resp)
    {
        MMCore.f().f().a(8195, Util.c(resp.e()));
        MMCore.f().f().a(8196, Long.valueOf(resp.d()));
        MMCore.f().e().b(g);
        MMCore.f().e().a(g);
        if(e.a(resp))
            a(m(), c);
        else
        if(n)
        {
            Log.c("MicroMsg.NetSceneSync", "new notify pending, sync now");
            a(m(), c);
        } else
        {
            n();
            c.a(k, l, m, this);
        }
    }

    protected final boolean a(NetSceneBase netscenebase)
    {
        boolean flag = false;
        if(netscenebase instanceof NetSceneSync) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        NetSceneSync netscenesync = (NetSceneSync)netscenebase;
        if(!netscenesync.o && n && Util.f(netscenesync.b) > 0x3a980L)
        {
            Log.a("MicroMsg.NetSceneSync", "old not busy and notified, maybe cancel old scene");
            flag = true;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final int b()
    {
        return 38;
    }

    protected final int c()
    {
        return 50;
    }

    public final boolean d()
    {
        return i;
    }

    protected final void g()
    {
        Log.b("MicroMsg.NetSceneSync", "resp canceled, synckey not set");
        if(MMCore.f().b())
        {
            MMCore.f().e().b(g);
            MMCore.f().e().a(g);
        }
    }

    protected final void h()
    {
        g = MMCore.f().e().b();
    }

    public final boolean h_()
    {
        return super.h_();
    }

    protected final void i()
    {
        Log.b("MicroMsg.NetSceneSync", "resp canceled, initkey not set");
        if(MMCore.f().b())
        {
            MMCore.f().e().b(g);
            MMCore.f().e().a(g);
        }
    }

    protected final void j_()
    {
        g = MMCore.f().e().b();
    }

    protected static int a = 7;
    private static boolean n = false;
    private static List p = new ArrayList();
    private static HashMap q = new HashMap();
    private IOnSceneEnd c;
    private IOnSceneProgressEnd d;
    private final SyncRespHandler e;
    private final InitRespHandler f;
    private int g;
    private final int h;
    private boolean i;
    private boolean j;
    private int k;
    private int l;
    private String m;
    private boolean o;


    private class MMReqRespInit extends MMReqRespBase
    {

        protected final com.tencent.mm.protocal.MMBase.Req a()
        {
            return a;
        }

        public final com.tencent.mm.protocal.MMBase.Resp b()
        {
            return b;
        }

        public final int c()
        {
            return 37;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/newinit";
        }

        private final com.tencent.mm.protocal.MMInit.Req a = new com.tencent.mm.protocal.MMInit.Req();
        private final com.tencent.mm.protocal.MMInit.Resp b = new com.tencent.mm.protocal.MMInit.Resp();

        public MMReqRespInit()
        {
        }
    }


    private class MMReqRespSync extends MMReqRespBase
    {

        public final com.tencent.mm.protocal.MMBase.Req a()
        {
            return a;
        }

        public final com.tencent.mm.protocal.MMBase.Resp b()
        {
            return b;
        }

        public final int c()
        {
            return 38;
        }

        public final String d()
        {
            return "/cgi-bin/micromsg-bin/newsync";
        }

        private final com.tencent.mm.protocal.MMSync.Req a = new com.tencent.mm.protocal.MMSync.Req();
        private final com.tencent.mm.protocal.MMSync.Resp b = new com.tencent.mm.protocal.MMSync.Resp();
        private final boolean c;

        public MMReqRespSync(boolean flag)
        {
            c = flag;
        }
    }

}
