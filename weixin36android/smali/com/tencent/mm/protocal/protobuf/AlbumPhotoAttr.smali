.class public Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;
.super Lcom/tencent/mm/protobuf/BaseProtoBuf;


# instance fields
.field private b:F

.field private c:Z

.field private d:F

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Ljava/util/LinkedList;

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->n:Ljava/util/LinkedList;

    return-void
.end method

.method public static a([B)Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;
    .locals 3

    new-instance v1, Lc/a/a/b/a;

    sget-object v0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->a:Lc/a/a/b/a/b;

    invoke-direct {v1, p0, v0}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    invoke-static {v1}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->a(Lc/a/a/b/a;)I

    move-result v0

    new-instance v2, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;-><init>()V

    :goto_0
    if-lez v0, :cond_1

    invoke-static {v1, v2, v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->a(Lc/a/a/b/a;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lc/a/a/b/a;->g()V

    :cond_0
    invoke-static {v1}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->a(Lc/a/a/b/a;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {v2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->i()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Lc/a/a/b/a;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lc/a/a/b/a;->c()F

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->b:F

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->c:Z

    move v0, v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lc/a/a/b/a;->c()F

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->d:F

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->e:Z

    move v0, v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->f:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->g:Z

    move v0, v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->h:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->i:Z

    move v0, v2

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->j:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->k:Z

    move v0, v2

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lc/a/a/b/a;->a()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->l:I

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->m:Z

    move v0, v2

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lc/a/a/b/a;->a(I)Ljava/util/LinkedList;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v4, Lcom/tencent/mm/protocal/protobuf/LikeUserInfo;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/protobuf/LikeUserInfo;-><init>()V

    new-instance v5, Lc/a/a/b/a;

    sget-object v6, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->a:Lc/a/a/b/a/b;

    invoke-direct {v5, v0, v6}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    move v0, v2

    :goto_2
    if-eqz v0, :cond_0

    invoke-static {v5}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->a(Lc/a/a/b/a;)I

    move-result v0

    invoke-static {v5, v4, v0}, Lcom/tencent/mm/protocal/protobuf/LikeUserInfo;->a(Lc/a/a/b/a;Lcom/tencent/mm/protocal/protobuf/LikeUserInfo;I)Z

    move-result v0

    goto :goto_2

    :cond_0
    iget-boolean v0, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->o:Z

    if-nez v0, :cond_1

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->o:Z

    :cond_1
    iget-object v0, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->n:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lc/a/a/b/a;->a()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->p:I

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->q:Z

    move v0, v2

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->r:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->s:Z

    move v0, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private i()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->q:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lc/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not all required fields were included (false = not included in message),  Longitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Latitude:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LikeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LikeFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->q:Z

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

    const/16 v3, 0x8

    const/4 v0, 0x1

    invoke-static {v0}, Lc/a/a/a/b/a;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x2

    invoke-static {v1}, Lc/a/a/a/b/a;->a(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->g:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->i:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->k:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->l:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->p:I

    invoke-static {v3, v1}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->s:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->n:Ljava/util/LinkedList;

    invoke-static {v1, v3, v2}, Lc/a/a/a;->a(IILjava/util/LinkedList;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Lc/a/a/c/a;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->b:F

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(IF)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->d:F

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(IF)V

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->k:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->l:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->n:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, Lc/a/a/c/a;->a(IILjava/util/LinkedList;)V

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->p:I

    invoke-virtual {p1, v2, v0}, Lc/a/a/c/a;->a(II)V

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->s:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final b()[B
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->i()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;

    invoke-super {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->b:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->d:F

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->l:I

    return v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->p:I

    return v0
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

    const-string v1, "Longitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    const-string v1, "Latitude = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->g:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CNCity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->i:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TWCity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->k:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ENCity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LikeCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->l:I

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

    const-string v1, "LikeUserList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->n:Ljava/util/LinkedList;

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

    const-string v1, "LikeFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->s:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Description = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
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
