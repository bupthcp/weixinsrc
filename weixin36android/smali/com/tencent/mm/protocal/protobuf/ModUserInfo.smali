.class public Lcom/tencent/mm/protocal/protobuf/ModUserInfo;
.super Lcom/tencent/mm/protobuf/BaseProtoBuf;


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Lcom/tencent/mm/protocal/protobuf/DisturbSetting;

.field private E:Z

.field private F:I

.field private G:Z

.field private H:I

.field private I:Z

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:I

.field private M:Z

.field private N:I

.field private O:Z

.field private P:I

.field private Q:Z

.field private R:I

.field private S:Z

.field private T:I

.field private U:Z

.field private V:Ljava/lang/String;

.field private W:Z

.field private X:I

.field private Y:Z

.field private Z:Lcom/tencent/mm/protocal/protobuf/GmailList;

.field private aa:Z

.field private ab:Ljava/lang/String;

.field private ac:Z

.field private ad:Ljava/lang/String;

.field private ae:Z

.field private af:I

.field private ag:Z

.field private ah:I

.field private ai:Z

.field private aj:J

.field private ak:Z

.field private al:Ljava/lang/String;

.field private am:Z

.field private b:I

.field private c:Z

.field private d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

.field private e:Z

.field private f:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

.field private k:Z

.field private l:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

.field private m:Z

.field private n:I

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->b:I

    invoke-static {v0, v1}, Lc/a/a/a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->h:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->n:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->p:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->s:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->r:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->u:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->t:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->w:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->v:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->y:Z

    if-eqz v1, :cond_3

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->x:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->A:Z

    if-eqz v1, :cond_4

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->z:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->C:Z

    if-eqz v1, :cond_5

    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->B:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->G:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x10

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->F:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->I:Z

    if-eqz v1, :cond_7

    const/16 v1, 0x11

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->H:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->K:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->J:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->M:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x13

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->L:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->O:Z

    if-eqz v1, :cond_a

    const/16 v1, 0x14

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->N:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->Q:Z

    if-eqz v1, :cond_b

    const/16 v1, 0x15

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->P:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->S:Z

    if-eqz v1, :cond_c

    const/16 v1, 0x16

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->R:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->U:Z

    if-eqz v1, :cond_d

    const/16 v1, 0x17

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->T:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->W:Z

    if-eqz v1, :cond_e

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->V:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->Y:Z

    if-eqz v1, :cond_f

    const/16 v1, 0x19

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->X:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ac:Z

    if-eqz v1, :cond_10

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ab:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ae:Z

    if-eqz v1, :cond_11

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ad:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ag:Z

    if-eqz v1, :cond_12

    const/16 v1, 0x1d

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->af:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ai:Z

    if-eqz v1, :cond_13

    const/16 v1, 0x1e

    iget v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ah:I

    invoke-static {v1, v2}, Lc/a/a/a;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ak:Z

    if-eqz v1, :cond_14

    const/16 v1, 0x1f

    iget-wide v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->aj:J

    invoke-static {v1, v2, v3}, Lc/a/a/a/b/a;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->am:Z

    if-eqz v1, :cond_15

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->al:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;->a()I

    move-result v2

    invoke-static {v1, v2}, Lc/a/a/a;->b(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->f:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;->a()I

    move-result v3

    invoke-static {v2, v3}, Lc/a/a/a;->b(II)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->j:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;->a()I

    move-result v3

    invoke-static {v2, v3}, Lc/a/a/a;->b(II)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->l:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;->a()I

    move-result v3

    invoke-static {v2, v3}, Lc/a/a/a;->b(II)I

    move-result v2

    add-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->E:Z

    if-eqz v2, :cond_16

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->D:Lcom/tencent/mm/protocal/protobuf/DisturbSetting;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/DisturbSetting;->a()I

    move-result v3

    invoke-static {v2, v3}, Lc/a/a/a;->b(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_16
    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->aa:Z

    if-eqz v2, :cond_17

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->Z:Lcom/tencent/mm/protocal/protobuf/GmailList;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/GmailList;->a()I

    move-result v3

    invoke-static {v2, v3}, Lc/a/a/a;->b(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_17
    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Lc/a/a/c/a;)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->b:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;->a(Lc/a/a/c/a;)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->f:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->f:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;->a(Lc/a/a/c/a;)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->h:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->j:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->j:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;->a(Lc/a/a/c/a;)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->l:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->l:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;->a(Lc/a/a/c/a;)V

    const/4 v0, 0x7

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->n:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    const/16 v0, 0x8

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->p:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->s:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->u:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->t:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->w:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->v:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->y:Z

    if-eqz v0, :cond_3

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_3
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->A:Z

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->z:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->C:Z

    if-eqz v0, :cond_5

    const/16 v0, 0xe

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->B:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    :cond_5
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->E:Z

    if-eqz v0, :cond_6

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->D:Lcom/tencent/mm/protocal/protobuf/DisturbSetting;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/DisturbSetting;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->D:Lcom/tencent/mm/protocal/protobuf/DisturbSetting;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/DisturbSetting;->a(Lc/a/a/c/a;)V

    :cond_6
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->G:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x10

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->F:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    :cond_7
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->I:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x11

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->H:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    :cond_8
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->K:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->J:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_9
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->M:Z

    if-eqz v0, :cond_a

    const/16 v0, 0x13

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->L:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    :cond_a
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->O:Z

    if-eqz v0, :cond_b

    const/16 v0, 0x14

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->N:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    :cond_b
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->Q:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x15

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->P:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    :cond_c
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->S:Z

    if-eqz v0, :cond_d

    const/16 v0, 0x16

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->R:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    :cond_d
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->U:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x17

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->T:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    :cond_e
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->W:Z

    if-eqz v0, :cond_f

    const/16 v0, 0x18

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->V:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_f
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->Y:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x19

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->X:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    :cond_10
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->aa:Z

    if-eqz v0, :cond_11

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->Z:Lcom/tencent/mm/protocal/protobuf/GmailList;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/GmailList;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->b(II)V

    iget-object v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->Z:Lcom/tencent/mm/protocal/protobuf/GmailList;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/protocal/protobuf/GmailList;->a(Lc/a/a/c/a;)V

    :cond_11
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ac:Z

    if-eqz v0, :cond_12

    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_12
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ae:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x1c

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ad:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_13
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ag:Z

    if-eqz v0, :cond_14

    const/16 v0, 0x1d

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->af:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    :cond_14
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ai:Z

    if-eqz v0, :cond_15

    const/16 v0, 0x1e

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ah:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    :cond_15
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ak:Z

    if-eqz v0, :cond_16

    const/16 v0, 0x1f

    iget-wide v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->aj:J

    invoke-virtual {p1, v0, v1, v2}, Lc/a/a/c/a;->a(IJ)V

    :cond_16
    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->am:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->al:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_17
    return-void
.end method

.method public final b()[B
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->q:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lc/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not all required fields were included (false = not included in message),  BitFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UserName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NickName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BindUin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BindEmail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BindMobile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ImgLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->q:Z

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

.method public toString()Ljava/lang/String;
    .locals 3

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

    const-string v1, "BitFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->b:I

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

    const-string v1, "UserName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->d:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

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

    const-string v1, "NickName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->f:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

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

    const-string v1, "BindUin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->h:I

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

    const-string v1, "BindEmail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->j:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

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

    const-string v1, "BindMobile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->l:Lcom/tencent/mm/protocal/protobuf/SKBuiltinString_t;

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

    const-string v1, "Status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->n:I

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

    const-string v1, "ImgLen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->s:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ImgBuf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->u:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Sex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->w:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Province = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->y:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "City = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->A:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Signature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->C:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PersonalCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->E:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DisturbSetting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->D:Lcom/tencent/mm/protocal/protobuf/DisturbSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->G:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PluginFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->I:Z

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "VerifyFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->H:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->K:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "VerifyInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->M:Z

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Point = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->L:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->O:Z

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Experience = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->Q:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->S:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LevelLowExp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->R:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->U:Z

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LevelHighExp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->T:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_e
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->W:Z

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Weibo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->V:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->Y:Z

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PluginSwitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->X:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->aa:Z

    if-eqz v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GmailList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->Z:Lcom/tencent/mm/protocal/protobuf/GmailList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_11
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ac:Z

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Alias = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_12
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ae:Z

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WeiboNickname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_13
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ag:Z

    if-eqz v1, :cond_14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WeiboFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->af:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_14
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ai:Z

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FaceBookFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ah:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_15
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->ak:Z

    if-eqz v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FBUserID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->aj:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_16
    iget-boolean v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->am:Z

    if-eqz v1, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FBUserName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/protocal/protobuf/ModUserInfo;->al:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_17
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
