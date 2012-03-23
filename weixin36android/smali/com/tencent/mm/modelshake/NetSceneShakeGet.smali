.class public Lcom/tencent/mm/modelshake/NetSceneShakeGet;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Lcom/tencent/mm/network/IReqResp;

.field private d:Ljava/util/List;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelshake/NetSceneShakeGet$MMReqRespShakeGet;

    invoke-direct {v0}, Lcom/tencent/mm/modelshake/NetSceneShakeGet$MMReqRespShakeGet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMShakeGet$Req;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMShakeGet$Req;->a:Lcom/tencent/mm/protocal/protobuf/ShakeGetRequest;

    new-instance v2, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-static {p1}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/ShakeGetRequest;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/ShakeGetRequest;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMShakeGet$Req;->a:Lcom/tencent/mm/protocal/protobuf/ShakeGetRequest;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/ShakeGetRequest;->c()Lcom/tencent/mm/protocal/protobuf/ShakeGetRequest;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 2

    const-string v0, "MicroMsg.NetSceneShakeGet"

    const-string v1, "doScene"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 9

    const-string v0, "MicroMsg.NetSceneShakeGet"

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

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMShakeGet$Resp;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->d:Ljava/util/List;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMShakeGet$Resp;->a:Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;->g()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->e:I

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMShakeGet$Resp;->a:Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;->h()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->f:I

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMShakeGet$Resp;->a:Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->g:Ljava/lang/String;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMShakeGet$Resp;->a:Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;->d()I

    move-result v1

    const-string v2, "MicroMsg.NetSceneShakeGet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v3

    if-lez v1, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->I()Lcom/tencent/mm/modelshake/ShakeItemStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->e()V

    invoke-virtual {v4, v1}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v5

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_3

    new-instance v6, Lcom/tencent/mm/modelshake/ShakeItem;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMShakeGet$Resp;->a:Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/ShakeGetResponse;->e()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    invoke-direct {v6, v1}, Lcom/tencent/mm/modelshake/ShakeItem;-><init>(Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;)V

    invoke-virtual {v6}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/tencent/mm/modelshake/ShakeItem;->k()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v7, v1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/String;Z)Z

    invoke-virtual {v6}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/tencent/mm/modelshake/ShakeItem;->j()I

    move-result v7

    invoke-static {v1, v7}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/String;I)Z

    invoke-virtual {v6}, Lcom/tencent/mm/modelshake/ShakeItem;->j()I

    move-result v1

    const/4 v7, 0x4

    if-eq v1, v7, :cond_0

    :try_start_0
    invoke-virtual {v6}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/tencent/mm/modelshake/ShakeItem;->l()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    invoke-virtual {v6}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v6, v1}, Lcom/tencent/mm/modelshake/ShakeItem;->h(I)V

    invoke-virtual {v4, v6}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->a(Lcom/tencent/mm/modelshake/ShakeItem;)Z

    iget-object v1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->d:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "MicroMsg.NetSceneShakeGet"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "item info: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/tencent/mm/modelshake/ShakeItem;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v1, "MicroMsg.NetSceneShakeGet"

    const-string v7, "user not set imgbuf"

    invoke-static {v1, v7}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x34

    return v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->d:Ljava/util/List;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->e:I

    return v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->f:I

    return v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->g:Ljava/lang/String;

    return-object v0
.end method
