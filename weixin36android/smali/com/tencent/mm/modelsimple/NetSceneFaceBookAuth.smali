.class public Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    iput p1, p0, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;->d:I

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth$MMReqRespFaceBookAuth;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth$MMReqRespFaceBookAuth;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMFaceBookAuth$Req;

    invoke-static {p2}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v1, v0, Lcom/tencent/mm/protocal/MMFaceBookAuth$Req;->a:Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;

    invoke-virtual {v1, p2}, Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMFaceBookAuth$Req;->a:Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;->a(I)Lcom/tencent/mm/protocal/protobuf/FaceBookAuthRequest;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;->b(I)V

    const-string v0, "MicroMsg.NetSceneFaceBookAuth"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd errType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMFaceBookAuth$Resp;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMFaceBookAuth$Resp;->a:Lcom/tencent/mm/protocal/protobuf/FaceBookAuthResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/FaceBookAuthResponse;->c()Lcom/tencent/mm/protocal/protobuf/BaseResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/BaseResponse;->c()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "MicroMsg.NetSceneFaceBookAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "baseresponse.ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "MicroMsg.NetSceneFaceBookAuth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fbuserid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMFaceBookAuth$Resp;->a:Lcom/tencent/mm/protocal/protobuf/FaceBookAuthResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/FaceBookAuthResponse;->d()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fbusername = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMFaceBookAuth$Resp;->a:Lcom/tencent/mm/protocal/protobuf/FaceBookAuthResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/FaceBookAuthResponse;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const v2, 0x10121

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/mm/protocal/MMFaceBookAuth$Resp;->a:Lcom/tencent/mm/protocal/protobuf/FaceBookAuthResponse;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/protobuf/FaceBookAuthResponse;->d()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMFaceBookAuth$Resp;->a:Lcom/tencent/mm/protocal/protobuf/FaceBookAuthResponse;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/FaceBookAuthResponse;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const v2, 0x10122

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMFaceBookAuth$Resp;->a:Lcom/tencent/mm/protocal/protobuf/FaceBookAuthResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/FaceBookAuthResponse;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x54

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;->d:I

    return v0
.end method
