.class public final Lcom/tencent/mm/model/MMCore;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/mm/model/MMCore;

.field private static h:Z


# instance fields
.field private A:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppMsgExtension;

.field private B:Lcom/tencent/mm/modelstat/NetStatMsgExtension;

.field private C:Lcom/tencent/mm/storage/ContactStorage$IContactExtension;

.field private D:Lcom/tencent/mm/storage/ConversationStorage$IConversationExtension;

.field private E:Lcom/tencent/mm/storage/ConversationStorage$IConversationExtension;

.field private final b:Lcom/tencent/mm/model/AccountStorage;

.field private final c:Lcom/tencent/mm/modelbase/NetSceneQueue;

.field private d:Lcom/tencent/mm/network/IDispatcher;

.field private e:Lcom/tencent/mm/booter/MMNotification;

.field private final f:Lcom/tencent/mm/storage/ConfigStorage;

.field private final g:Lcom/tencent/mm/model/CrashUpload;

.field private i:Landroid/content/Context;

.field private final j:Ljava/lang/String;

.field private k:Lcom/tencent/mm/modelvoice/SceneVoice$Service;

.field private l:Lcom/tencent/mm/modelvideo/VideoService$Service;

.field private m:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

.field private n:Lcom/tencent/mm/modelvoip/VoipService;

.field private o:Lcom/tencent/mm/modelimage/ImgService;

.field private p:Lcom/tencent/mm/modelemoji/EmojiService;

.field private q:Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

.field private r:Lcom/tencent/mm/modelbase/MMUncaughtExceptionHandler;

.field private s:Z

.field private t:Lcom/tencent/mm/modelvoice/VoiceMsgExtension;

.field private u:Lcom/tencent/mm/modelvideo/VideoMsgExtension;

.field private v:Lcom/tencent/mm/modelpmsg/PushMessageExtension;

.field private w:Lcom/tencent/mm/modelqmsg/QMsgExtension;

.field private x:Lcom/tencent/mm/modelemoji/EmojiExtension;

.field private y:Lcom/tencent/mm/model/SysNoticeMsgExtension;

.field private z:Lcom/tencent/mm/model/SoftwareMsgExtension;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MMProtocalJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "Sync"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget v0, Lcom/tencent/mm/protocal/ConstantsProtocal;->b:I

    invoke-static {v0}, Lcom/tencent/mm/protocal/MMProtocalJni;->setClientPackVersion(I)Z

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/model/MMCore;->a:Lcom/tencent/mm/model/MMCore;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/model/MMCore;->h:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->l:Lcom/tencent/mm/modelvideo/VideoService$Service;

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->m:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->n:Lcom/tencent/mm/modelvoip/VoipService;

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->o:Lcom/tencent/mm/modelimage/ImgService;

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->p:Lcom/tencent/mm/modelemoji/EmojiService;

    iput-boolean v1, p0, Lcom/tencent/mm/model/MMCore;->s:Z

    new-instance v0, Lcom/tencent/mm/modelvoice/VoiceMsgExtension;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoice/VoiceMsgExtension;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->t:Lcom/tencent/mm/modelvoice/VoiceMsgExtension;

    new-instance v0, Lcom/tencent/mm/modelvideo/VideoMsgExtension;

    invoke-direct {v0}, Lcom/tencent/mm/modelvideo/VideoMsgExtension;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->u:Lcom/tencent/mm/modelvideo/VideoMsgExtension;

    new-instance v0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;

    invoke-direct {v0}, Lcom/tencent/mm/modelpmsg/PushMessageExtension;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->v:Lcom/tencent/mm/modelpmsg/PushMessageExtension;

    new-instance v0, Lcom/tencent/mm/modelqmsg/QMsgExtension;

    invoke-direct {v0}, Lcom/tencent/mm/modelqmsg/QMsgExtension;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->w:Lcom/tencent/mm/modelqmsg/QMsgExtension;

    new-instance v0, Lcom/tencent/mm/modelemoji/EmojiExtension;

    invoke-direct {v0}, Lcom/tencent/mm/modelemoji/EmojiExtension;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->x:Lcom/tencent/mm/modelemoji/EmojiExtension;

    new-instance v0, Lcom/tencent/mm/model/SysNoticeMsgExtension;

    invoke-direct {v0}, Lcom/tencent/mm/model/SysNoticeMsgExtension;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->y:Lcom/tencent/mm/model/SysNoticeMsgExtension;

    new-instance v0, Lcom/tencent/mm/model/SoftwareMsgExtension;

    invoke-direct {v0}, Lcom/tencent/mm/model/SoftwareMsgExtension;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->z:Lcom/tencent/mm/model/SoftwareMsgExtension;

    new-instance v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppMsgExtension;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppMsgExtension;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->A:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppMsgExtension;

    new-instance v0, Lcom/tencent/mm/modelstat/NetStatMsgExtension;

    invoke-direct {v0}, Lcom/tencent/mm/modelstat/NetStatMsgExtension;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->B:Lcom/tencent/mm/modelstat/NetStatMsgExtension;

    new-instance v0, Lcom/tencent/mm/model/MMCore$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/model/MMCore$2;-><init>(Lcom/tencent/mm/model/MMCore;)V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->C:Lcom/tencent/mm/storage/ContactStorage$IContactExtension;

    new-instance v0, Lcom/tencent/mm/model/MMCore$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/model/MMCore$3;-><init>(Lcom/tencent/mm/model/MMCore;)V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->D:Lcom/tencent/mm/storage/ConversationStorage$IConversationExtension;

    new-instance v0, Lcom/tencent/mm/model/MMCore$4;

    invoke-direct {v0, p0}, Lcom/tencent/mm/model/MMCore$4;-><init>(Lcom/tencent/mm/model/MMCore;)V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->E:Lcom/tencent/mm/storage/ConversationStorage$IConversationExtension;

    new-instance v0, Lcom/tencent/mm/model/CrashUpload;

    invoke-direct {v0}, Lcom/tencent/mm/model/CrashUpload;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->g:Lcom/tencent/mm/model/CrashUpload;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->j:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/storage/ConfigStorage;

    const-string v2, "/data/data/com.tencent.mm/MicroMsg/systemInfo.cfg"

    invoke-direct {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/mm/model/MMCore;->h:Z

    new-instance v0, Lcom/tencent/mm/model/AccountStorage;

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->j:Ljava/lang/String;

    new-instance v2, Lcom/tencent/mm/model/MMCore$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/model/MMCore$1;-><init>(Lcom/tencent/mm/model/MMCore;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/model/AccountStorage;-><init>(Ljava/lang/String;Lcom/tencent/mm/model/AccountStorage$IEvent;)V

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-static {}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/model/MMCore;->c:Lcom/tencent/mm/modelbase/NetSceneQueue;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic A()V
    .locals 1

    const/16 v0, 0x270e

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(I)V

    const/16 v0, 0x26

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(I)V

    const/16 v0, 0x22

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(I)V

    const/16 v0, 0x2b

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(I)V

    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(I)V

    const/16 v0, 0x24

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(I)V

    const/16 v0, 0x2f

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(I)V

    const/16 v0, 0x27

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(I)V

    const/16 v0, 0x270f

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(I)V

    const/16 v0, 0x29

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(I)V

    const v0, 0xbd357f

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(I)V

    return-void
.end method

.method private static B()Lcom/tencent/mm/model/MMCore;
    .locals 1

    sget-object v0, Lcom/tencent/mm/model/MMCore;->a:Lcom/tencent/mm/model/MMCore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/model/MMCore;

    invoke-direct {v0}, Lcom/tencent/mm/model/MMCore;-><init>()V

    sput-object v0, Lcom/tencent/mm/model/MMCore;->a:Lcom/tencent/mm/model/MMCore;

    :cond_0
    sget-object v0, Lcom/tencent/mm/model/MMCore;->a:Lcom/tencent/mm/model/MMCore;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/model/MMCore;Lcom/tencent/mm/modelemoji/EmojiService;)Lcom/tencent/mm/modelemoji/EmojiService;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/model/MMCore;->p:Lcom/tencent/mm/modelemoji/EmojiService;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/model/MMCore;Lcom/tencent/mm/modelimage/ImgService;)Lcom/tencent/mm/modelimage/ImgService;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/model/MMCore;->o:Lcom/tencent/mm/modelimage/ImgService;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/model/MMCore;Lcom/tencent/mm/modelvideo/VideoService$Service;)Lcom/tencent/mm/modelvideo/VideoService$Service;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/model/MMCore;->l:Lcom/tencent/mm/modelvideo/VideoService$Service;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/model/MMCore;Lcom/tencent/mm/modelvoice/SceneVoice$Service;)Lcom/tencent/mm/modelvoice/SceneVoice$Service;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/model/MMCore;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/model/MMCore;Lcom/tencent/mm/modelvoip/VoipService;)Lcom/tencent/mm/modelvoip/VoipService;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/model/MMCore;->n:Lcom/tencent/mm/modelvoip/VoipService;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/model/MMCore;Lcom/tencent/mm/plugin/qqmail/model/MailAppService;)Lcom/tencent/mm/plugin/qqmail/model/MailAppService;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/model/MMCore;->q:Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/model/MMCore;Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;)Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/model/MMCore;->m:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    return-object p1
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    const-string v0, "/data/data/com.tencent.mm/MicroMsg/"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tencent/mm/storage/ConstantsStorage;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tencent/mm/storage/ConstantsStorage;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v0, Lcom/tencent/mm/storage/ConstantsStorage;->b:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tencent/mm/storage/ConstantsStorage;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/tencent/mm/storage/ConstantsStorage;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_5
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->e:Lcom/tencent/mm/booter/MMNotification;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/booter/MMNotification;

    invoke-direct {v1, p0}, Lcom/tencent/mm/booter/MMNotification;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/tencent/mm/model/MMCore;->e:Lcom/tencent/mm/booter/MMNotification;

    :goto_0
    invoke-static {p0}, Lcom/tencent/mm/platformtools/ChannelUtil;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/tencent/mm/platformtools/ChannelUtil;->b(Landroid/content/Context;)V

    sget v0, Lcom/tencent/mm/platformtools/ChannelUtil;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v1, 0x10

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/tencent/mm/platformtools/ChannelUtil;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/protocal/ConstantsProtocal;->a:Ljava/lang/String;

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->e:Lcom/tencent/mm/booter/MMNotification;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/booter/MMNotification;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/tencent/mm/platformtools/ChannelUtil;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/model/MMCore;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->C:Lcom/tencent/mm/storage/ContactStorage$IContactExtension;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->a(Lcom/tencent/mm/storage/ContactStorage$IContactExtension;)V

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->E:Lcom/tencent/mm/storage/ConversationStorage$IConversationExtension;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->b(Lcom/tencent/mm/storage/ConversationStorage$IConversationExtension;)V

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->D:Lcom/tencent/mm/storage/ConversationStorage$IConversationExtension;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->a(Lcom/tencent/mm/storage/ConversationStorage$IConversationExtension;)V

    const/16 v0, 0x270e

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->B:Lcom/tencent/mm/modelstat/NetStatMsgExtension;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(ILcom/tencent/mm/modelbase/IMessageExtension;)V

    const/16 v0, 0x26

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->v:Lcom/tencent/mm/modelpmsg/PushMessageExtension;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(ILcom/tencent/mm/modelbase/IMessageExtension;)V

    const/16 v0, 0x22

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->t:Lcom/tencent/mm/modelvoice/VoiceMsgExtension;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(ILcom/tencent/mm/modelbase/IMessageExtension;)V

    const/16 v0, 0x2b

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->u:Lcom/tencent/mm/modelvideo/VideoMsgExtension;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(ILcom/tencent/mm/modelbase/IMessageExtension;)V

    const/16 v0, 0x2c

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->u:Lcom/tencent/mm/modelvideo/VideoMsgExtension;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(ILcom/tencent/mm/modelbase/IMessageExtension;)V

    const/16 v0, 0x24

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->w:Lcom/tencent/mm/modelqmsg/QMsgExtension;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(ILcom/tencent/mm/modelbase/IMessageExtension;)V

    const/16 v0, 0x2f

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->x:Lcom/tencent/mm/modelemoji/EmojiExtension;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(ILcom/tencent/mm/modelbase/IMessageExtension;)V

    const/16 v0, 0x27

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->w:Lcom/tencent/mm/modelqmsg/QMsgExtension;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(ILcom/tencent/mm/modelbase/IMessageExtension;)V

    const/16 v0, 0x270f

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->y:Lcom/tencent/mm/model/SysNoticeMsgExtension;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(ILcom/tencent/mm/modelbase/IMessageExtension;)V

    const/16 v0, 0x29

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->z:Lcom/tencent/mm/model/SoftwareMsgExtension;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(ILcom/tencent/mm/modelbase/IMessageExtension;)V

    const v0, 0xbd357f

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->A:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppMsgExtension;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(ILcom/tencent/mm/modelbase/IMessageExtension;)V

    return-void
.end method

.method public static a(Lcom/tencent/mm/network/IDispatcher;)V
    .locals 8

    const/4 v6, 0x3

    const/4 v5, 0x2

    const-string v0, "MicroMsg.MMCore"

    const-string v1, "setting up remote dispatcher"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iput-object p0, v0, Lcom/tencent/mm/model/MMCore;->d:Lcom/tencent/mm/network/IDispatcher;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->c:Lcom/tencent/mm/modelbase/NetSceneQueue;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/network/IDispatcher;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-interface {p0}, Lcom/tencent/mm/network/IDispatcher;->e()Lcom/tencent/mm/network/IAccInfo;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "MicroMsg.MMCore"

    const-string v1, "need to clear acc info and maybe stop networking"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7}, Lcom/tencent/mm/network/IAccInfo;->a()V

    invoke-interface {p0}, Lcom/tencent/mm/network/IDispatcher;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/model/MMCore;->B:Lcom/tencent/mm/modelstat/NetStatMsgExtension;

    invoke-interface {p0, v1}, Lcom/tencent/mm/network/IDispatcher;->a(Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;)V

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->a()I

    move-result v0

    invoke-interface {v7}, Lcom/tencent/mm/network/IAccInfo;->g()I

    move-result v1

    if-eq v0, v1, :cond_1

    const-string v0, "MicroMsg.MMCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update acc info with acc stg: uin ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Lcom/tencent/mm/network/IAccInfo;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->a()I

    move-result v4

    invoke-interface {v7, v3, v4}, Lcom/tencent/mm/network/IAccInfo;->a(Ljava/lang/String;I)V

    invoke-interface {v7, v0, v1, v2}, Lcom/tencent/mm/network/IAccInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/tencent/mm/protocal/MMBuiltInIP;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;

    move-result-object v6

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->d:Lcom/tencent/mm/network/IDispatcher;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->a()[I

    move-result-object v3

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->b()[I

    move-result-object v4

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->c()I

    move-result v5

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->d()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IDispatcher;->a(Ljava/lang/String;Ljava/lang/String;[I[III)V

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelbase/MMUncaughtExceptionHandler;

    const-string v2, "ui_worker"

    invoke-direct {v1, v7, v2}, Lcom/tencent/mm/modelbase/MMUncaughtExceptionHandler;-><init>(Lcom/tencent/mm/network/IAccInfo;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/mm/model/MMCore;->r:Lcom/tencent/mm/modelbase/MMUncaughtExceptionHandler;

    goto/16 :goto_0
.end method

.method public static a(Lcom/tencent/mm/protocal/MMProfile$Resp;)V
    .locals 7

    const-string v0, "MicroMsg.MMCore"

    const-string v1, "updateBuiltInIPs"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMProfile$Resp;->y()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/protocal/MMBuiltInIP;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMProfile$Resp;->z()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/protocal/MMBuiltInIP;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMProfile$Resp;->A()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMProfile$Resp;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMProfile$Resp;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMProfile$Resp;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMProfile$Resp;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/protocal/MMBuiltInIP;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;

    move-result-object v6

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->d:Lcom/tencent/mm/network/IDispatcher;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->d:Lcom/tencent/mm/network/IDispatcher;

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->a()[I

    move-result-object v3

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->b()[I

    move-result-object v4

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->c()I

    move-result v5

    invoke-virtual {v6}, Lcom/tencent/mm/protocal/MMBuiltInIP$NetworkControl;->d()I

    move-result v6

    invoke-interface/range {v0 .. v6}, Lcom/tencent/mm/network/IDispatcher;->a(Ljava/lang/String;Ljava/lang/String;[I[III)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iput-boolean p0, v0, Lcom/tencent/mm/model/MMCore;->s:Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->d:Lcom/tencent/mm/network/IDispatcher;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->d:Lcom/tencent/mm/network/IDispatcher;

    invoke-interface {v0, p0}, Lcom/tencent/mm/network/IDispatcher;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/model/AccountStorage;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    return-object v0
.end method

.method public static b()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iput-object v1, v0, Lcom/tencent/mm/model/MMCore;->d:Lcom/tencent/mm/network/IDispatcher;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->c:Lcom/tencent/mm/modelbase/NetSceneQueue;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/network/IDispatcher;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->c:Lcom/tencent/mm/modelbase/NetSceneQueue;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b()V

    return-void
.end method

.method public static c()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/model/MMCore;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    const-string v1, "qqsync"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "qqsync"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->f()V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a004f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->i(I)V

    :cond_1
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/Contact;->a(J)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x10100

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x10102

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v2

    const-wide/32 v4, 0x112380

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_2
    const-string v0, "qqsync"

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "avatar/default_qqsync.jpg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/a/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    const-string v2, "qqsync"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/model/MMCore;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    const-string v1, "floatbottle"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "floatbottle"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->f()V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0052

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->i(I)V

    :cond_1
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/Contact;->a(J)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    :cond_2
    return-void
.end method

.method public static d()Z
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/mm/model/MMCore;->s:Z

    return v0
.end method

.method public static e()Lcom/tencent/mm/storage/ConfigStorage;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/model/MMCore;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    const-string v1, "shakeapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "shakeapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->f()V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0056

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0057

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0058

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->i(I)V

    :cond_1
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/Contact;->a(J)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    :cond_2
    const-string v0, "shakeapp"

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "avatar/default_shake.jpg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/a/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    const-string v2, "shakeapp"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static f()Lcom/tencent/mm/model/AccountStorage;
    .locals 5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v2, v0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MicroMsg.MMCore"

    const-string v3, "auto set up account storage"

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/mm/model/AccountStorage;->a(I)V

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    const-string v1, "MicroMsg.MMCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "username of acc stg not set: uin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->Y()V

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic f(Lcom/tencent/mm/model/MMCore;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    const-string v1, "lbsapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "lbsapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->f()V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0054

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0055

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->i(I)V

    :cond_1
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/Contact;->a(J)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    :cond_2
    const-string v0, "lbsapp"

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "avatar/default_nearby.jpg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/a/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    const-string v2, "lbsapp"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static g()Lcom/tencent/mm/modelbase/NetSceneQueue;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->c:Lcom/tencent/mm/modelbase/NetSceneQueue;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/model/MMCore;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    const-string v1, "medianote"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/Contact;

    invoke-direct {v0}, Lcom/tencent/mm/storage/Contact;-><init>()V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "medianote"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->f()V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0059

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a005a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->i(I)V

    :cond_1
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/Contact;->a(J)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    :cond_2
    const-string v0, "medianote"

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "avatar/default_medianote.jpg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/a/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    const-string v2, "medianote"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static h()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->m:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/model/MMCore;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    const-string v1, "readerapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/Contact;

    invoke-direct {v0}, Lcom/tencent/mm/storage/Contact;-><init>()V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "readerapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->f()V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a006c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a006d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->i(I)V

    :cond_1
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/Contact;->a(J)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    :cond_2
    const-string v0, "readerapp"

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "avatar/default_readerapp.jpg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/a/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    const-string v2, "readerapp"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static i()Lcom/tencent/mm/modelvoice/SceneVoice$Service;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/model/MMCore;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    const-string v1, "blogapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/Contact;

    invoke-direct {v0}, Lcom/tencent/mm/storage/Contact;-><init>()V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "blogapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->f()V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a006f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0071

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->i(I)V

    :cond_1
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/Contact;->a(J)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    :cond_2
    const-string v0, "blogapp"

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "avatar/default_readerapp_weibo.jpg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/a/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    const-string v2, "blogapp"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static j()Lcom/tencent/mm/modelvideo/VideoService$Service;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->l:Lcom/tencent/mm/modelvideo/VideoService$Service;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/model/MMCore;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    const-string v1, "facebookapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/Contact;

    invoke-direct {v0}, Lcom/tencent/mm/storage/Contact;-><init>()V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "facebookapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->f()V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a005c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a005d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a005e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->i(I)V

    :cond_1
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/Contact;->a(J)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    :cond_2
    const-string v0, "facebookapp"

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "avatar/default_facebook.jpg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/a/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    const-string v2, "facebookapp"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static k()Lcom/tencent/mm/modelvoip/VoipService;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->n:Lcom/tencent/mm/modelvoip/VoipService;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/model/MMCore;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    const-string v1, "qqfriend"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/Contact;

    invoke-direct {v0}, Lcom/tencent/mm/storage/Contact;-><init>()V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "qqfriend"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->f()V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0062

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0063

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0064

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->i(I)V

    :cond_1
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/Contact;->a(J)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    :cond_2
    const-string v0, "qqfriend"

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "avatar/default_qqfriend.jpg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/a/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    const-string v2, "qqfriend"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static l()Lcom/tencent/mm/modelimage/ImgService;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->o:Lcom/tencent/mm/modelimage/ImgService;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/model/MMCore;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    const-string v1, "masssendapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/Contact;

    invoke-direct {v0}, Lcom/tencent/mm/storage/Contact;-><init>()V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "masssendapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->f()V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0065

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0066

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    const v2, 0x7f0a0067

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->i(I)V

    :cond_1
    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/Contact;->a(J)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    :cond_2
    const-string v0, "masssendapp"

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "avatar/default_masssend.jpg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/a/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    const-string v2, "masssendapp"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static m()Lcom/tencent/mm/modelemoji/EmojiService;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->p:Lcom/tencent/mm/modelemoji/EmojiService;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/model/MMCore;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Landroid/content/Context;)Z

    :cond_0
    return-void
.end method

.method public static n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->q:Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/model/MMCore;)V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore;->b:Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->f()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->f()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/storage/Contact;)I

    :cond_1
    return-void
.end method

.method public static o()Lcom/tencent/mm/modelbase/LocalAccInfo;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->d:Lcom/tencent/mm/network/IDispatcher;

    check-cast v0, Lcom/tencent/mm/modelbase/RDispatcher;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/RDispatcher;->d()Lcom/tencent/mm/modelbase/LocalAccInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/modelvoice/SceneVoice$Service;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    return-object v0
.end method

.method public static p()Lcom/tencent/mm/booter/MMNotification;
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->e:Lcom/tencent/mm/booter/MMNotification;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/booter/MMNotification;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/mm/booter/MMNotification;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/tencent/mm/model/MMCore;->e:Lcom/tencent/mm/booter/MMNotification;

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->e:Lcom/tencent/mm/booter/MMNotification;

    return-object v0
.end method

.method static synthetic p(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/modelvideo/VideoService$Service;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->l:Lcom/tencent/mm/modelvideo/VideoService$Service;

    return-object v0
.end method

.method public static q()Lcom/tencent/mm/network/IDispatcher;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->d:Lcom/tencent/mm/network/IDispatcher;

    return-object v0
.end method

.method static synthetic q(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->m:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    return-object v0
.end method

.method static synthetic r(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/modelvoip/VoipService;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->n:Lcom/tencent/mm/modelvoip/VoipService;

    return-object v0
.end method

.method public static r()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->c:Lcom/tencent/mm/modelbase/NetSceneQueue;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->c:Lcom/tencent/mm/modelbase/NetSceneQueue;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b()V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->d:Lcom/tencent/mm/network/IDispatcher;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->d:Lcom/tencent/mm/network/IDispatcher;

    invoke-interface {v0}, Lcom/tencent/mm/network/IDispatcher;->c()V

    :cond_1
    return-void
.end method

.method public static s()Lcom/tencent/mm/model/CrashUpload;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->g:Lcom/tencent/mm/model/CrashUpload;

    return-object v0
.end method

.method static synthetic s(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/modelimage/ImgService;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->o:Lcom/tencent/mm/modelimage/ImgService;

    return-object v0
.end method

.method static synthetic t(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/modelemoji/EmojiService;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->p:Lcom/tencent/mm/modelemoji/EmojiService;

    return-object v0
.end method

.method public static t()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->a()I

    move-result v2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v0

    if-ne v2, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic u(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/plugin/qqmail/model/MailAppService;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore;->q:Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    return-object v0
.end method

.method public static u()Ljava/lang/String;
    .locals 8

    const/16 v7, 0x100

    const/16 v6, 0xf

    const/4 v1, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    invoke-virtual {v0, v7}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "123456789ABCDEF"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "MicroMsg.MMCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generated deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    invoke-virtual {v1, v7, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/Random;->setSeed(J)V

    const-string v0, "A"

    :goto_1
    if-ge v1, v6, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x19

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1
.end method

.method public static v()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x102

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static w()Z
    .locals 2

    sget-boolean v0, Lcom/tencent/mm/model/MMCore;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.MMCore"

    const-string v1, "account holded"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/tencent/mm/model/MMCore;->h:Z

    return v0
.end method

.method public static x()V
    .locals 3

    const/4 v2, 0x1

    sput-boolean v2, Lcom/tencent/mm/model/MMCore;->h:Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v1, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static y()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/tencent/mm/model/MMCore;->h:Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    const/16 v1, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static z()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->B()Lcom/tencent/mm/model/MMCore;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/model/MMCore;->f:Lcom/tencent/mm/storage/ConfigStorage;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    return-void
.end method
