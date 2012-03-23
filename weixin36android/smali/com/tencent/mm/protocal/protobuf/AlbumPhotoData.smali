.class public Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;
.super Lcom/tencent/mm/protobuf/BaseProtoBuf;


# instance fields
.field private b:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

.field private c:Z

.field private d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;-><init>()V

    return-void
.end method

.method protected static a(Lc/a/a/b/a;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0, v2}, Lc/a/a/b/a;->a(I)Ljava/util/LinkedList;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v4, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;-><init>()V

    new-instance v5, Lc/a/a/b/a;

    sget-object v6, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->a:Lc/a/a/b/a/b;

    invoke-direct {v5, v0, v6}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    move v0, v2

    :goto_2
    if-eqz v0, :cond_0

    invoke-static {v5}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->a(Lc/a/a/b/a;)I

    move-result v0

    invoke-static {v5, v4, v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->a(Lc/a/a/b/a;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;I)Z

    move-result v0

    goto :goto_2

    :cond_0
    iput-object v4, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->b:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->c:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lc/a/a/b/a;->a(I)Ljava/util/LinkedList;

    move-result-object v3

    move v1, v0

    :goto_3
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v4, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    new-instance v5, Lc/a/a/b/a;

    sget-object v6, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->a:Lc/a/a/b/a/b;

    invoke-direct {v5, v0, v6}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    move v0, v2

    :goto_4
    if-eqz v0, :cond_2

    invoke-static {v5}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->a(Lc/a/a/b/a;)I

    move-result v0

    invoke-static {v5, v4, v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lc/a/a/b/a;Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;I)Z

    move-result v0

    goto :goto_4

    :cond_2
    iput-object v4, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->e:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_0

    nop

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

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->b:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->a()I

    move-result v1

    invoke-static {v0, v1}, Lc/a/a/a;->b(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a()I

    move-result v2

    invoke-static {v1, v2}, Lc/a/a/a;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    return v0
.end method

.method public final a(Lc/a/a/c/a;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->b:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->b:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->a(Lc/a/a/c/a;)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lc/a/a/c/a;)V

    return-void
.end method

.method public final b()[B
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->e:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lc/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not all required fields were included (false = not included in message),  PhotoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AttrData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->e:Z

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
    invoke-super {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->b:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    return-object v0
.end method

.method public final d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

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

    const-string v1, "PhotoId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->b:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

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

    const-string v1, "AttrData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

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
