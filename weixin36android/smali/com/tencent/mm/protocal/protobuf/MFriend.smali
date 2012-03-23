.class public Lcom/tencent/mm/protocal/protobuf/MFriend;
.super Lcom/tencent/mm/protobuf/BaseProtoBuf;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:Lcom/tencent/mm/protocal/protobuf/FBFriend;

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;-><init>()V

    return-void
.end method

.method protected static a(Lc/a/a/b/a;Lcom/tencent/mm/protocal/protobuf/MFriend;I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->b:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->c:Z

    move v0, v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->d:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->e:Z

    move v0, v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->f:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->g:Z

    move v0, v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lc/a/a/b/a;->a()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->h:I

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->i:Z

    move v0, v2

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->j:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->k:Z

    move v0, v2

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->l:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->m:Z

    move v0, v2

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->n:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->o:Z

    move v0, v2

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lc/a/a/b/a;->a()I

    move-result v0

    iput v0, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->p:I

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->q:Z

    move v0, v2

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->r:Ljava/lang/String;

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->s:Z

    move v0, v2

    goto :goto_0

    :pswitch_9
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lc/a/a/b/a;->a(I)Ljava/util/LinkedList;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v4, Lcom/tencent/mm/protocal/protobuf/FBFriend;

    invoke-direct {v4}, Lcom/tencent/mm/protocal/protobuf/FBFriend;-><init>()V

    new-instance v5, Lc/a/a/b/a;

    sget-object v6, Lcom/tencent/mm/protocal/protobuf/MFriend;->a:Lc/a/a/b/a/b;

    invoke-direct {v5, v0, v6}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    move v0, v2

    :goto_2
    if-eqz v0, :cond_0

    invoke-static {v5}, Lcom/tencent/mm/protocal/protobuf/MFriend;->a(Lc/a/a/b/a;)I

    move-result v0

    invoke-static {v5, v4, v0}, Lcom/tencent/mm/protocal/protobuf/FBFriend;->a(Lc/a/a/b/a;Lcom/tencent/mm/protocal/protobuf/FBFriend;I)Z

    move-result v0

    goto :goto_2

    :cond_0
    iput-object v4, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->t:Lcom/tencent/mm/protocal/protobuf/FBFriend;

    iput-boolean v2, p1, Lcom/tencent/mm/protocal/protobuf/MFriend;->u:Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto/16 :goto_0

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
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->c:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->b:Ljava/lang/String;

    invoke-static {v0, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->e:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->g:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->i:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    iget v3, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->h:I

    invoke-static {v2, v3}, Lc/a/a/a;->a(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->k:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->m:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4
    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->o:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->n:Ljava/lang/String;

    invoke-static {v2, v3}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_5
    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->q:Z

    if-eqz v2, :cond_6

    const/16 v2, 0x8

    iget v3, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->p:I

    invoke-static {v2, v3}, Lc/a/a/a;->a(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_6
    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->s:Z

    if-eqz v2, :cond_7

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->r:Ljava/lang/String;

    invoke-static {v2, v3}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_7
    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->u:Z

    if-eqz v2, :cond_8

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->t:Lcom/tencent/mm/protocal/protobuf/FBFriend;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/FBFriend;->a()I

    move-result v2

    invoke-static {v1, v2}, Lc/a/a/a;->b(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    :cond_8
    add-int/2addr v0, v1

    return v0

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lc/a/a/c/a;)V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->i:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->h:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    :cond_3
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->k:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->m:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->o:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_6
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->q:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->p:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    :cond_7
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->s:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_8
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->u:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->t:Lcom/tencent/mm/protocal/protobuf/FBFriend;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/FBFriend;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->t:Lcom/tencent/mm/protocal/protobuf/FBFriend;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/FBFriend;->a(Lc/a/a/c/a;)V

    :cond_9
    return-void
.end method

.method public final b()[B
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->h:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->p:I

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lcom/tencent/mm/protocal/protobuf/FBFriend;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->t:Lcom/tencent/mm/protocal/protobuf/FBFriend;

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

    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->c:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Username = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->e:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Nickname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->g:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MobileMD5 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->i:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Sex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->k:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Province = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->m:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "City = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->o:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Signature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->q:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PersonalCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->s:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Alias = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->u:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FBInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MFriend;->t:Lcom/tencent/mm/protocal/protobuf/FBFriend;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
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
