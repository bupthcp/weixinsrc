.class public Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;
.super Lcom/tencent/mm/protobuf/BaseProtoBuf;


# instance fields
.field private b:I

.field private c:Z

.field private d:Lcom/tencent/mm/protobuf/ByteString;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;-><init>()V

    return-void
.end method

.method protected static a(Lc/a/a/b/a;Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;I)Z
    .locals 2

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lc/a/a/b/a;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lc/a/a/b/a;->e()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->b:I

    invoke-static {v0, v1}, Lc/a/a/a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d:Lcom/tencent/mm/protobuf/ByteString;

    invoke-static {v1, v2}, Lc/a/a/a;->a(ILcom/tencent/mm/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    add-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public final a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;
    .locals 1

    iput p1, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->c:Z

    return-object p0
.end method

.method public final a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d:Lcom/tencent/mm/protobuf/ByteString;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->e:Z

    return-object p0
.end method

.method public final a(Lc/a/a/c/a;)V
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->b:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d:Lcom/tencent/mm/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILcom/tencent/mm/protobuf/ByteString;)V

    :cond_0
    return-void
.end method

.method public final b()[B
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Lc/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not all required fields were included (false = not included in message),  iLen:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->b:I

    return v0
.end method

.method public final d()Lcom/tencent/mm/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d:Lcom/tencent/mm/protobuf/ByteString;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "iLen = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->e:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Buffer = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d:Lcom/tencent/mm/protobuf/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
