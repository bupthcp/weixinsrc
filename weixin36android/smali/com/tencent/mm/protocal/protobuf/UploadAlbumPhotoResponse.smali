.class public Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;
.super Lcom/tencent/mm/protobuf/BaseProtoBuf;

# interfaces
.implements Lcom/tencent/mm/protocal/protobuf/ResponseProtoBuf;


# instance fields
.field private b:Lcom/tencent/mm/protocal/protobuf/BaseResponse;

.field private c:Z

.field private d:I

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;-><init>()V

    return-void
.end method

.method public static a([B)Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lc/a/a/b/a;

    sget-object v0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->a:Lc/a/a/b/a/b;

    invoke-direct {v4, p0, v0}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    invoke-static {v4}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->a(Lc/a/a/b/a;)I

    move-result v0

    new-instance v5, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-direct {v5}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;-><init>()V

    :goto_0
    if-lez v0, :cond_5

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v4}, Lc/a/a/b/a;->g()V

    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->a(Lc/a/a/b/a;)I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v4, v3}, Lc/a/a/b/a;->a(I)Ljava/util/LinkedList;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/protobuf/BaseResponse;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/protobuf/BaseResponse;-><init>()V

    new-instance v8, Lc/a/a/b/a;

    sget-object v9, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->a:Lc/a/a/b/a/b;

    invoke-direct {v8, v0, v9}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    move v0, v3

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->a(Lc/a/a/b/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/protobuf/BaseResponse;->a(Lc/a/a/b/a;Lcom/tencent/mm/protocal/protobuf/BaseResponse;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iput-object v7, v5, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->b:Lcom/tencent/mm/protocal/protobuf/BaseResponse;

    iput-boolean v3, v5, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->c:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, Lc/a/a/b/a;->a()I

    move-result v0

    iput v0, v5, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->d:I

    iput-boolean v3, v5, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->e:Z

    move v0, v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4}, Lc/a/a/b/a;->a()I

    move-result v0

    iput v0, v5, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->f:I

    iput-boolean v3, v5, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->g:Z

    move v0, v3

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lc/a/a/b/a;->a(I)Ljava/util/LinkedList;

    move-result-object v6

    move v1, v2

    :goto_4
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;-><init>()V

    new-instance v8, Lc/a/a/b/a;

    sget-object v9, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->a:Lc/a/a/b/a/b;

    invoke-direct {v8, v0, v9}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    move v0, v3

    :goto_5
    if-eqz v0, :cond_3

    invoke-static {v8}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->a(Lc/a/a/b/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->a(Lc/a/a/b/a;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;I)Z

    move-result v0

    goto :goto_5

    :cond_3
    iput-object v7, v5, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->h:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    iput-boolean v3, v5, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->i:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_4
    move v0, v3

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {v4}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->j:Ljava/lang/String;

    iput-boolean v3, v5, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->k:Z

    move v0, v3

    goto/16 :goto_1

    :cond_5
    invoke-direct {v5}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->h()Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private h()Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->i:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lc/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not all required fields were included (false = not included in message),  BaseResponse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " StartPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TotalLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PhotoId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->i:Z

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
    .locals 4

    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->d:I

    invoke-static {v0, v1}, Lc/a/a/a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->f:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->k:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->b:Lcom/tencent/mm/protocal/protobuf/BaseResponse;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/BaseResponse;->a()I

    move-result v2

    invoke-static {v1, v2}, Lc/a/a/a;->b(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->h:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->a()I

    move-result v3

    invoke-static {v2, v3}, Lc/a/a/a;->b(II)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Lc/a/a/c/a;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->b:Lcom/tencent/mm/protocal/protobuf/BaseResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/BaseResponse;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->b:Lcom/tencent/mm/protocal/protobuf/BaseResponse;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/BaseResponse;->a(Lc/a/a/c/a;)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->d:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->f:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->h:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->h:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->a(Lc/a/a/c/a;)V

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b()[B
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->h()Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;

    invoke-super {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/tencent/mm/protocal/protobuf/BaseResponse;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->b:Lcom/tencent/mm/protocal/protobuf/BaseResponse;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->f:I

    return v0
.end method

.method public final f()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->h:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->j:Ljava/lang/String;

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

    const-string v1, "BaseResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->b:Lcom/tencent/mm/protocal/protobuf/BaseResponse;

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

    const-string v1, "StartPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->d:I

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

    const-string v1, "TotalLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->f:I

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

    const-string v1, "PhotoId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->h:Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->k:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ClientId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/UploadAlbumPhotoResponse;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
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
