.class public Lcom/tencent/mm/protocal/protobuf/VoipRelayData;
.super Lcom/tencent/mm/protobuf/BaseProtoBuf;


# instance fields
.field private b:I

.field private c:Z

.field private d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;-><init>()V

    return-void
.end method

.method public static a([B)Lcom/tencent/mm/protocal/protobuf/VoipRelayData;
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Lc/a/a/b/a;

    sget-object v0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->a:Lc/a/a/b/a/b;

    invoke-direct {v4, p0, v0}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    invoke-static {v4}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->a(Lc/a/a/b/a;)I

    move-result v0

    new-instance v5, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;-><init>()V

    :goto_0
    if-lez v0, :cond_3

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v4}, Lc/a/a/b/a;->g()V

    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->a(Lc/a/a/b/a;)I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v4}, Lc/a/a/b/a;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->a(I)Lcom/tencent/mm/protocal/protobuf/VoipRelayData;

    move v0, v3

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lc/a/a/b/a;->a(I)Ljava/util/LinkedList;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    new-instance v8, Lc/a/a/b/a;

    sget-object v9, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->a:Lc/a/a/b/a/b;

    invoke-direct {v8, v0, v9}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    move v0, v3

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->a(Lc/a/a/b/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lc/a/a/b/a;Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    invoke-virtual {v5, v7}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/VoipRelayData;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    invoke-direct {v5}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->e()Lcom/tencent/mm/protocal/protobuf/VoipRelayData;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private e()Lcom/tencent/mm/protocal/protobuf/VoipRelayData;
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->e:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lc/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not all required fields were included (false = not included in message),  Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Buffer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->b:I

    invoke-static {v0, v1}, Lc/a/a/a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a()I

    move-result v2

    invoke-static {v1, v2}, Lc/a/a/a;->b(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(I)Lcom/tencent/mm/protocal/protobuf/VoipRelayData;
    .locals 1

    iput p1, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->c:Z

    return-object p0
.end method

.method public final a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/VoipRelayData;
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->e:Z

    return-object p0
.end method

.method public final a(Lc/a/a/c/a;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->b:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lc/a/a/c/a;)V

    return-void
.end method

.method public final b()[B
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->e()Lcom/tencent/mm/protocal/protobuf/VoipRelayData;

    invoke-super {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->b:I

    return v0
.end method

.method public final d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Buffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/VoipRelayData;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
