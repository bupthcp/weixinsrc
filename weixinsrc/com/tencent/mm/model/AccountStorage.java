// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import android.os.Environment;
import android.os.Handler;
import com.tencent.mm.algorithm.*;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelavatar.HDHeadImgInfoStorage;
import com.tencent.mm.modelavatar.ImgFlagStorage;
import com.tencent.mm.modelbottle.BottleInfoStorage;
import com.tencent.mm.modelemoji.EmojiInfoStorage;
import com.tencent.mm.modelfriend.AddrUploadStorage;
import com.tencent.mm.modelfriend.FacebookFriendStorage;
import com.tencent.mm.modelfriend.FriendExtStorage;
import com.tencent.mm.modelfriend.InviteFriendOpenStorage;
import com.tencent.mm.modelfriend.QQGroupStorage;
import com.tencent.mm.modelfriend.QQListStorage;
import com.tencent.mm.modelgetcontact.GetContactInfoStorage;
import com.tencent.mm.modelgetcontact.GetContactService;
import com.tencent.mm.modelgetvuserinfo.VUserInfoStorage;
import com.tencent.mm.modelimage.ImgInfoStorage;
import com.tencent.mm.modelpackage.ChattingBgInfoStorage;
import com.tencent.mm.modelpackage.PackageInfoStorage;
import com.tencent.mm.modelqmsg.QContactStorage;
import com.tencent.mm.modelqrcode.QRCodeStorage;
import com.tencent.mm.modelshake.ShakeItemStorage;
import com.tencent.mm.modelstat.NetStatStorage;
import com.tencent.mm.modeltheme.ThemeInfoStorage;
import com.tencent.mm.modeltmsg.TContactStorage;
import com.tencent.mm.modelverify.VerifyContactStorage;
import com.tencent.mm.modelvideo.VideoInfoStorage;
import com.tencent.mm.modelvoice.VoiceStorage;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.plugin.album.model.*;
import com.tencent.mm.plugin.masssend.model.MasSendInfoStorage;
import com.tencent.mm.plugin.readerapp.model.ReaderAppInfoStorage;
import com.tencent.mm.protocal.*;
import com.tencent.mm.storage.*;
import com.tencent.mm.storagebase.SqliteDB;
import com.tencent.mm.ui.contact.*;
import java.io.File;
import java.io.IOException;

// Referenced classes of package com.tencent.mm.model:
//            AccountNotReadyException, ErrLog, MMCore

public class AccountStorage
{

    public AccountStorage(String s1, IEvent ievent)
    {
        Q = 0;
        R = s1;
        V = ievent;
    }

    static ConfigStorage a(AccountStorage accountstorage)
    {
        return accountstorage.a;
    }

    static boolean ab()
    {
        return ac();
    }

    private static boolean ac()
    {
        boolean flag = false;
        boolean flag1;
        if(!Environment.getExternalStorageState().equals("mounted"))
            break MISSING_BLOCK_LABEL_34;
        flag1 = (new File(ConstantsStorage.a)).canWrite();
        if(flag1)
            flag = true;
_L2:
        return flag;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private String ad()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return (new StringBuilder()).append(S).append("voice/").toString();
    }

    private String ae()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return (new StringBuilder()).append(S).append("video/").toString();
    }

    private String af()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return (new StringBuilder()).append(S).append("theme/").toString();
    }

    private String ag()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return (new StringBuilder()).append(S).append("package/").toString();
    }

    static ErrLog b(AccountStorage accountstorage)
    {
        return accountstorage.U;
    }

    public static void b(int i1)
    {
        if((i1 & 1) != 0)
            ContactWidgetQQMail.b();
        if((i1 & 2) != 0)
            ContactWidgetTMessage.b();
        if((i1 & 0x20) != 0)
            ContactWidgetQMessage.b();
        if((i1 & 0x40) != 0)
            ContactWidgetFloatBottle.b();
        if((i1 & 0x80) != 0)
            ContactWidgetQQSync.b();
        if((i1 & 0x100) != 0)
            ContactWidgetShake.b();
        if((i1 & 0x200) != 0)
            ContactWidgetLBS.b();
        if((i1 & 0x10) != 0)
            ContactWidgetMediaNote.b();
        if((i1 & 0x4000) != 0)
            ContactWidgetReaderAppNews.b();
        if((0x40000 & i1) != 0)
            ContactWidgetReaderAppWeibo.b();
    }

    static OpLogStorage c(AccountStorage accountstorage)
    {
        return accountstorage.g;
    }

    static ContactStorage d(AccountStorage accountstorage)
    {
        return accountstorage.b;
    }

    public final QRCodeStorage A()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return v;
    }

    public final ImgFlagStorage B()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return w;
    }

    public final HDHeadImgInfoStorage C()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return x;
    }

    public final QContactStorage D()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return z;
    }

    public final FriendExtStorage E()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return o;
    }

    public final TContactStorage F()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return A;
    }

    public final NetStatStorage G()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return D;
    }

    public final BottleInfoStorage H()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return B;
    }

    public final ShakeItemStorage I()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return C;
    }

    public final AlbumInfoStorage J()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return J;
    }

    public final AlbumExtStorage K()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return K;
    }

    public final AlbumImgStorage L()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return L;
    }

    public final String M()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return (new StringBuilder()).append(S).append("image/").toString();
    }

    public final String N()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return (new StringBuilder()).append(S).append("emoji/").toString();
    }

    public final String O()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return (new StringBuilder()).append(S).append("mailapp/").toString();
    }

    public final InviteFriendOpenStorage P()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return F;
    }

    public final ThemeInfoStorage Q()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return E;
    }

    public final VUserInfoStorage R()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return G;
    }

    public final com.tencent.mm.modellocation.LocationLogic.LocationServer S()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return O;
    }

    public final PackageInfoStorage T()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return H;
    }

    public final AlbumCommentStorage U()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return N;
    }

    public final ChattingBgInfoStorage V()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return I;
    }

    public final ErrLog W()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return U;
    }

    public final String X()
    {
        return T;
    }

    public final void Y()
    {
        Q = 0;
        Log.b("MicroMsg.AccountStorage", "account storage reset");
    }

    public final void Z()
    {
        if(e != null)
            e.a();
        if(u != null)
            u.a();
        if(b != null)
            b.a();
        if(w != null)
            w.a();
    }

    public final int a()
    {
        return Q;
    }

    public final void a(int i1)
    {
        if(Q != i1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(V != null)
            V.a();
        Log.c("MicroMsg.AccountStorage", (new StringBuilder()).append("has set uin:").append(i1).toString());
        Q = i1;
        String s1 = MD5.a((new StringBuilder()).append("mm").append(i1).toString().getBytes());
        S = (new StringBuilder()).append(R).append(s1).append("/").toString();
        T = (new StringBuilder()).append("/data/data/com.tencent.mm/MicroMsg/").append(s1).append("/").toString();
        String s2 = (new StringBuilder()).append(T).append("MicroMsg.db").toString();
        File file = new File(T);
        if(!file.exists())
        {
            file.mkdirs();
            if(!T.equalsIgnoreCase(S))
                FileOperation.a(new File(S));
        }
        File file1 = new File(S);
        if(!file1.exists())
            file1.mkdir();
        File file2 = new File(M());
        if(!file2.exists())
            file2.mkdir();
        File file3 = new File(N());
        if(!file3.exists())
            file3.mkdir();
        File file4 = new File(O());
        if(!file4.exists())
            file4.mkdir();
        File file5 = new File(ad());
        if(!file5.exists())
            file5.mkdir();
        File file6 = new File(ae());
        if(!file6.exists())
            file6.mkdir();
        File file7 = new File(af());
        if(!file7.exists())
            file7.mkdir();
        File file8 = new File(ag());
        if(!file8.exists())
            file8.mkdir();
        if(ac() && R.equals(ConstantsStorage.b))
            (new MoveDataFiles(T, S)).start();
        File file9 = new File((new StringBuilder()).append(M()).append(".nomedia").toString());
        File file10;
        File file11;
        File file12;
        SqliteDB sqlitedb;
        int j1;
        int k1;
        boolean flag;
        int l1;
        if(!file9.exists())
            try
            {
                file9.createNewFile();
            }
            catch(IOException ioexception3) { }
        file10 = new File((new StringBuilder()).append(ad()).append(".nomedia").toString());
        if(!file10.exists())
            try
            {
                file10.createNewFile();
            }
            catch(IOException ioexception2) { }
        file11 = new File((new StringBuilder()).append(ae()).append(".nomedia").toString());
        if(!file11.exists())
            try
            {
                file11.createNewFile();
            }
            catch(IOException ioexception1) { }
        file12 = new File((new StringBuilder()).append(ag()).append(".nomedia").toString());
        if(!file12.exists())
            try
            {
                file12.createNewFile();
            }
            catch(IOException ioexception) { }
        P = new SqliteDB();
        if(!P.a(s2))
            throw new AccountNotReadyException();
        if(u != null)
            u.b();
        a = new ConfigStorage(P);
        g = new OpLogStorage(S);
        b = new ContactStorage(P);
        c = new MsgInfoStorage(P);
        d = new ConversationStorage(P);
        c.a(d);
        j = new RoleStorage(P);
        e = new ImgInfoStorage(P, M());
        f = new EmojiInfoStorage(P, N());
        m = new ChatroomMembersStorage(P);
        r = new com.tencent.mm.modelavatar.AvatarLogic.AvatarSerivce();
        s = new GetContactService();
        t = new GetContactInfoStorage(P);
        u = new AvatarStorage(M());
        v = new QRCodeStorage(M());
        w = new ImgFlagStorage(P);
        sqlitedb = P;
        M();
        x = new HDHeadImgInfoStorage(sqlitedb);
        k = new VoiceStorage(P, ad());
        l = new VideoInfoStorage(P, ae());
        q = new MasSendInfoStorage(P);
        h = new QQListStorage(P);
        i = new QQGroupStorage(P);
        n = new AddrUploadStorage(P);
        o = new FriendExtStorage(P);
        p = new VerifyContactStorage(P);
        B = new BottleInfoStorage(P);
        C = new ShakeItemStorage(P);
        D = new NetStatStorage(P, T);
        F = new InviteFriendOpenStorage(P);
        G = new VUserInfoStorage(P, M());
        A = new TContactStorage(P);
        z = new QContactStorage(P);
        H = new PackageInfoStorage(P, ag());
        I = new ChattingBgInfoStorage(P);
        E = new ThemeInfoStorage(P, af());
        y = new ReaderAppInfoStorage(P);
        M = new FacebookFriendStorage(P);
        O = new com.tencent.mm.modellocation.LocationLogic.LocationServer();
        if(V != null)
            V.c();
        U = ErrLog.a("/data/data/com.tencent.mm/MicroMsg/errLog.cfg", new _cls1());
        j1 = Util.a((Integer)a.a(14));
        k1 = ConstantsProtocal.b;
        if(k1 == j1)
            flag = false;
        else
        if(k1 > 0x22000000 && j1 <= 0x22000000)
            flag = true;
        else
        if(k1 > 0x22020028 && j1 <= 0x22020028)
            flag = true;
        else
            flag = false;
        l1 = P.b();
        if(flag)
        {
            a.a(8197, "");
            a.a(15, Integer.valueOf(0));
        }
        if(j1 != k1)
        {
            Log.b("MicroMsg.AccountStorage", (new StringBuilder()).append("account storage version changed from ").append(Integer.toHexString(j1)).append(" to ").append(Integer.toHexString(k1)).append(", init=").append(flag).toString());
            a.a(14, Integer.valueOf(k1));
            MMCore.f().f().a(30, Boolean.valueOf(false));
            MMCore.f().f().a(31, Boolean.valueOf(false));
            a.a(0x85ffec5f, Boolean.valueOf(true));
            a.a(0x85ffec60, Boolean.valueOf(true));
            a.a(0x85ffec61, Boolean.valueOf(true));
            a.a(0x85ffec62, Boolean.valueOf(true));
            a.a(0x85ffec63, Boolean.valueOf(true));
            a.a(0x85ffec64, Boolean.valueOf(true));
            a.a(39, Boolean.valueOf(true));
            (new Handler()).post(new _cls2());
        } else
        {
            MMEntryLock.a("show_whatsnew");
        }
        P.b(l1);
        P.a(l1);
        if(V != null)
            V.b();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final void a(com.tencent.mm.protocal.MMProfile.Resp resp)
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        int i1 = P.b();
        if(a != null)
        {
            a.a(2, resp.g());
            a.a(42, resp.b());
            a.a(9, Integer.valueOf(resp.j()));
            a.a(4, resp.h());
            a.a(5, resp.k());
            a.a(6, resp.l());
            a.a(7, Integer.valueOf(resp.m()));
            a.a(21, resp.p());
            a.a(22, resp.q());
            a.a(17, Integer.valueOf(resp.v()));
            a.a(25, Integer.valueOf(resp.w()));
            a.a(1, resp.f());
            a.a(29, resp.i());
            a.a(34, Integer.valueOf(resp.D()));
            a.a(0xa4775e22, resp.G());
            Log.d("MicroMsg.AccountStorage", "update user profile:");
            Log.d("MicroMsg.AccountStorage", (new StringBuilder()).append("|--username = ").append(resp.g()).toString());
            Log.d("MicroMsg.AccountStorage", (new StringBuilder()).append("|--nickname = ").append(resp.h()).toString());
            Log.d("MicroMsg.AccountStorage", (new StringBuilder()).append("|--qquin    = ").append(UIN.a((new StringBuilder()).append("").append(resp.j()).toString())).toString());
            Log.d("MicroMsg.AccountStorage", (new StringBuilder()).append("|--email    = ").append(resp.k()).toString());
            Log.d("MicroMsg.AccountStorage", (new StringBuilder()).append("|--mobile   = ").append(resp.l()).toString());
            Log.d("MicroMsg.AccountStorage", (new StringBuilder()).append("|--fsUrl   = ").append(resp.i()).toString());
            Log.d("MicroMsg.AccountStorage", (new StringBuilder()).append("|--status   = ").append(MMProfile.a(resp.m())).toString());
            Log.d("MicroMsg.AccountStorage", (new StringBuilder()).append("|--pushmail = ").append(com.tencent.mm.protocal.MMSync.CmdFunctionSwitch.d(resp.v())).toString());
            Log.d("MicroMsg.AccountStorage", (new StringBuilder()).append("`--sendcard = ").append(MMSendCard.a(resp.w())).toString());
            Log.d("MicroMsg.AccountStorage", (new StringBuilder()).append("|--qqmail = ").append(resp.G()).toString());
        }
        P.b(i1);
        P.a(i1);
    }

    public final void a(String s1)
    {
        Log.b("MicroMsg.AccountStorage", (new StringBuilder()).append("remounted on path:").append(s1).append(" sysPath:").append(R).toString());
        if(!s1.equalsIgnoreCase(R))
        {
            R = s1;
            int i1 = Q;
            Q = 0;
            a(i1);
        }
    }

    public final void aa()
    {
        String s1 = MD5.a((new StringBuilder()).append("mm").append(Q).toString().getBytes());
        T = (new StringBuilder()).append("/data/data/com.tencent.mm/MicroMsg/").append(s1).append("/").toString();
        String s2 = (new StringBuilder()).append(ConstantsStorage.b).append(s1).append("/").toString();
        FileOperation.d((new StringBuilder()).append(s2).append("MicroMsg.db").append(".dump").toString());
        FileOperation.a(s2, "MicroMsg.db.dump", "", FileOperation.a((new StringBuilder()).append(T).append("MicroMsg.db").toString(), 0, -1));
    }

    public final boolean b()
    {
        boolean flag;
        if(Q != 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean c()
    {
        boolean flag = ac();
        if(flag)
            if(R.startsWith(ConstantsStorage.a))
            {
                flag = true;
            } else
            {
                a(MMCore.a());
                flag = true;
            }
        return flag;
    }

    public final void d()
    {
        if(P != null)
        {
            P.a();
            P = null;
        }
    }

    public final SqliteDB e()
    {
        return P;
    }

    public final ConfigStorage f()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return a;
    }

    public final OpLogStorage g()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return g;
    }

    public final ContactStorage h()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return b;
    }

    public final MsgInfoStorage i()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return c;
    }

    public final ConversationStorage j()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return d;
    }

    public final ImgInfoStorage k()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return e;
    }

    public final EmojiInfoStorage l()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return f;
    }

    public final RoleStorage m()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return j;
    }

    public final ChatroomMembersStorage n()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return m;
    }

    public final VoiceStorage o()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return k;
    }

    public final VideoInfoStorage p()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return l;
    }

    public final QQListStorage q()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return h;
    }

    public final ReaderAppInfoStorage r()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return y;
    }

    public final QQGroupStorage s()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return i;
    }

    public final AddrUploadStorage t()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return n;
    }

    public final MasSendInfoStorage u()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return q;
    }

    public final com.tencent.mm.modelavatar.AvatarLogic.AvatarSerivce v()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return r;
    }

    public final GetContactService w()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return s;
    }

    public final FacebookFriendStorage x()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return M;
    }

    public final AvatarStorage y()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return u;
    }

    public final GetContactInfoStorage z()
    {
        if(Q == 0)
            throw new AccountNotReadyException((byte)0);
        else
            return t;
    }

    private TContactStorage A;
    private BottleInfoStorage B;
    private ShakeItemStorage C;
    private NetStatStorage D;
    private ThemeInfoStorage E;
    private InviteFriendOpenStorage F;
    private VUserInfoStorage G;
    private PackageInfoStorage H;
    private ChattingBgInfoStorage I;
    private AlbumInfoStorage J;
    private AlbumExtStorage K;
    private AlbumImgStorage L;
    private FacebookFriendStorage M;
    private AlbumCommentStorage N;
    private com.tencent.mm.modellocation.LocationLogic.LocationServer O;
    private SqliteDB P;
    private int Q;
    private String R;
    private String S;
    private String T;
    private ErrLog U;
    private final IEvent V;
    private ConfigStorage a;
    private ContactStorage b;
    private MsgInfoStorage c;
    private ConversationStorage d;
    private ImgInfoStorage e;
    private EmojiInfoStorage f;
    private OpLogStorage g;
    private QQListStorage h;
    private QQGroupStorage i;
    private RoleStorage j;
    private VoiceStorage k;
    private VideoInfoStorage l;
    private ChatroomMembersStorage m;
    private AddrUploadStorage n;
    private FriendExtStorage o;
    private VerifyContactStorage p;
    private MasSendInfoStorage q;
    private com.tencent.mm.modelavatar.AvatarLogic.AvatarSerivce r;
    private GetContactService s;
    private GetContactInfoStorage t;
    private AvatarStorage u;
    private QRCodeStorage v;
    private ImgFlagStorage w;
    private HDHeadImgInfoStorage x;
    private ReaderAppInfoStorage y;
    private QContactStorage z;

    static 
    {
        SqliteDB.a(new _cls3(), "CONFIG_TABLE".hashCode());
        SqliteDB.a(new _cls4(), "CONTACT_TABLE".hashCode());
        SqliteDB.a(new _cls5(), "CHATROOM_MEMBERS_TABLE".hashCode());
        SqliteDB.a(new _cls6(), "CONVERSATION_TABLE".hashCode());
        SqliteDB.a(new _cls7(), "MESSAGE_TABLE".hashCode());
        SqliteDB.a(new _cls8(), "ROLEINFO_TABLE".hashCode());
        SqliteDB.a(new _cls9(), "IMGINFO_TABLE".hashCode());
        SqliteDB.a(new _cls10(), "VOICE_TABLE".hashCode());
        SqliteDB.a(new _cls11(), "ADDR_UPLOAD_TABLE".hashCode());
        SqliteDB.a(new _cls12(), "IMGFLAG_TABLE".hashCode());
        SqliteDB.a(new _cls13(), "VERIFY_CONTACT_TABLE".hashCode());
        SqliteDB.a(new _cls14(), "QQLIST_TABLE".hashCode());
        SqliteDB.a(new _cls15(), "QQGROUP_TABLE".hashCode());
        SqliteDB.a(new _cls16(), "FRIENDEXT_TABLE".hashCode());
        SqliteDB.a(new _cls17(), "VIDEOINFO_TABLE".hashCode());
        SqliteDB.a(new _cls18(), "NETSTAT_TABLE".hashCode());
        SqliteDB.a(new _cls19(), "QCONTACT_TABLE".hashCode());
        SqliteDB.a(new _cls20(), "TCONTACT_TABLE".hashCode());
        SqliteDB.a(new _cls21(), "HDHEADIMGINFO_TABLE".hashCode());
        SqliteDB.a(new _cls22(), "THROWBOTTLEINFO_TABLE".hashCode());
        SqliteDB.a(new _cls23(), "THEMEINFO_TABLE".hashCode());
        SqliteDB.a(new _cls24(), "SHAKEITEM_TABLE".hashCode());
        SqliteDB.a(new _cls25(), "INVITEFRIENDOPEN_TABLE".hashCode());
        SqliteDB.a(new _cls26(), "VUSERINFO_TABLE".hashCode());
        SqliteDB.a(new _cls27(), "EMOJIINFO_TABLE".hashCode());
        SqliteDB.a(new _cls28(), "PACKAGEINFO_TABLE".hashCode());
        SqliteDB.a(new _cls29(), "CHATTINGBGINFO_TABLE".hashCode());
        SqliteDB.a(new _cls30(), "GETCONTACTINFO_TABLE".hashCode());
        SqliteDB.a(new _cls31(), "MASSENDINFO_TABLE".hashCode());
        SqliteDB.a(new _cls32(), "READERAPPINFO_TABLE".hashCode());
        SqliteDB.a(new _cls33(), "FACEBOOKFRIEND_TABLE".hashCode());
    }

    private class IEvent
    {

        public abstract void a();

        public abstract void b();

        public abstract void c();
    }


    private class MoveDataFiles extends Thread
    {

        public void run()
        {
            if(!Util.i(a) && !Util.i(b)) goto _L2; else goto _L1
_L1:
            return;
_L2:
            Log.d("MicroMsg.AccountStorage", (new StringBuilder()).append("MoveDataFiles :").append(a).append(" to :").append(b).toString());
            if(AccountStorage.ab() && b.substring(0, ConstantsStorage.b.length()).equals(ConstantsStorage.b))
            {
                FilesCopy.a((new StringBuilder()).append(a).append("image/").toString(), (new StringBuilder()).append(b).append("image/").toString(), true);
                FilesCopy.a((new StringBuilder()).append(a).append("video/").toString(), (new StringBuilder()).append(b).append("video/").toString(), true);
                FilesCopy.a((new StringBuilder()).append(a).append("voice/").toString(), (new StringBuilder()).append(b).append("voice/").toString(), true);
                FilesCopy.a((new StringBuilder()).append(a).append("package/").toString(), (new StringBuilder()).append(b).append("package/").toString(), true);
                FilesCopy.a((new StringBuilder()).append(a).append("emoji/").toString(), (new StringBuilder()).append(b).append("emoji/").toString(), true);
                FilesCopy.a((new StringBuilder()).append(a).append("mailapp/").toString(), (new StringBuilder()).append(b).append("mailapp/").toString(), true);
            }
            if(true) goto _L1; else goto _L3
_L3:
        }

        private String a;
        private String b;

        public MoveDataFiles(String s1, String s2)
        {
            a = s1;
            b = s2;
        }
    }


    private class _cls1
        implements Runnable
    {

        public void run()
        {
            long l1 = Util.a((Long)AccountStorage.a(a).a(0x10301), 0L);
            String s1 = Util.a((String)AccountStorage.a(a).a(2), "");
            boolean flag;
            if(Util.d(l1) > 120L)
                flag = true;
            else
                flag = false;
            if(flag)
                AccountStorage.a(a).a(0x10301, Long.valueOf(Util.c()));
            ErrLog.Error error;
            for(; AccountStorage.b(a).a(); AccountStorage.c(a).a(new com.tencent.mm.storage.OpLogStorage.OpReport(error.a, error.b, error.c)))
            {
                error = AccountStorage.b(a).c();
                Log.a("MicroMsg.AccountStorage", error.toString());
                if(flag && 2 >= AccountStorage.b(a).b())
                {
                    CrashUpload crashupload = MMCore.s();
                    Log.a("MicroMsg.CrashUpload", "catch crashLog");
                    int i1 = 1 + error.toString().length();
                    PByteArray pbytearray = new PByteArray();
                    byte abyte0[] = Zlib.a((new StringBuilder()).append(error.toString()).append("\n").toString().getBytes());
                    Object aobj[] = new Object[2];
                    aobj[0] = Integer.valueOf(ConstantsProtocal.b);
                    aobj[1] = Integer.valueOf(i1);
                    String s2 = MD5.a(String.format("weixin#$()%d%d", aobj).getBytes()).toLowerCase();
                    DES.a(pbytearray, abyte0, s2.getBytes());
                    (new Thread(new CrashUpload._cls1(crashupload, i1, s2, s1, pbytearray), "crashupload")).start();
                }
            }

        }

        private AccountStorage a;

        _cls1()
        {
            a = AccountStorage.this;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        public void run()
        {
            String as[] = ContactStorageLogic.d;
            int i1 = as.length;
            for(int j1 = 0; j1 < i1; j1++)
            {
                String s1 = as[j1];
                Contact contact = AccountStorage.d(a).c(s1);
                if(contact != null && contact.o() != 0)
                {
                    contact.a(8L);
                    AccountStorage.d(a).a(s1, contact);
                }
            }

        }

        private AccountStorage a;

        _cls2()
        {
            a = AccountStorage.this;
            super();
        }
    }


    private class _cls3
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return ConfigStorage.a;
        }

        _cls3()
        {
        }
    }


    private class _cls4
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return ContactStorage.a;
        }

        _cls4()
        {
        }
    }


    private class _cls5
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return ChatroomMembersStorage.a;
        }

        _cls5()
        {
        }
    }


    private class _cls6
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return ConversationStorage.a;
        }

        _cls6()
        {
        }
    }


    private class _cls7
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return MsgInfoStorage.a;
        }

        _cls7()
        {
        }
    }


    private class _cls8
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return RoleStorage.a;
        }

        _cls8()
        {
        }
    }


    private class _cls9
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return ImgInfoStorage.a;
        }

        _cls9()
        {
        }
    }


    private class _cls10
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return VoiceStorage.a;
        }

        _cls10()
        {
        }
    }


    private class _cls11
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return AddrUploadStorage.a;
        }

        _cls11()
        {
        }
    }


    private class _cls12
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return ImgFlagStorage.a;
        }

        _cls12()
        {
        }
    }


    private class _cls13
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return VerifyContactStorage.a;
        }

        _cls13()
        {
        }
    }


    private class _cls14
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return QQListStorage.a;
        }

        _cls14()
        {
        }
    }


    private class _cls15
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return QQGroupStorage.a;
        }

        _cls15()
        {
        }
    }


    private class _cls16
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return FriendExtStorage.a;
        }

        _cls16()
        {
        }
    }


    private class _cls17
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return VideoInfoStorage.a;
        }

        _cls17()
        {
        }
    }


    private class _cls18
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return NetStatStorage.a;
        }

        _cls18()
        {
        }
    }


    private class _cls19
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return QContactStorage.a;
        }

        _cls19()
        {
        }
    }


    private class _cls20
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return TContactStorage.a;
        }

        _cls20()
        {
        }
    }


    private class _cls21
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return HDHeadImgInfoStorage.a;
        }

        _cls21()
        {
        }
    }


    private class _cls22
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return BottleInfoStorage.a;
        }

        _cls22()
        {
        }
    }


    private class _cls23
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return ThemeInfoStorage.a;
        }

        _cls23()
        {
        }
    }


    private class _cls24
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return ShakeItemStorage.a;
        }

        _cls24()
        {
        }
    }


    private class _cls25
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return InviteFriendOpenStorage.a;
        }

        _cls25()
        {
        }
    }


    private class _cls26
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return VUserInfoStorage.a;
        }

        _cls26()
        {
        }
    }


    private class _cls27
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return EmojiInfoStorage.a;
        }

        _cls27()
        {
        }
    }


    private class _cls28
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return PackageInfoStorage.a;
        }

        _cls28()
        {
        }
    }


    private class _cls29
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return ChattingBgInfoStorage.a;
        }

        _cls29()
        {
        }
    }


    private class _cls30
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return GetContactInfoStorage.a;
        }

        _cls30()
        {
        }
    }


    private class _cls31
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return MasSendInfoStorage.a;
        }

        _cls31()
        {
        }
    }


    private class _cls32
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return ReaderAppInfoStorage.a;
        }

        _cls32()
        {
        }
    }


    private class _cls33
        implements com.tencent.mm.storagebase.SqliteDB.IFactory
    {

        public final String[] a()
        {
            return FacebookFriendStorage.a;
        }

        _cls33()
        {
        }
    }

}
