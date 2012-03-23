.class public Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# static fields
.field private static a:J


# instance fields
.field private b:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

.field private c:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr$CallBack;

.field private d:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr$1;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->d:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->d:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;

    invoke-direct {v0, p1, v1}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->b:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->c()V

    return-void
.end method

.method private static c()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->o()Lcom/tencent/mm/modelbase/LocalAccInfo;

    move-result-object v0

    const-string v1, ""

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->o()Lcom/tencent/mm/modelbase/LocalAccInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/modelbase/LocalAccInfo;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelbase/LocalAccInfo;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->b:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->b:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a()V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x26

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->c:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->c:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr$CallBack;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr$CallBack;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->c:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr$CallBack;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->a:J

    return-void
.end method

.method public final a(Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr$CallBack;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->c:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr$CallBack;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->b:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->b:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->c()V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->a()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
