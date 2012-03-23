.class public Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private final a:Lcom/tencent/mm/network/IReqResp;

.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private d:Lcom/tencent/mm/algorithm/CnToSpell;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->d:Lcom/tencent/mm/algorithm/CnToSpell;

    new-instance v0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend$MMReqRespGetMFriend;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend$MMReqRespGetMFriend;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->a:Lcom/tencent/mm/network/IReqResp;

    new-instance v0, Lcom/tencent/mm/algorithm/CnToSpell;

    invoke-direct {v0}, Lcom/tencent/mm/algorithm/CnToSpell;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->d:Lcom/tencent/mm/algorithm/CnToSpell;

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetMFriend$Req;

    iget-object v1, v0, Lcom/tencent/mm/protocal/MMGetMFriend$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMGetMFriend$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;->a(I)Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 11

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->b(I)V

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/16 v0, -0x44

    if-ne p3, v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface/range {p5 .. p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetMFriend$Resp;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMGetMFriend$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;->c()Lcom/tencent/mm/protocal/protobuf/BaseResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/BaseResponse;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p2, p3, v0, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    const-string v0, "MicroMsg.NetSceneGetMFriend"

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

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_2
    const-string v0, "MicroMsg.NetSceneGetMFriend"

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

    invoke-interface/range {p5 .. p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetMFriend$Resp;

    invoke-interface/range {p5 .. p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/protocal/MMGetMFriend$Req;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const v3, 0x10124

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/mm/protocal/MMGetMFriend$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;->c()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMGetMFriend$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/tencent/mm/protocal/MMGetMFriend$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const v3, 0x10124

    iget-object v4, v0, Lcom/tencent/mm/protocal/MMGetMFriend$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->x()Lcom/tencent/mm/modelfriend/FacebookFriendStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/modelfriend/FacebookFriendStorage;->b()Z

    :cond_3
    iget-object v2, v0, Lcom/tencent/mm/protocal/MMGetMFriend$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;->d()Ljava/util/LinkedList;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "MicroMsg.NetSceneGetMFriend"

    const-string v3, "onGYNetEnd  friendlist null"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storagebase/SqliteDB;->b()I

    move-result v5

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v2, v0, Lcom/tencent/mm/protocal/MMGetMFriend$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;->d()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v3, v2, :cond_12

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMGetMFriend$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/GetMFriendResponse;->d()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/protocal/protobuf/MFriend;

    if-nez v2, :cond_5

    const-string v2, "MicroMsg.NetSceneGetMFriend"

    const-string v4, "Err getFriendList null"

    invoke-static {v2, v4}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/AddrUpload;

    move-result-object v6

    if-nez v6, :cond_6

    iget-object v4, v1, Lcom/tencent/mm/protocal/MMGetMFriend$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;->c()I

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_6

    const-string v2, "MicroMsg.NetSceneGetMFriend"

    const-string v4, "Err MD5 not found is AddrUploadStg"

    invoke-static {v2, v4}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    new-instance v7, Lcom/tencent/mm/modelfriend/FacebookFriend;

    invoke-direct {v7}, Lcom/tencent/mm/modelfriend/FacebookFriend;-><init>()V

    iget-object v4, v1, Lcom/tencent/mm/protocal/MMGetMFriend$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;->c()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_c

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->l()Lcom/tencent/mm/protocal/protobuf/FBFriend;

    move-result-object v4

    if-nez v4, :cond_7

    const-string v2, "MicroMsg.NetSceneGetMFriend"

    const-string v4, "ERR: facebook friend return null info"

    invoke-static {v2, v4}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->l()Lcom/tencent/mm/protocal/protobuf/FBFriend;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/protobuf/FBFriend;->c()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/tencent/mm/modelfriend/FacebookFriend;->a(J)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->l()Lcom/tencent/mm/protocal/protobuf/FBFriend;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/protobuf/FBFriend;->e()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/FacebookFriend;->a(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->l()Lcom/tencent/mm/protocal/protobuf/FBFriend;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/mm/protocal/protobuf/FBFriend;->c()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->l()Lcom/tencent/mm/protocal/protobuf/FBFriend;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/protocal/protobuf/FBFriend;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/FacebookFriend;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/FacebookFriend;->i(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/FacebookFriend;->g(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/FacebookFriend;->f(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/FacebookFriend;->h(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->j()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/FacebookFriend;->d(I)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->f()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/FacebookFriend;->c(I)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/FacebookFriend;->c(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->d:Lcom/tencent/mm/algorithm/CnToSpell;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/tencent/mm/algorithm/CnToSpell;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/FacebookFriend;->d(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->d:Lcom/tencent/mm/algorithm/CnToSpell;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/tencent/mm/algorithm/CnToSpell;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/FacebookFriend;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/FacebookFriend;->b(Ljava/lang/String;)V

    :cond_8
    new-instance v8, Lcom/tencent/mm/modelfriend/FriendExt;

    invoke-direct {v8}, Lcom/tencent/mm/modelfriend/FriendExt;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/tencent/mm/modelfriend/FriendExt;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/tencent/mm/modelfriend/FriendExt;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/tencent/mm/modelfriend/FriendExt;->c(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/tencent/mm/modelfriend/FriendExt;->d(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->f()I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/tencent/mm/modelfriend/FriendExt;->a(I)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->j()I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/tencent/mm/modelfriend/FriendExt;->b(I)V

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->k()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->y()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/tencent/mm/storage/Contact;->f(Ljava/lang/String;)V

    const-wide/16 v9, 0x100

    invoke-virtual {v4, v9, v10}, Lcom/tencent/mm/storage/Contact;->a(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v9

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v4}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/storage/Contact;)I

    :cond_9
    :goto_3
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    const-string v4, "mobile friend never go here"

    iget-object v2, v1, Lcom/tencent/mm/protocal/MMGetMFriend$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;->c()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_e

    const/4 v2, 0x1

    :goto_4
    invoke-static {v4, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const/16 v2, 0x66

    invoke-virtual {v7, v2}, Lcom/tencent/mm/modelfriend/FacebookFriend;->b(I)V

    :cond_a
    :goto_5
    iget-object v2, v1, Lcom/tencent/mm/protocal/MMGetMFriend$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;->c()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->x()Lcom/tencent/mm/modelfriend/FacebookFriendStorage;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/tencent/mm/modelfriend/FacebookFriendStorage;->a(Lcom/tencent/mm/modelfriend/FacebookFriend;)Z

    :cond_b
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->E()Lcom/tencent/mm/modelfriend/FriendExtStorage;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/tencent/mm/modelfriend/FriendExtStorage;->a(Lcom/tencent/mm/modelfriend/FriendExt;)Z

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v2, "MicroMsg.NetSceneGetMFriend"

    const-string v4, "username null for mobile"

    invoke-static {v2, v4}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const/4 v4, 0x0

    goto :goto_3

    :cond_e
    const/4 v2, 0x0

    goto :goto_4

    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v9

    if-nez v9, :cond_11

    :cond_10
    const/16 v4, 0x64

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/FacebookFriend;->b(I)V

    if-eqz v6, :cond_a

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Lcom/tencent/mm/modelfriend/AddrUpload;->c(I)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/tencent/mm/modelfriend/AddrUpload;->g(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/tencent/mm/modelfriend/AddrUpload;->h(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->d:Lcom/tencent/mm/algorithm/CnToSpell;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/tencent/mm/algorithm/CnToSpell;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/tencent/mm/modelfriend/AddrUpload;->i(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->d:Lcom/tencent/mm/algorithm/CnToSpell;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/tencent/mm/algorithm/CnToSpell;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/tencent/mm/modelfriend/AddrUpload;->j(Ljava/lang/String;)V

    const/16 v2, 0x4780

    invoke-virtual {v6, v2}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v2

    invoke-virtual {v6}, Lcom/tencent/mm/modelfriend/AddrUpload;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->a(Ljava/lang/String;Lcom/tencent/mm/modelfriend/AddrUpload;)I

    goto/16 :goto_5

    :cond_11
    const/16 v9, 0x65

    invoke-virtual {v7, v9}, Lcom/tencent/mm/modelfriend/FacebookFriend;->b(I)V

    if-eqz v6, :cond_a

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Lcom/tencent/mm/modelfriend/AddrUpload;->c(I)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/tencent/mm/modelfriend/AddrUpload;->g(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/MFriend;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/tencent/mm/modelfriend/AddrUpload;->h(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/tencent/mm/modelfriend/AddrUpload;->i(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/tencent/mm/modelfriend/AddrUpload;->j(Ljava/lang/String;)V

    const/16 v2, 0x4780

    invoke-virtual {v6, v2}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v2

    invoke-virtual {v6}, Lcom/tencent/mm/modelfriend/AddrUpload;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->a(Ljava/lang/String;Lcom/tencent/mm/modelfriend/AddrUpload;)I

    goto/16 :goto_5

    :cond_12
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMGetMFriend$Req;

    iget-object v2, v0, Lcom/tencent/mm/protocal/MMGetMFriend$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const v3, 0x10124

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;

    iget-object v0, v0, Lcom/tencent/mm/protocal/MMGetMFriend$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;->a(I)Lcom/tencent/mm/protocal/protobuf/GetMFriendRequest;

    return-void
.end method
