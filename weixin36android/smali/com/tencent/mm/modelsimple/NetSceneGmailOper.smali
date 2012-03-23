.class public Lcom/tencent/mm/modelsimple/NetSceneGmailOper;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final c:Lcom/tencent/mm/network/IReqResp;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    iput p1, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->e:I

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper$MMReqRespGmailOper;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/NetSceneGmailOper$MMReqRespGmailOper;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGmailOper$Req;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMGmailOper$Req;->a(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/mm/protocal/MMGmailOper$Req;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/tencent/mm/protocal/MMGmailOper$Req;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->d:I

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->b(I)V

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGmailOper$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGmailOper$Resp;->b_()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->d:I

    const-string v0, "MicroMsg.NetSceneGmailOper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd, retCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->d:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->e:I

    return v0
.end method
