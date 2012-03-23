.class public Lcom/tencent/mm/modelgetvuserinfo/NetSceneGetVUserInfo;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final c:Lcom/tencent/mm/network/IReqResp;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelgetvuserinfo/NetSceneGetVUserInfo;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelgetvuserinfo/NetSceneGetVUserInfo$MMReqRespGetVUserInfo;

    invoke-direct {v0}, Lcom/tencent/mm/modelgetvuserinfo/NetSceneGetVUserInfo$MMReqRespGetVUserInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelgetvuserinfo/NetSceneGetVUserInfo;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelgetvuserinfo/NetSceneGetVUserInfo;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetVUserInfo$Req;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMGetVUserInfo$Req;->a(I)V

    const-string v0, "MicroMsg.NetSceneGetVUserInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " init version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(IZ[B)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->R()Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;->a(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelgetvuserinfo/NetSceneGetVUserInfo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelgetvuserinfo/NetSceneGetVUserInfo;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelgetvuserinfo/NetSceneGetVUserInfo;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelgetvuserinfo/NetSceneGetVUserInfo;->b(I)V

    const-string v0, "MicroMsg.NetSceneGetVUserInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd  errType:"

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

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->R()Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;->a()Z

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetVUserInfo$Resp;

    move v2, v3

    :goto_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetVUserInfo$Resp;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetVUserInfo$Resp;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;

    new-instance v4, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;

    invoke-direct {v4}, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->a(I)V

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->R()Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;->a(Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;)Z

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->a()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->d()[B

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/tencent/mm/modelgetvuserinfo/NetSceneGetVUserInfo;->a(IZ[B)Z

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->a()I

    move-result v4

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMGetVUserInfo$VUserInfo;->c()[B

    move-result-object v1

    invoke-static {v4, v3, v1}, Lcom/tencent/mm/modelgetvuserinfo/NetSceneGetVUserInfo;->a(IZ[B)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelgetvuserinfo/NetSceneGetVUserInfo;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x39

    return v0
.end method
