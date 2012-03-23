.class public Lcom/tencent/mm/booter/NotifyReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Lcom/tencent/mm/platformtools/MMWakerLock;

.field private static b:Landroid/content/Context;

.field private static c:Landroid/content/Intent;

.field private static d:Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/booter/NotifyReceiver;->a:Lcom/tencent/mm/platformtools/MMWakerLock;

    invoke-static {}, Lcom/tencent/mm/booter/NotifyReceiver;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    sput-object p0, Lcom/tencent/mm/booter/NotifyReceiver;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a()V
    .locals 4

    const/16 v3, 0x27

    const/16 v2, 0x26

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/booter/NotifyReceiver;->d:Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/booter/NotifyReceiver;->d:Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd;

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    sget-object v0, Lcom/tencent/mm/booter/NotifyReceiver;->d:Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd;

    invoke-direct {v0}, Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd;-><init>()V

    sput-object v0, Lcom/tencent/mm/booter/NotifyReceiver;->d:Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd;

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/booter/NotifyReceiver;->d:Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/booter/NotifyReceiver;->d:Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd;

    invoke-virtual {v0, v3, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method protected static b()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-object v0, Lcom/tencent/mm/booter/NotifyReceiver;->c:Landroid/content/Intent;

    const-string v1, "notify_uin"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MicroMsg.NotifyReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveImp accStg not seting uin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/model/AccountStorage;->a(I)V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, "MicroMsg.NotifyReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveImp hasSetuin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isHold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->w()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    :sswitch_0
    return-void

    :cond_3
    sget-object v0, Lcom/tencent/mm/booter/NotifyReceiver;->c:Landroid/content/Intent;

    const-string v1, "notify_option_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v1, "MicroMsg.NotifyReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invald opCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/tencent/mm/booter/NotifyReceiver;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/booter/NotifyReceiver;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/mm/booter/NotifyReceiver;->b:Landroid/content/Context;

    const-string v1, "MicroMsg.NotifyReceiver"

    const-string v2, "dealWithLooper"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->w()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string v0, "MicroMsg.NotifyReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveImp hasSetuin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isHold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->w()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "MicroMsg.NotifyReceiver"

    const-string v2, "Looper run"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    iget v2, v1, Landroid/text/format/Time;->hour:I

    iget v1, v1, Landroid/text/format/Time;->minute:I

    invoke-static {v2, v1, v0}, Lcom/tencent/mm/network/NetService;->a(IILandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "background active time limited"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->d()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lcom/tencent/mm/network/NetService;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->i()Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Service;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->j()Lcom/tencent/mm/modelvideo/VideoService$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoService$Service;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->l()Lcom/tencent/mm/modelimage/ImgService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgService;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/network/IDispatcher;->b()V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelsimple/NetSceneSynCheck;

    invoke-direct {v1}, Lcom/tencent/mm/modelsimple/NetSceneSynCheck;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_1

    :sswitch_2
    sget-object v0, Lcom/tencent/mm/booter/NotifyReceiver;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/mm/booter/NotifyReceiver;->b(Landroid/content/Context;)V

    sget-object v0, Lcom/tencent/mm/booter/NotifyReceiver;->c:Landroid/content/Intent;

    const-string v1, "MicroMsg.NotifyReceiver"

    const-string v2, "dealWithNotify"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "notify_respType"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "notify_respBuf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    sparse-switch v1, :sswitch_data_1

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "MicroMsg.NotifyReceiver"

    const-string v3, "on direct send notify"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/mm/protocal/MMDirectSend$Resp;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/MMDirectSend$Resp;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/MMDirectSend$Resp;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/tencent/mm/pointers/PByteArray;

    invoke-direct {v3}, Lcom/tencent/mm/pointers/PByteArray;-><init>()V

    invoke-static {v1, v2, v0, v5, v3}, Lcom/tencent/mm/protocal/MMProtocalJni;->bufToResp(ILcom/tencent/mm/protocal/MMBase$Resp;[BLjava/lang/String;Lcom/tencent/mm/pointers/PByteArray;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const-string v1, ""

    new-instance v3, Lcom/tencent/mm/modelsimple/NetSceneDirectSend;

    invoke-direct {v3, v2}, Lcom/tencent/mm/modelsimple/NetSceneDirectSend;-><init>(Lcom/tencent/mm/protocal/MMBase$Resp;)V

    invoke-virtual {v0, v4, v4, v1, v3}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "MicroMsg.NotifyReceiver"

    const-string v2, "on sync notify"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_9

    const-wide/16 v0, 0x7

    :goto_2
    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/modelmulti/NewSyncMgr;->a(JI)V

    goto/16 :goto_0

    :cond_9
    invoke-static {v0}, Lcom/tencent/mm/algorithm/TypeTransform;->a([B)I

    move-result v0

    int-to-long v0, v0

    goto :goto_2

    :sswitch_5
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelsimple/NetSceneSynCheck;

    invoke-direct {v1}, Lcom/tencent/mm/modelsimple/NetSceneSynCheck;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->k()Lcom/tencent/mm/modelvoip/VoipService;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/modelvoip/VoipService;->a(Lcom/tencent/mm/protocal/protobuf/CmdList;)I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x63 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_3
        0x26 -> :sswitch_4
        0x27 -> :sswitch_5
        0x4a -> :sswitch_6
    .end sparse-switch
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/tencent/mm/platformtools/MMWakerLock;

    invoke-direct {v0, p0}, Lcom/tencent/mm/platformtools/MMWakerLock;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/mm/booter/NotifyReceiver;->a:Lcom/tencent/mm/platformtools/MMWakerLock;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MMWakerLock;->a()V

    return-void
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/mm/booter/NotifyReceiver;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d()Lcom/tencent/mm/platformtools/MMWakerLock;
    .locals 1

    sget-object v0, Lcom/tencent/mm/booter/NotifyReceiver;->a:Lcom/tencent/mm/platformtools/MMWakerLock;

    return-object v0
.end method

.method static synthetic e()Lcom/tencent/mm/platformtools/MMWakerLock;
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/booter/NotifyReceiver;->a:Lcom/tencent/mm/platformtools/MMWakerLock;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.tencent.mm_preferences"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings_fully_exit"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "fully exited, no need to start service"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sput-object p1, Lcom/tencent/mm/booter/NotifyReceiver;->b:Landroid/content/Context;

    sput-object p2, Lcom/tencent/mm/booter/NotifyReceiver;->c:Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/booter/NotifyReceiver;->b()V

    goto :goto_0

    :cond_1
    const-string v0, "notify_respType"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "in the background mode, the directsend ignore"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->a(Landroid/content/Context;)V

    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "ready processing, peeking service"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.tencent.mm.booter.CoreService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mm/booter/NotifyReceiver;->peekService(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/tencent/mm/modelbase/RDispatcher;

    invoke-static {v0}, Lcom/tencent/mm/network/IDispatcher_AIDL$Stub;->a(Landroid/os/IBinder;)Lcom/tencent/mm/network/IDispatcher_AIDL;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/booter/NotifyReceiver$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/booter/NotifyReceiver$1;-><init>(Lcom/tencent/mm/booter/NotifyReceiver;)V

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/modelbase/RDispatcher;-><init>(Lcom/tencent/mm/network/IDispatcher_AIDL;Lcom/tencent/mm/modelbase/RDispatcher$IDeadObjectFixer;)V

    invoke-static {v1}, Lcom/tencent/mm/model/MMCore;->a(Lcom/tencent/mm/network/IDispatcher;)V

    invoke-static {}, Lcom/tencent/mm/booter/NotifyReceiver;->b()V

    goto :goto_0

    :cond_3
    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "core service has been shut down, skip current request"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/booter/NotifyReceiver$NotifyService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
