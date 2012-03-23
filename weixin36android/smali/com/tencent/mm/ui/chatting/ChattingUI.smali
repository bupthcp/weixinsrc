.class public Lcom/tencent/mm/ui/chatting/ChattingUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/model/IOnNewMsgNotify;
.implements Lcom/tencent/mm/model/IOnSendMsgFailNotify;
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;
.implements Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;
.implements Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;


# static fields
.field public static a:Z

.field public static e:Z

.field private static q:Ljava/util/Map;

.field private static v:Lcom/tencent/mm/platformtools/SensorController;


# instance fields
.field private final A:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

.field private B:Z

.field private C:Landroid/widget/PopupWindow;

.field private D:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

.field private final E:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private final F:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private final G:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private final H:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

.field private final I:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;

.field private final J:Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;

.field private final K:Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;

.field private final L:Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;

.field private final M:Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;

.field private final N:Lcom/tencent/mm/ui/chatting/SendMessageFaster;

.field private O:Ljava/lang/String;

.field private P:Landroid/graphics/Bitmap;

.field private Q:[Ljava/lang/String;

.field protected b:Lcom/tencent/mm/ui/chatting/ChatFooter;

.field protected c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

.field protected d:Landroid/view/View;

.field private f:Lcom/tencent/mm/storage/Contact;

.field private g:Lcom/tencent/mm/storage/RoleInfo;

.field private h:Ljava/lang/String;

.field private i:Lcom/tencent/mm/storage/MsgInfo;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/Button;

.field private l:Landroid/text/ClipboardManager;

.field private m:Lcom/tencent/mm/ui/MMPullDownView;

.field private n:Z

.field private o:Landroid/os/Handler;

.field private p:Landroid/app/ProgressDialog;

.field private r:Z

.field private s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

.field private t:J

.field private u:Landroid/widget/Toast;

.field private w:Landroid/os/Vibrator;

.field private x:Ljava/util/Map;

.field private y:Landroid/media/ToneGenerator;

.field private z:Lcom/tencent/mm/ui/chatting/AutoPlay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->a:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->q:Ljava/util/Map;

    sput-boolean v1, Lcom/tencent/mm/ui/chatting/ChattingUI;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->n:Z

    new-instance v0, Lcom/tencent/mm/ui/chatting/ChattingUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$1;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->o:Landroid/os/Handler;

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->p:Landroid/app/ProgressDialog;

    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->r:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->t:J

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    iput-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->A:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->B:Z

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$2;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->E:Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$3;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->F:Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$4;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->G:Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v0, Lcom/tencent/mm/ui/chatting/ChattingUI$5;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$5;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->H:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

    new-instance v0, Lcom/tencent/mm/ui/chatting/ChattingUI$6;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$6;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->I:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;

    new-instance v0, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->J:Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;

    new-instance v0, Lcom/tencent/mm/ui/chatting/ChattingUI$7;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$7;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->K:Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;

    new-instance v0, Lcom/tencent/mm/ui/chatting/ChattingUI$8;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$8;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->L:Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;

    new-instance v0, Lcom/tencent/mm/ui/chatting/ChattingUI$9;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$9;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->M:Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;

    new-instance v0, Lcom/tencent/mm/ui/chatting/SendMessageFaster;

    invoke-direct {v0}, Lcom/tencent/mm/ui/chatting/SendMessageFaster;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->N:Lcom/tencent/mm/ui/chatting/SendMessageFaster;

    return-void
.end method

.method static synthetic A(Lcom/tencent/mm/ui/chatting/ChattingUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->h:Ljava/lang/String;

    return-object v0
.end method

.method private A()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->C:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->C:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private B()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->c()Z

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->E:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v4}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->G:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v4}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->t:J

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v0}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    const-string v4, "medianote"

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->c(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-virtual {v4}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->f()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v1, v4, v5, v2}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    const-string v1, "medianote"

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gtz v2, :cond_3

    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "insertLocalMsg fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->b(Ljava/lang/String;)V

    move v2, v3

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const-string v2, "MicroMsg.ChattingUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertLocalMsg success, msgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private C()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "medianote"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->d()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->g:Lcom/tencent/mm/storage/RoleInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->g:Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/RoleInfo;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private E()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, " doSendImage : filePath is null or empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->g:Lcom/tencent/mm/storage/RoleInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->g:Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/RoleInfo;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->g:Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/RoleInfo;->e()Lcom/tencent/mm/storage/RoleInfo$Parser;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/RoleInfo$Parser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a0095

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    const v0, 0x7f0a0094

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->g:Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/RoleInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/storage/Contact;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->o:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingUI$44;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$44;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c(Z)V

    goto :goto_0
.end method

.method private F()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->P:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->P:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private G()V
    .locals 8

    const v7, 0x7f080013

    const/4 v6, -0x2

    const v5, 0x7f070091

    const v1, 0x7f0200c8

    const/4 v2, -0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->V()Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelpackage/ChattingBgInfo;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v4, 0x3017

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v6}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v0

    :goto_0
    if-ne v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->h(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    const-string v1, "chatting/purecolor_chat.xml"

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v3}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->d()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    invoke-static {p0}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(Landroid/content/Context;)I

    move-result v4

    if-nez v0, :cond_4

    packed-switch v4, :pswitch_data_0

    move v0, v2

    :goto_2
    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->F()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->P:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->P:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    const-string v0, "MicroMsg.ChattingUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBackground decodeFile fail, bm is null, resId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    const-string v1, "chatting/reserved_chat.xml"

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    :pswitch_0
    move v0, v1

    goto :goto_2

    :cond_3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->P:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v1

    if-lez v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->d(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "chat.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v3, v2}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->b(Ljava/lang/String;)Z

    invoke-virtual {v1, v0, v4}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->e(II)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->F()V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->P:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->P:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    const-string v1, "MicroMsg.ChattingUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBackground decodeFile fail, bm is null, path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->h(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    const-string v2, "chatting/default_chat.xml"

    invoke-virtual {v0, p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Landroid/content/Context;Ljava/lang/String;)Z

    if-nez v3, :cond_6

    const-string v0, "default"

    invoke-virtual {v1, v0, v4}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->P:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingUI;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->t:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->u:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/Contact;)Lcom/tencent/mm/storage/Contact;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    return-object p1
.end method

.method private a(JI)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "img_msg_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "img_server_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 5

    new-instance v0, Lcom/tencent/mm/modelvideo/ImportVideo;

    invoke-direct {v0}, Lcom/tencent/mm/modelvideo/ImportVideo;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingUI$37;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$37;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/tencent/mm/modelvideo/ImportVideo;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/tencent/mm/modelvideo/ImportVideo$OnImportFinishListener;)V

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0026

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/chatting/ChattingUI$38;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI$38;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/modelvideo/ImportVideo;)V

    invoke-static {p0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->p:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelemoji/EmojiInfo;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f(I)V

    sget v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->l:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->g(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    new-instance v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v0}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    const-string v1, "medianote"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    return-void
.end method

.method private a(Lcom/tencent/mm/storage/Contact;Lcom/tencent/mm/storage/MsgInfo$FriendContent;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Contact_User"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_Nick"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_QuanPin"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_PyInitial"

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_Uin"

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->i()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "Contact_Mobile_MD5"

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_full_Mobile_MD5"

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_QQNick"

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "User_From_Fmessage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "Contact_Scene"

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->g()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Contact_from_msgType"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private a(Lcom/tencent/mm/storage/MsgInfo$FriendContent;)V
    .locals 2

    new-instance v0, Lcom/tencent/mm/storage/Contact;

    invoke-direct {v0}, Lcom/tencent/mm/storage/Contact;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Lcom/tencent/mm/storage/Contact;Lcom/tencent/mm/storage/MsgInfo$FriendContent;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingUI;I)V
    .locals 3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/tencent/mm/modelsimple/NetSceneDirectSend;

    invoke-static {p1}, Lcom/tencent/mm/algorithm/TypeTransform;->b(I)[B

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/modelsimple/NetSceneDirectSend;-><init>(Ljava/util/List;[B)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->n:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-string v0, "MicroMsg.ChattingUI"

    const-string v2, "doSendMessage null"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Ljava/lang/String;Z)Z

    :cond_3
    const-string v2, "//assert"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "test errlog"

    invoke-static {v2, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    :cond_4
    move v2, v1

    :goto_1
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->g:Lcom/tencent/mm/storage/RoleInfo;

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->g:Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/RoleInfo;->e()Lcom/tencent/mm/storage/RoleInfo$Parser;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/RoleInfo$Parser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@t.qq.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->g:Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/RoleInfo;->b()Z

    move-result v4

    if-nez v4, :cond_e

    const v2, 0x7f0a0095

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_5
    :goto_2
    if-eqz v2, :cond_10

    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move v0, v1

    goto :goto_0

    :cond_6
    const-string v2, "//whatsnew"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "show_whatsnew"

    invoke-static {v2}, Lcom/tencent/mm/platformtools/MMEntryLock;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/mm/ui/MMAppMgr;->a(Landroid/app/Activity;)V

    move v2, v0

    goto :goto_1

    :cond_7
    const-string v2, "//profile "

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v2

    const-string v3, "//profile "

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "Contact_User"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    :cond_8
    move v2, v0

    goto/16 :goto_1

    :cond_9
    const-string v2, "//version"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/tencent/mm/protocal/ConstantsProtocal;->b:I

    invoke-static {p0, v3}, Lcom/tencent/mm/platformtools/Util;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/tencent/mm/protocal/ConstantsProtocal;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Build Version"

    invoke-static {p0, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move v2, v0

    goto/16 :goto_1

    :cond_a
    const-string v2, "//dumpdb"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->aa()V

    move v2, v0

    goto/16 :goto_1

    :cond_b
    const-string v2, "//set_synckey "

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "//set_synckey"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/SyncKeyParser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    const/16 v4, 0x2003

    invoke-virtual {v3, v4, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    move v2, v0

    goto/16 :goto_1

    :cond_c
    const-string v2, "//getcontact "

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "//getcontact "

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v2

    new-instance v4, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;

    invoke-direct {v4, v3}, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    move v2, v0

    goto/16 :goto_1

    :cond_d
    const-string v2, "//set_updatemode "

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "//set_updatemode "

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/tencent/mm/platformtools/ChannelUtil;->b:I

    move v2, v0

    goto/16 :goto_1

    :cond_e
    const-string v4, "@qqim"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->d()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_f

    const v2, 0x7f0a0096

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_f
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->g:Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/RoleInfo;->b()Z

    move-result v3

    if-nez v3, :cond_5

    const v2, 0x7f0a0094

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->g:Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/RoleInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/storage/Contact;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_10
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->o:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$43;

    invoke-direct {v2, p0, p1, p2}, Lcom/tencent/mm/ui/chatting/ChattingUI$43;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c(Z)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v1, 0x0

    const v3, 0x7f070094

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->Q:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->Q:[Ljava/lang/String;

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->Q:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->Q:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-gt v0, v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->d(Landroid/app/Activity;)V

    if-eqz p2, :cond_3

    const v0, 0x10a02

    :goto_1
    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->i(I)V

    :goto_2
    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    const v0, 0x10a03

    goto :goto_1

    :cond_4
    const/4 v2, 0x7

    if-gt v0, v2, :cond_6

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->a(Landroid/app/Activity;)V

    if-eqz p2, :cond_5

    const v0, 0x10a04

    :goto_3
    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->i(I)V

    goto :goto_2

    :cond_5
    const v0, 0x10a05

    goto :goto_3

    :cond_6
    const/16 v2, 0xb

    if-gt v0, v2, :cond_8

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->c(Landroid/app/Activity;)V

    if-eqz p2, :cond_7

    const v0, 0x10a06

    :goto_4
    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->i(I)V

    goto :goto_2

    :cond_7
    const v0, 0x10a07

    goto :goto_4

    :cond_8
    const/16 v2, 0xf

    if-gt v0, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/chatting/ChattingAnimFrame;->b(Landroid/app/Activity;)V

    if-eqz p2, :cond_9

    const v0, 0x10a08

    :goto_5
    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->i(I)V

    goto :goto_2

    :cond_9
    const v0, 0x10a09

    goto :goto_5
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/ChattingUI;I)V
    .locals 11

    const/16 v10, 0x1013

    const/16 v9, 0x25

    const/4 v8, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->j:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    add-int/lit8 v3, p1, -0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    if-eqz v0, :cond_0

    const-string v4, "MicroMsg.ChattingUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CreateTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, v2}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->A()V

    const v1, 0x7f0a0158

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0xfa0

    invoke-static {p0, v1, v4, v5}, Lcom/tencent/mm/ui/MMToast;->a(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;J)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->C:Landroid/widget/PopupWindow;

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->a(ILcom/tencent/mm/storage/MsgInfo;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->m()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->l(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$MailContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$MailContent;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "msgid"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$MailContent;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$MailContent;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-class v1, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->l()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v1

    if-ne v1, v2, :cond_7

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->c(I)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {p0, v2}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->c()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->b(I)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v1

    goto :goto_1

    :cond_8
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v3

    if-ne v3, v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->c()I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(JI)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->m()Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->c()I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(JI)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->n()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->r:Z

    if-eqz v3, :cond_d

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_d
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/MsgInfoStorage;->n(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$FriendContent;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_Nick"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_QuanPin"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_PyInitial"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_Uin"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->i()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "Contact_Mobile_MD5"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_full_Mobile_MD5"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Contact_QQNick"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "User_From_Fmessage"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "Contact_Scene"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->g()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Contact_FMessageCard"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->g()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/model/PostTaskFMessageCardStat;->a(I)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v3

    if-ne v3, v9, :cond_12

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MicroMsg.ChattingUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dealClickVerifyMsgEvent : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/MsgInfoStorage;->m(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$VerifyContent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v4

    if-lez v4, :cond_11

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_f

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->h()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f0a015f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_f
    :goto_4
    const-string v4, "Contact_Content"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_verify_Scene"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->h()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Contact_Uin"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->j()J

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "Contact_QQNick"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_Mobile_MD5"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "User_From_Fmessage"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "Contact_from_msgType"

    invoke-virtual {v1, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->h()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/model/PostTaskFMessageCardStat;->a(I)V

    goto/16 :goto_0

    :cond_10
    move v0, v1

    goto/16 :goto_2

    :cond_11
    const-string v0, "User_Verify"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "Contact_User"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_Nick"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_QuanPin"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_PyInitial"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_Sex"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->l()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Contact_Signature"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_Scene"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->h()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Contact_FMessageCard"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "Contact_City"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Contact_Province"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    :pswitch_1
    const v0, 0x7f0a015d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_12
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_1a

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfoStorage;->n(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$FriendContent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->g()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/mm/model/PostTaskFMessageCardStat;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v2

    if-lez v2, :cond_13

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Lcom/tencent/mm/storage/Contact;Lcom/tencent/mm/storage/MsgInfo$FriendContent;)V

    goto/16 :goto_0

    :cond_13
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->i()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_19

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/AddrUpload;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/tencent/mm/modelfriend/AddrUpload;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Lcom/tencent/mm/modelfriend/AddrUpload;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_16

    :cond_14
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v2

    if-lez v2, :cond_15

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Lcom/tencent/mm/storage/Contact;Lcom/tencent/mm/storage/MsgInfo$FriendContent;)V

    :goto_5
    const-string v1, "MicroMsg.ChattingUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error : this is not the mobile contact, MD5 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Lcom/tencent/mm/storage/MsgInfo$FriendContent;)V

    goto :goto_5

    :cond_16
    invoke-virtual {v2}, Lcom/tencent/mm/modelfriend/AddrUpload;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v2}, Lcom/tencent/mm/modelfriend/AddrUpload;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_18

    :cond_17
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelfriend/AddrUpload;->g(Ljava/lang/String;)V

    const/16 v1, 0x80

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/modelfriend/AddrUpload;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->a(Ljava/lang/String;Lcom/tencent/mm/modelfriend/AddrUpload;)I

    move-result v1

    if-ne v1, v8, :cond_18

    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "update mobile contact username failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Lcom/tencent/mm/storage/MsgInfo$FriendContent;)V

    goto/16 :goto_0

    :cond_19
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Lcom/tencent/mm/storage/MsgInfo$FriendContent;)V

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->p()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {p0, v2}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/modelvideo/VideoLogic;->e(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v3

    const-string v4, "MicroMsg.ChattingUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is sender:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1c
    :goto_6
    :sswitch_0
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelvideo/VideoLogic;->e(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v2

    const-string v3, "MicroMsg.ChattingUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is sender:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->r()I

    move-result v3

    if-nez v3, :cond_1f

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "VideoPlayer_File_nam"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->r()I

    move-result v4

    if-nez v4, :cond_1d

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "VideoRecorder_VideoSize"

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "VideoRecorder_VideoLength"

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->m()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "VideoPlayer_File_nam"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    :cond_1d
    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/VideoInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1c

    const v3, 0x7f0a032e

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :sswitch_2
    invoke-static {p0}, Lcom/tencent/mm/network/NetService;->b(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/tencent/mm/ui/chatting/ChattingUI;->a:Z

    if-nez v3, :cond_1e

    sput-boolean v2, Lcom/tencent/mm/ui/chatting/ChattingUI;->a:Z

    const v3, 0x7f0a0331

    const v4, 0x7f0a0010

    new-instance v5, Lcom/tencent/mm/ui/chatting/ChattingUI$35;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI$35;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/MsgInfo;)V

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto/16 :goto_6

    :cond_1e
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/modelvideo/VideoLogic;->d(Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/mm/ui/video/VideoDownloadUI;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "file_name"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    :cond_1f
    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0a032e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_20
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->q()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/chatting/CustomSmileyPreviewUI;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "custom_smiley_preview_md5"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_21
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v1

    const/16 v3, 0x30

    if-ne v1, v3, :cond_24

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_22

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_22
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->o(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$LocationContent;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_23
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "kwebmap_slat"

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$LocationContent;->a()D

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v4, "kwebmap_lng"

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$LocationContent;->b()D

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string v4, "kwebmap_scale"

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$LocationContent;->c()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Kwebmap_locaion"

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->D:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-virtual {v4, v0}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a(Lcom/tencent/mm/storage/MsgInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "kimg_path"

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "kwebmap_from_to"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_24
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "uknown msg type"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x6f -> :sswitch_2
        0x70 -> :sswitch_0
        0x71 -> :sswitch_0
        0xc7 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->n:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/chatting/ChattingUI;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->t:J

    return-wide v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->u:Landroid/widget/Toast;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "showImg : imgPath is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-class v0, Lcom/tencent/mm/ui/tools/CropImageUI;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CropImage_bCrop"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->r:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic f(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->B()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/platformtools/MTimerHandler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->E:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/platformtools/MTimerHandler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->G:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-object v0
.end method

.method private h(I)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->F()V

    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic i(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/chatting/AutoPlay;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    return-object v0
.end method

.method private static i(I)V
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "MicroMsg.ChattingUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recv egg tyep:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic j(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->j:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    if-eqz v0, :cond_0

    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->O:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->y:Landroid/media/ToneGenerator;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->o:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingUI$34;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$34;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->I:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->w:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->H:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;)V

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->j()Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->E:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->G:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->t:J

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->f()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->f()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->G()V

    return-void
.end method

.method static synthetic p(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->r:Z

    return v0
.end method

.method static synthetic q(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/ui/MMPullDownView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->m:Lcom/tencent/mm/ui/MMPullDownView;

    return-object v0
.end method

.method static synthetic r(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic s(Lcom/tencent/mm/ui/chatting/ChattingUI;)Lcom/tencent/mm/storage/Contact;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    return-object v0
.end method

.method static synthetic t(Lcom/tencent/mm/ui/chatting/ChattingUI;)Z
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->C()Z

    move-result v0

    return v0
.end method

.method static synthetic u(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/tencent/mm/ui/AddressUI;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "Contact_GroupFilter_Type"

    const-string v2, "@micromsg.qq.com"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "List_Type"

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "received_card_name"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->r:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->n()Lcom/tencent/mm/storage/ChatroomMembersStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ChatroomMembersStorage;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v2, ","

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "Block_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Add_SendCard"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic v(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/media/ToneGenerator;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->y:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic w(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->p:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic x(Lcom/tencent/mm/ui/chatting/ChattingUI;)Landroid/app/ProgressDialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->p:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic y(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->o:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingUI$10;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$10;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic z(Lcom/tencent/mm/ui/chatting/ChattingUI;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030026

    return v0
.end method

.method public final a(IILcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 3

    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneProgressEnd : offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalLen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 7

    const-wide/16 v5, 0x3a98

    const/4 v4, 0x1

    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneEnd: errType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->p:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->p:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->p:Landroid/app/ProgressDialog;

    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/platformtools/Util;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    :sswitch_0
    return-void

    :cond_2
    const/16 v0, 0xa

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_3
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_1
    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneDirectSend;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneDirectSend;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneDirectSend;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneDirectSend;->f()[B

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneDirectSend;->f()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    :cond_4
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "unknown directsend op"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneDirectSend;->f()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/TypeTransform;->a([B)I

    move-result v0

    const-string v1, "MicroMsg.ChattingUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "directsend: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->n:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->q()V

    goto :goto_0

    :pswitch_1
    iput-boolean v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->n:Z

    const v0, 0x7f0a014e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->d(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_2
    iput-boolean v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->n:Z

    const v0, 0x7f0a014f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->d(I)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_2
    check-cast p4, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;

    invoke-virtual {p4}, Lcom/tencent/mm/modelvoice/NetSceneUploadVoice;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->j(Ljava/lang/String;)Lcom/tencent/mm/modelvoice/VoiceInfo;

    goto/16 :goto_0

    :cond_6
    const/16 v0, -0x31

    if-ne p2, v0, :cond_7

    new-instance v0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingUI$42;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$42;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->b()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const v0, 0x7f0a0152

    const v1, 0x7f0a0010

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/tencent/mm/storage/MsgInfo;)V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->B:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->g()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a_(Z)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->i()V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a_(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->g()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a_(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->i()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a_(Z)V

    if-nez p1, :cond_3

    const-string v0, "sensor"

    const-string v1, "speaker off"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->d()V

    goto :goto_1

    :cond_3
    const-string v0, "sensor"

    const-string v1, "speaker true"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->A()V

    const v0, 0x7f0a0078

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/MMToast;->a(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;J)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->C:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->i()V

    goto :goto_1
.end method

.method protected final a(II)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, p1, p2, v2}, Lcom/tencent/mm/ui/MMErrorProcessor$CertainError;->a(Landroid/content/Context;III)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Intro_Switch"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/tencent/mm/ui/MMErrorProcessor;->a(Lcom/tencent/mm/ui/MMActivity;IILandroid/content/Intent;)Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->q()V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 9

    const/16 v8, 0x8

    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v7, 0x1

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->X()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "chatstate.cfg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->x:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/AutoPlay;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v2, 0x3c

    invoke-direct {v0, v7, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->y:Landroid/media/ToneGenerator;

    sget-object v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->v:Lcom/tencent/mm/platformtools/SensorController;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/mm/platformtools/SensorController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->v:Lcom/tencent/mm/platformtools/SensorController;

    :cond_1
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->w:Landroid/os/Vibrator;

    new-instance v0, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->I:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnPartListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->s:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->H:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;)V

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->l:Landroid/text/ClipboardManager;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "Chat_User"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    const-string v2, "invalid chatting talker"

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v7

    :goto_1
    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/storage/RoleInfo$Parser;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/tencent/mm/storage/RoleInfo$Parser;-><init>(Ljava/lang/String;)V

    const-string v4, ""

    invoke-virtual {v2, v4}, Lcom/tencent/mm/storage/RoleInfo$Parser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->g:Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "@chatroom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->r:Z

    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ChatFooter;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    const v2, 0x7f070198

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Landroid/view/View;)V

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_2
    move v0, v7

    :goto_2
    invoke-virtual {v4, v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->c(I)V

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0, v8}, Lcom/tencent/mm/ui/chatting/ChatFooter;->setVisibility(I)V

    :cond_4
    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->g()V

    :cond_5
    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->v(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->h()V

    :cond_7
    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->i()V

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$20;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$20;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$21;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$21;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnChooseListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$22;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$22;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$23;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$23;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendRequest;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$24;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$24;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->J:Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStartRequest;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->J:Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStopRequest;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->J:Lcom/tencent/mm/ui/chatting/ChattingUI$RecordResponser;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdCancelRequest;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$25;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$25;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->b(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$26;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$26;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$27;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$27;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnArtSmileySelectListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$28;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$28;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->b(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$29;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$29;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendCustomEmojiListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$30;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$30;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnAddCustomEmojiListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$31;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$31;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$32;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$32;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendCardRequest;)V

    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->j:Landroid/widget/ListView;

    const v0, 0x7f070092

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMPullDownView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->m:Lcom/tencent/mm/ui/MMPullDownView;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->m:Lcom/tencent/mm/ui/MMPullDownView;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/MMPullDownView;->a(Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->m:Lcom/tencent/mm/ui/MMPullDownView;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$14;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$14;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/MMPullDownView;->a(Lcom/tencent/mm/ui/MMPullDownView$OnLoadDataListener;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->d:Landroid/view/View;

    const v2, 0x7f0700c0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->k:Landroid/widget/Button;

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$15;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$15;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->d:Landroid/view/View;

    const v2, 0x7f0700bf

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->r:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_a
    :goto_3
    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingUI$16;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI$16;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    new-instance v2, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v2}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->p()Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->r:Z

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Lcom/tencent/mm/storage/MsgInfo;Ljava/lang/String;Ljava/lang/String;ZLcom/tencent/mm/ui/chatting/AutoPlay;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->l()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingUI$17;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$17;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a(Lcom/tencent/mm/ui/MListAdapter$CallBack;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->j:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setTranscriptMode(I)V

    invoke-virtual {p0, v7}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingUI$18;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$18;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingUI$19;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$19;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/EmojiView$EmojiScrollListener;

    invoke-direct {v1}, Lcom/tencent/mm/ui/chatting/EmojiView$EmojiScrollListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->j:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->s()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->q()V

    new-instance v0, Lcom/tencent/mm/ui/chatting/ChattingUI$11;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$11;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/chatting/ChattingUI$12;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$12;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_b
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->x:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->x:Ljava/util/Map;

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "Chat_Mode"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->x:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_e
    if-ne v2, v6, :cond_12

    if-nez v0, :cond_f

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_2

    :cond_10
    move v0, v1

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    :cond_12
    move v0, v2

    goto/16 :goto_2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.tencent.mm_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings_shake"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method protected final c(Z)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->o:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingUI$33;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/ChattingUI$33;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Z)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAcvityResult requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "onActivityResult: not found this requestCode"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->h:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CropImage_bCrop"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CropImage_bPrev"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CropImage_ImgPath"

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/tencent/mm/platformtools/CameraUtil;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CropImage_bCrop"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CropImage_bPrev"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "CropImage_ImgPath"

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_4
    const-string v0, "Chat_Mode"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->c(I)V

    goto :goto_0

    :pswitch_5
    const-string v0, "CropImage_ImgPath"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->E()V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "art_smiley_slelct_data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Ljava/lang/String;I)Z

    goto/16 :goto_0

    :pswitch_7
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CropImage_OutputPath"

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CropImage_bMatting"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "CropImage_OutputPath"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    const-string v2, ""

    sget v3, Lcom/tencent/mm/modelemoji/EmojiInfo;->g:I

    sget v4, Lcom/tencent/mm/modelemoji/EmojiInfo;->h:I

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Ljava/lang/String;Ljava/lang/String;III)Lcom/tencent/mm/modelemoji/EmojiInfo;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->k()V

    goto/16 :goto_0

    :pswitch_9
    invoke-static {p0}, Lcom/tencent/mm/network/NetService;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0a0331

    const v1, 0x7f0a0010

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$36;

    invoke-direct {v2, p0, p3}, Lcom/tencent/mm/ui/chatting/ChattingUI$36;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;Landroid/content/Intent;)V

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, p3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_9
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v0, v6

    :goto_1
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/chatting/AutoPlay;->g()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v1, v6}, Lcom/tencent/mm/ui/chatting/AutoPlay;->a(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(J)I

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, "medianote"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpDelMsg;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->c()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/tencent/mm/storage/OpLogStorage$OpDelMsg;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    :cond_1
    move v0, v5

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->q()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->i()I

    move-result v1

    sget v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->f:I

    if-ne v1, v2, :cond_3

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->g:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->c(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->k()V

    move v0, v5

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    goto/16 :goto_0

    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.ChattingUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set MyRingtone file is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "voice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ringtone.amr"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v1, "MicroMsg.ChattingUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newPath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7, v5}, Lcom/tencent/mm/platformtools/FilesCopy;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    invoke-virtual {v8, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mime_type"

    const-string v1, "audio/amr"

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "is_ringtone"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "is_notification"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "is_alarm"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "is_music"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {v7}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "MicroMsg.ChattingUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "_data=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v1, "MicroMsg.ChattingUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set riginton "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v6, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    :pswitch_5
    const-string v1, "MicroMsg.ChattingUI"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "content: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->l:Landroid/text/ClipboardManager;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    move v0, v5

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p0, v6}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    move v0, v5

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(I)Z

    :goto_3
    move v0, v5

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0, v6}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    move v0, v5

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->E()V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->q()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p0, v6}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    move v0, v5

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->m()Lcom/tencent/mm/modelemoji/EmojiService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/modelemoji/EmojiService;->a(Ljava/lang/String;Lcom/tencent/mm/modelemoji/EmojiInfo;Lcom/tencent/mm/storage/MsgInfo;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Ljava/lang/String;I)Z

    goto :goto_3

    :pswitch_7
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v0, 0x7f0a0323

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_b
    const v1, 0x7f0a0322

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->r()V

    move v0, v5

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->q()V

    move v0, v5

    goto/16 :goto_1

    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v5

    goto/16 :goto_1

    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "VideoRecorder_ToUser"

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->b()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceMsgExtension;->a(Lcom/tencent/mm/modelvoice/IOnVoiceMsgReceivedNotify;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->a(Lcom/tencent/mm/modelvoice/IOnVoiceMsgReceivedNotify;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ContactStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->K:Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->L:Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->V()Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->M:Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->S()Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->D:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->D:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-static {}, Lcom/tencent/mm/platformtools/LocaleUtil;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a(Ljava/lang/String;Z)V

    :goto_0
    invoke-static {}, Lcom/tencent/mm/ui/chatting/EmojiView;->a()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->G()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->D:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-static {}, Lcom/tencent/mm/platformtools/LocaleUtil;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    const v7, 0x7f0a0142

    const/4 v6, 0x2

    const v3, 0x7f0a013c

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a03d7

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const v1, 0x7f0a013d

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->e()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/4 v1, 0x3

    const v2, 0x7f0a0146

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->l()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->h:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->p()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const v1, 0x7f0a013f

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v1

    const/16 v2, 0xc7

    if-eq v1, v2, :cond_5

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->j()I

    move-result v0

    const/16 v1, 0xc7

    if-ne v0, v1, :cond_0

    :cond_5
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/16 v1, 0x11

    const v2, 0x7f0a0140

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->e()I

    move-result v0

    if-ne v0, v5, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v0

    if-eq v0, v5, :cond_3

    :cond_8
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const v1, 0x7f0a013e

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/16 v1, 0x9

    const v2, 0x7f0a0141

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->q()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const v1, 0x7f0a0143

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->i()I

    move-result v0

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->f:I

    if-ne v0, v1, :cond_3

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/16 v1, 0xc

    const v2, 0x7f0a0144

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->o()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/SmileyUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v6, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    const/16 v1, 0xe

    const v2, 0x7f0a0145

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_b
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v6, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_d

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_d
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v5, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v0

    const/16 v1, 0x2710

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->h(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v7}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v6, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->i:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modelimage/ImgInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceMsgExtension;->b(Lcom/tencent/mm/modelvoice/IOnVoiceMsgReceivedNotify;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/NetSceneDownloadVoice;->b(Lcom/tencent/mm/modelvoice/IOnVoiceMsgReceivedNotify;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->A:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->A:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->y:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->D:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->D:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-virtual {v0}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a()V

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ContactStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->K:Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->L:Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->V()Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->M:Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->n()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->m()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->F()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v8, 0x5

    const/4 v4, 0x4

    const/4 v7, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->l()V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->n()V

    goto :goto_0

    :cond_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    const/16 v1, 0x19

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/AutoPlay;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->B:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->f()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    const-string v1, "MicroMsg.ChattingUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "volume current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " max:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    div-int/lit8 v1, v3, 0x7

    if-nez v1, :cond_3

    move v1, v2

    :cond_3
    sub-int v1, v4, v1

    invoke-virtual {v0, v7, v1, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume current:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " max:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x18

    if-ne p1, v1, :cond_7

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/AutoPlay;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->B:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->f()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    const-string v1, "MicroMsg.ChattingUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "volume current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " max:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    div-int/lit8 v1, v3, 0x7

    if-nez v1, :cond_6

    move v1, v2

    :cond_6
    add-int/2addr v1, v4

    invoke-virtual {v0, v7, v1, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume current:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " max:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-ne p1, v4, :cond_8

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->t()V

    goto/16 :goto_0

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9

    const-wide/16 v7, 0x7d0

    const/4 v6, 0x0

    const v5, 0x7f0a0010

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qqmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "composeType"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a024e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$39;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$39;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-static {p0, v0, v1, v2, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a008e

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$40;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$40;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-static {p0, v0, v1, v2, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->r:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0a008f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const v0, 0x7f0a008d

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    const v0, 0x7f0a0365

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/chatting/ChattingUI$41;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$41;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-static {p0, v0, v1, v2, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Z)V

    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->B:Z

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/chatting/ChattingUI;->f(I)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->A()V

    const v0, 0x7f0a0077

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7, v8}, Lcom/tencent/mm/ui/MMToast;->a(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;J)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->C:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->i()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Z)V

    iput-boolean v4, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->B:Z

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->f(I)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->A()V

    const v0, 0x7f0a0078

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7, v8}, Lcom/tencent/mm/ui/MMToast;->a(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;J)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->C:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->i()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->F:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->N:Lcom/tencent/mm/ui/chatting/SendMessageFaster;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->u()Z

    const-string v0, ""

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->b(Lcom/tencent/mm/model/IOnNewMsgNotify;)V

    invoke-static {p0}, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->b(Lcom/tencent/mm/model/IOnSendMsgFailNotify;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->b(Lcom/tencent/mm/modelvideo/VideoInfoStorage$IOnVideoInfoChanged;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->x:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x1a

    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->B:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "chatstate.cfg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->x:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "record stop on pause"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->B()Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->E:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->G:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->e()V

    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keep_chatting_silent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->q:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->v:Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sget-object v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->v:Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/SensorController;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/chatting/AutoPlay;->a(Z)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Landroid/content/Context;Z)Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->A()V

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/EmojiView;->b(Z)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.ChattingUI"

    const-string v1, "sensor receiver has already unregistered"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    const v5, 0x7f020183

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qqmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a016e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02017e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v0, 0x7f0a016f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->B:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    const v1, 0x7f0a0173

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020182

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_1
    const v0, 0x7f0a013b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->r:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0382

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v4, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020180

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    const v1, 0x7f0a0174

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020181

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 6

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "MicroMsg.ChattingUI"

    const-string v3, "onResume"

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->F:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->N:Lcom/tencent/mm/ui/chatting/SendMessageFaster;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/SendMessageFaster;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keep_chatting_silent"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->a(Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->c()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->e()V

    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(Lcom/tencent/mm/model/IOnNewMsgNotify;)V

    invoke-static {p0}, Lcom/tencent/mm/modelmulti/NetSceneSendMsg;->a(Lcom/tencent/mm/model/IOnSendMsgFailNotify;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(Lcom/tencent/mm/modelvideo/VideoInfoStorage$IOnVideoInfoChanged;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v3, 0x1a

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->B:Z

    :goto_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->B:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->f(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->r:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->H()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->g(I)V

    :goto_2
    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->B:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->a_(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->q:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/mm/ui/chatting/ChattingUI;->v:Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {p0, v3, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->v:Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/platformtools/SensorController;->a(Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->z:Lcom/tencent/mm/ui/chatting/AutoPlay;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->h()V

    sget-boolean v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->e:Z

    if-eqz v0, :cond_2

    sput-boolean v2, Lcom/tencent/mm/ui/chatting/ChattingUI;->e:Z

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c(Z)V

    :cond_2
    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/EmojiView;->b(Z)V

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/EmojiView;->a(Z)V

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->B:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->f(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/ChattingUI;->g(I)V

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3
.end method

.method protected p()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected q()V
    .locals 6

    const v5, 0x7f0a009c

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->p()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    const v1, 0x7f0a0159

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/ChatroomMembersLogic;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v5, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->d(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->l()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v4, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->z()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/ChatroomMembersLogic;->e(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v5, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected r()Z
    .locals 2

    invoke-static {p0}, Lcom/tencent/mm/platformtools/Util;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-class v1, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected s()V
    .locals 5

    const v4, 0x7f0201c8

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChattingUI$13;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChattingUI$13;-><init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x7f0201c5

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    const-string v2, "@chatroom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/model/ChatroomMembersLogic;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p0, v4, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v4, v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->c(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    goto :goto_0
.end method

.method protected t()V
    .locals 3

    const/high16 v2, 0x400

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/TConversationUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/QConversationUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/MainTabUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final u()Z
    .locals 8

    const/4 v7, 0x4

    const-string v0, "MicroMsg.ChattingUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeOpLogAndMarkRead :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->e(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->k(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v0}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/MsgInfo;->a(Landroid/database/Cursor;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_3

    invoke-virtual {v0, v7}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->f:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    const-string v4, "medianote"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->c()I

    move-result v5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v7, v6, v1}, Lcom/tencent/mm/storage/OpLogStorage$OpModMsgStatus;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    :cond_2
    const-string v3, "MicroMsg.ChattingUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeOpLog: msgSvrId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->c()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->e()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConversationStorage;->e(Ljava/lang/String;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->h(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected final v()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->j:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setKeepScreenOn(Z)V

    return-void
.end method

.method protected final w()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->j:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public final x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->B:Z

    return v0
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->b:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->f()Z

    move-result v0

    return v0
.end method

.method public final z()Lcom/tencent/mm/ui/chatting/ChattingListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;->c:Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    return-object v0
.end method
