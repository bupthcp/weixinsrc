.class public Lcom/tencent/mm/modelbase/RemoteResp;
.super Lcom/tencent/mm/protocal/IMMBaseResp_AIDL$Stub;


# instance fields
.field private a:Lcom/tencent/mm/protocal/MMBase$Resp;

.field private b:I

.field private c:[B


# direct methods
.method public constructor <init>(Lcom/tencent/mm/protocal/MMBase$Resp;I)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/IMMBaseResp_AIDL$Stub;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    iput p2, p0, Lcom/tencent/mm/modelbase/RemoteResp;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMBase$Resp;->a_(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/MMBase$Resp;->q(Ljava/lang/String;)V

    return-void
.end method

.method public final a(I[BLjava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/tencent/mm/pointers/PByteArray;

    invoke-direct {v3}, Lcom/tencent/mm/pointers/PByteArray;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    instance-of v0, v0, Lcom/tencent/mm/protocal/MMBase$ProtoBufResponse;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    invoke-static {p1, v0, p2, p3, v3}, Lcom/tencent/mm/protocal/MMProtocalJni;->bufToResp(ILcom/tencent/mm/protocal/MMBase$Resp;[BLjava/lang/String;Lcom/tencent/mm/pointers/PByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    iput-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->c:[B

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    array-length v2, p2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/protocal/MMBase$Resp;->b(J)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/tencent/mm/pointers/PByteArray;

    invoke-direct {v4}, Lcom/tencent/mm/pointers/PByteArray;-><init>()V

    new-instance v5, Lcom/tencent/mm/pointers/PInt;

    invoke-direct {v5}, Lcom/tencent/mm/pointers/PInt;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    check-cast v0, Lcom/tencent/mm/protocal/MMBase$ProtoBufResponse;

    :try_start_0
    invoke-static {v4, p2, p3, v3, v5}, Lcom/tencent/mm/protocal/MMProtocalJni;->unpack(Lcom/tencent/mm/pointers/PByteArray;[BLjava/lang/String;Lcom/tencent/mm/pointers/PByteArray;Lcom/tencent/mm/pointers/PInt;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v5, Lcom/tencent/mm/pointers/PInt;->value:I

    const/16 v7, -0xd

    if-ne v6, v7, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    iget v4, v5, Lcom/tencent/mm/pointers/PInt;->value:I

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/MMBase$Resp;->a_(I)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    array-length v4, p2

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/tencent/mm/protocal/MMBase$Resp;->b(J)V

    iget-object v0, v3, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    iput-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->c:[B

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v4, v4, Lcom/tencent/mm/pointers/PByteArray;->value:[B

    invoke-interface {v0, v4}, Lcom/tencent/mm/protocal/MMBase$ProtoBufResponse;->a([B)I

    move-result v0

    const-string v4, "MicroMsg.RemoteResp"

    const-string v5, "bufToResp using protobuf ok"

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    invoke-virtual {v4, v0}, Lcom/tencent/mm/protocal/MMBase$Resp;->a_(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.RemoteResp"

    const-string v1, "protobuf unbuild exception, check now!"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final a()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->c:[B

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBase$Resp;->b_()I

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBase$Resp;->H()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->b:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    check-cast v0, Lcom/tencent/mm/protocal/MMProfile$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMProfile$Resp;->f()Ljava/lang/String;

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

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->b:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    check-cast v0, Lcom/tencent/mm/protocal/MMProfile$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMProfile$Resp;->e()I

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteResp;->a:Lcom/tencent/mm/protocal/MMBase$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBase$Resp;->c_()I

    move-result v0

    return v0
.end method
