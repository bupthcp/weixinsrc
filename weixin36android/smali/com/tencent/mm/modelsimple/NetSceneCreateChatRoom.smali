.class public Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final c:Lcom/tencent/mm/network/IReqResp;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const-string v1, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topic : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " size : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " username : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom$MMReqRespCreateChatRoom;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom$MMReqRespCreateChatRoom;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->c:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Req;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Req;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Req;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Req;->a(Ljava/util/List;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->d:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->e:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->f:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->g:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->b_()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->k()Ljava/util/List;

    move-result-object v4

    move v2, v1

    move v3, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;->e()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_2

    const-string v3, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " blacklist : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, -0x16

    :cond_1
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    const-string v3, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " not user : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->f:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v3, -0x15

    goto :goto_2

    :cond_3
    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    const-string v3, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " invalid username : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0xe

    iget-object v5, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->d:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v5, 0x4

    if-ne v1, v5, :cond_5

    const-string v3, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " verify user : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0x2c

    iget-object v5, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->g:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    const-string v5, "MicroMsg.NetSceneCreateChatRoom"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown member status : status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, v3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_7
    invoke-static {v0}, Lcom/tencent/mm/model/ChatroomMembersLogic;->a(Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->c:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->b()I

    move-result v0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->d:Ljava/util/List;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->e:Ljava/util/List;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneCreateChatRoom;->g:Ljava/util/List;

    return-object v0
.end method
