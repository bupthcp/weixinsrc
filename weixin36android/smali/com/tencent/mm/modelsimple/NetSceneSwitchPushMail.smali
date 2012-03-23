.class public Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private final d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->e:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->d:Z

    invoke-static {p2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 2

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail$MMReqRespSwitchPushMail;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail$MMReqRespSwitchPushMail;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSwitchPushMail$Req;

    iget-boolean v1, p0, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMSwitchPushMail$Req;->a(I)V

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMSwitchPushMail$Req;->a(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 3

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSwitchPushMail$Resp;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSwitchPushMail$Resp;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/modelsimple/NetSceneSwitchPushMail;->d:Z

    return v0
.end method
