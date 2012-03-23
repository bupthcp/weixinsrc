.class public Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private final a:Lcom/tencent/mm/network/IReqResp;

.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember$MMReqRespAddChatRoomMember;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember$MMReqRespAddChatRoomMember;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->a:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Req;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Req;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Req;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Req;->a(Ljava/util/List;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->d:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->e:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->f:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 9

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Req;

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp;->b_()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp;->d()Ljava/util/List;

    move-result-object v5

    move v3, v2

    move v4, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;->e()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v6, 0x3

    if-ne v2, v6, :cond_2

    const-string v4, "MicroMsg.NetSceneAddChatRoomMember"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " blacklist : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->e:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, -0x16

    :cond_1
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    if-ne v2, v6, :cond_3

    const-string v4, "MicroMsg.NetSceneAddChatRoomMember"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " not user : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->f:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v4, -0x15

    goto :goto_2

    :cond_3
    const/4 v6, 0x2

    if-ne v2, v6, :cond_4

    const-string v4, "MicroMsg.NetSceneAddChatRoomMember"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " invalid username : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0xe

    iget-object v6, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->d:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v6, 0x4

    if-ne v2, v6, :cond_5

    const-string v4, "MicroMsg.NetSceneAddChatRoomMember"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " verify user : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, -0x2c

    iget-object v6, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->g:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp$MemberResp;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    const-string v6, "MicroMsg.NetSceneAddChatRoomMember"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown member status : status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, v4, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAddChatRoomMember$Req;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/mm/model/ChatroomMembersLogic;->a(Ljava/lang/String;Lcom/tencent/mm/protocal/MMAddChatRoomMember$Resp;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->d:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->e:Ljava/util/List;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneAddChatRoomMember;->g:Ljava/util/List;

    return-object v0
.end method
