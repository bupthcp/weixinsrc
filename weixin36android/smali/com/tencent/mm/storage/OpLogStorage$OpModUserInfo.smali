.class public Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/storage/OpLogStorage$Operation;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->a:I

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->d:I

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->f:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->g:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->h:I

    iput p1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->a:I

    invoke-static {p2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->b:Ljava/lang/String;

    invoke-static {p3}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->c:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->d:I

    invoke-static {p5}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->e:Ljava/lang/String;

    invoke-static {p6}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->f:Ljava/lang/String;

    invoke-static {p7}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->g:Ljava/lang/String;

    iput p8, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->h:I

    iput p9, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->i:I

    iput p10, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->j:I

    invoke-static {p11}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->k:Ljava/lang/String;

    invoke-static {p12}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->l:Ljava/lang/String;

    invoke-static {p13}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->m:Ljava/lang/String;

    move/from16 v0, p14

    iput v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->n:I

    invoke-static/range {p15 .. p15}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->o:Ljava/lang/String;

    move/from16 v0, p16

    iput v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->p:I

    invoke-static/range {p17 .. p17}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->q:Ljava/lang/String;

    move/from16 v0, p18

    iput v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->r:I

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x68

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->j:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->i:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->a:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->d:I

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->h:I

    return v0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->n:I

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->p:I

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->r:I

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->h:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->k:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->l:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->m:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;->o:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/mm/storage/OpLogStorage$Concat;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
