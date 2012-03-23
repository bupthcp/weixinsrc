.class public Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
.super Lcom/tencent/mm/protobuf/BaseProtoBuf;

# interfaces
.implements Lcom/tencent/mm/protocal/protobuf/RequestProtoBuf;


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:I

.field private E:Z

.field private F:I

.field private G:Z

.field private b:Lcom/tencent/mm/protocal/protobuf/BaseRequest;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:I

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

.field private o:Z

.field private p:I

.field private q:Z

.field private r:I

.field private s:Z

.field private t:I

.field private u:Z

.field private v:I

.field private w:Z

.field private x:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->e:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->g:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->i:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->j:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->l:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->p:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->r:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->t:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->v:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->z:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->B:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xf

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->D:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x10

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->F:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b:Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/BaseRequest;->a()I

    move-result v2

    invoke-static {v1, v2}, Lc/a/a/a;->b(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->n:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a()I

    move-result v3

    invoke-static {v2, v3}, Lc/a/a/a;->b(II)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->x:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a()I

    move-result v3

    invoke-static {v2, v3}, Lc/a/a/a;->b(II)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->k:Z

    return-object p0
.end method

.method public final a(Lcom/tencent/mm/protocal/protobuf/BaseRequest;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b:Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c:Z

    return-object p0
.end method

.method public final a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->n:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->o:Z

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->e:Z

    return-object p0
.end method

.method public final a(Lc/a/a/c/a;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b:Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/BaseRequest;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b:Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/BaseRequest;->a(Lc/a/a/c/a;)V

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->i:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x5

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->j:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/4 v0, 0x6

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->l:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->n:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->n:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lc/a/a/c/a;)V

    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->p:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/16 v0, 0x9

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->r:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/16 v0, 0xa

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->t:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/16 v0, 0xb

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->v:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->x:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->x:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lc/a/a/c/a;)V

    const/16 v0, 0xd

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->z:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->B:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/16 v0, 0xf

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->D:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/16 v0, 0x10

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->F:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    return-void
.end method

.method public final b(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->m:Z

    return-object p0
.end method

.method public final b(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->x:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->y:Z

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->f:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->g:Z

    return-object p0
.end method

.method public final b()[B
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->u:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->w:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->y:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->A:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->C:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->G:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lc/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not all required fields were included (false = not included in message),  BaseRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MsgType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MediaTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DataBuffer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DataStartPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DataTotalLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->s:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ThumbTotalLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->u:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ThumbStartPos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ThumbData:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CameraType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " VideoSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->C:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ToListCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->E:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IsSendAgain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->G:Z

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

.method public final c(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->p:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->q:Z

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->h:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->i:Z

    return-object p0
.end method

.method public final c()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->n:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->p:I

    return v0
.end method

.method public final d(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->r:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->s:Z

    return-object p0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->r:I

    return v0
.end method

.method public final e(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->t:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->u:Z

    return-object p0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->t:I

    return v0
.end method

.method public final f(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->v:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->w:Z

    return-object p0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->v:I

    return v0
.end method

.method public final g(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->z:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->A:Z

    return-object p0
.end method

.method public final h(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->B:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->C:Z

    return-object p0
.end method

.method public final h()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->x:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->B:I

    return v0
.end method

.method public final i(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->D:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->E:Z

    return-object p0
.end method

.method public final j(I)Lcom/tencent/mm/protocal/protobuf/MassSendRequest;
    .locals 1

    iput p1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->F:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->G:Z

    return-object p0
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

    const-string v1, "BaseRequest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->b:Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->e:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ToList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->g:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ToListMD5 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->i:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ClientID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->h:Ljava/lang/String;

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

    const-string v1, "MsgType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->j:I

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

    const-string v1, "MediaTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->l:I

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

    const-string v1, "DataBuffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->n:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

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

    const-string v1, "DataStartPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->p:I

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

    const-string v1, "DataTotalLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->r:I

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

    const-string v1, "ThumbTotalLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->t:I

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

    const-string v1, "ThumbStartPos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->v:I

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

    const-string v1, "ThumbData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->x:Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

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

    const-string v1, "CameraType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->z:I

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

    const-string v1, "VideoSource = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->B:I

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

    const-string v1, "ToListCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->D:I

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

    const-string v1, "IsSendAgain = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/MassSendRequest;->F:I

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

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
