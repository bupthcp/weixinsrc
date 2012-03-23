.class public Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->e:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->g:I

    iput v2, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->f:I

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->c:Ljava/util/List;

    iput-object p2, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 7

    iput-object p2, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    new-instance v2, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact$MMReqRespUploadMContact;

    invoke-direct {v2}, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact$MMReqRespUploadMContact;-><init>()V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadMContact$Req;

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->a(Ljava/lang/String;)V

    const/16 v1, 0xc8

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :cond_0
    if-lez v1, :cond_6

    iget-object v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->c:Ljava/util/List;

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->f:I

    iget-object v6, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->c:Ljava/util/List;

    iget v6, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->f:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->c:Ljava/util/List;

    iget v6, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->f:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->f:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->f:I

    add-int/lit8 v1, v1, -0x1

    :cond_2
    iget-object v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->d:Ljava/util/List;

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->g:I

    iget-object v6, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->d:Ljava/util/List;

    iget v6, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->g:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->d:Ljava/util/List;

    iget v6, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->g:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->g:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->g:I

    add-int/lit8 v1, v1, -0x1

    :cond_4
    iget-object v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->d:Ljava/util/List;

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->g:I

    iget-object v6, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_0

    :cond_5
    iget-object v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->c:Ljava/util/List;

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->f:I

    iget-object v6, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_0

    :cond_6
    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->a(Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->b(Ljava/util/List;)V

    const-string v1, "MicroMsg.NetSceneUploadMContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doscene in:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] index:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] req:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, p0}, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 3

    invoke-interface {p1}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadMContact$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/16 v2, 0xc8

    if-le v1, v2, :cond_1

    :cond_0
    const-string v0, "MicroMsg.NetSceneUploadMContact"

    const-string v1, "security checked failed : exceed max send count"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    const-string v0, "MicroMsg.NetSceneUploadMContact"

    const-string v1, "security checked failed : moblie null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    const-string v0, "MicroMsg.NetSceneUploadMContact"

    const-string v1, "security checked failed : username null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->b(I)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    const-string v0, "MicroMsg.NetSceneUploadMContact"

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

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadMContact$Req;

    const-string v1, "MicroMsg.NetSceneUploadMContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGYNetEnd in:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] index:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] req:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->e()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/modelfriend/FriendLogic;->b(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadMContact$Req;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/FriendLogic;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->g:I

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->c:Ljava/util/List;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->f:I

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/NetSceneUploadMContact;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
