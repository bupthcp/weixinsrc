.class public Lcom/tencent/mm/modelbase/RemoteReq;
.super Lcom/tencent/mm/protocal/IMMBaseReq_AIDL$Stub;


# instance fields
.field private a:Lcom/tencent/mm/protocal/MMBase$Req;

.field private b:I

.field private c:[B


# direct methods
.method public constructor <init>(Lcom/tencent/mm/protocal/MMBase$Req;I)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/IMMBaseReq_AIDL$Stub;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    iput p2, p0, Lcom/tencent/mm/modelbase/RemoteReq;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMBase$Req;->i(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMBase$Req;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final a(ILjava/lang/String;[BI)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v2, Lcom/tencent/mm/pointers/PByteArray;

    invoke-direct {v2}, Lcom/tencent/mm/pointers/PByteArray;-><init>()V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    instance-of v0, v0, Lcom/tencent/mm/protocal/MMBase$ProtoBufRequest;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    move v0, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/protocal/MMProtocalJni;->reqToBuf(ILcom/tencent/mm/protocal/MMBase$Req;Lcom/tencent/mm/pointers/PByteArray;Ljava/lang/String;[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    iput-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->c:[B

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    iget-object v1, p0, Lcom/tencent/mm/modelbase/RemoteReq;->c:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/protocal/MMBase$Req;->b(J)V

    move v0, v8

    :goto_1
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    check-cast v0, Lcom/tencent/mm/protocal/MMAuth$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Req;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "empty username when auth"

    invoke-static {v0, v9}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    check-cast v0, Lcom/tencent/mm/protocal/MMSync$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSync$Req;->e()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-static {v0}, Lcom/tencent/mm/protocal/MMProtocalJni;->verifySyncKey([B)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MicroMsg.PacketVerify"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "synckey verification not passed, dump="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v9

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    check-cast v0, Lcom/tencent/mm/protocal/MMBase$ProtoBufRequest;

    invoke-interface {v0}, Lcom/tencent/mm/protocal/MMBase$ProtoBufRequest;->c()[B

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMBase$Req;->w()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMBase$Req;->t()I

    move-result v6

    invoke-interface {v0}, Lcom/tencent/mm/protocal/MMBase$ProtoBufRequest;->b()I

    move-result v7

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/tencent/mm/protocal/MMProtocalJni;->pack([BLcom/tencent/mm/pointers/PByteArray;Ljava/lang/String;[BLjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MicroMsg.RemoteReq"

    const-string v1, "reqToBuf using protobuf ok"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    iput-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->c:[B

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    iget-object v1, p0, Lcom/tencent/mm/modelbase/RemoteReq;->c:[B

    array-length v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/protocal/MMBase$Req;->b(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.RemoteReq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protobuf build exception, check now! :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v9

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x26 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->c:[B

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBase$Req;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMBase$Req;->j(I)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMBase$Req;->p(Ljava/lang/String;)V

    return-void
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBase$Req;->t()I

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMBase$Req;->k(I)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMBase$Req;->q(Ljava/lang/String;)V

    return-void
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBase$Req;->u()I

    move-result v0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBase$Req;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBase$Req;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBase$Req;->x()I

    move-result v0

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->b:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    check-cast v0, Lcom/tencent/mm/protocal/MMGetUserName$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetUserName$Req;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    check-cast v0, Lcom/tencent/mm/protocal/MMGetVerifyImg$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMGetVerifyImg$Req;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    check-cast v0, Lcom/tencent/mm/protocal/MMBindOpMoblie$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBindOpMoblie$Req;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    check-cast v0, Lcom/tencent/mm/protocal/MMResetPwd$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMResetPwd$Req;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x19 -> :sswitch_0
        0x22 -> :sswitch_3
        0x24 -> :sswitch_2
    .end sparse-switch
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->b:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    check-cast v0, Lcom/tencent/mm/protocal/MMProfile$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMProfile$Req;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->b:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    check-cast v0, Lcom/tencent/mm/protocal/MMProfile$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMProfile$Req;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->b:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    check-cast v0, Lcom/tencent/mm/protocal/MMProfile$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMProfile$Req;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public final l()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBase$Req;->a()I

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReq;->a:Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBase$Req;->y()Z

    move-result v0

    return v0
.end method
