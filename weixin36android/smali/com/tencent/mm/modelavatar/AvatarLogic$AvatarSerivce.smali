.class public Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# static fields
.field private static a:Z

.field private static c:J


# instance fields
.field private b:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private d:Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->a:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce$1;-><init>(Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->b:Lcom/tencent/mm/platformtools/MTimerHandler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->d:Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarUserManager;->c()V

    sput-boolean v2, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->d()V

    return-void
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->a(Z)V

    return-void
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->a(Z)V

    return-void
.end method

.method private d()V
    .locals 6

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v0

    sget-boolean v2, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->a:Z

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->a:Z

    :cond_0
    sget-boolean v2, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->a:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarUserManager;->a()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-lez v2, :cond_1

    sput-wide v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->c:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->a:Z

    new-instance v0, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;

    invoke-direct {v0}, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->d:Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->d:Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->d:Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->d:Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarUserManager;->b()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->a:Z

    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 2

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->d:Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->a:Z

    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarUserManager;->a()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->d()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MicroMsg.AvatarLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avatar service push :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarUserManager;->a()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarUserManager;->a()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->d()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->b:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MicroMsg.AvatarLogic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avatar service pushHighPriority :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarUserManager;->a()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->d()V

    return-void
.end method

.method protected finalize()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
