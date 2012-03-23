.class public Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/storage/OpLogStorage$Operation;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:I

.field private final l:Ljava/lang/String;

.field private final m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->a:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->e:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->f:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->g:I

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->b:Ljava/lang/String;

    invoke-static {p3}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->c:Ljava/lang/String;

    invoke-static {p4}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->d:Ljava/lang/String;

    iput p5, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->e:I

    iput p6, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->f:I

    iput p7, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->g:I

    invoke-static {p8}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->h:Ljava/lang/String;

    invoke-static {p9}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->i:Ljava/lang/String;

    invoke-static {p10}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->j:Ljava/lang/String;

    iput p11, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->k:I

    invoke-static {p12}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->l:Ljava/lang/String;

    iput p13, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->m:I

    move/from16 v0, p14

    iput v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->n:I

    invoke-static/range {p15 .. p15}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->o:Ljava/lang/String;

    invoke-static/range {p16 .. p16}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->p:Ljava/lang/String;

    invoke-static/range {p17 .. p17}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->q:Ljava/lang/String;

    invoke-static/range {p18 .. p18}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->r:Ljava/lang/String;

    move/from16 v0, p19

    iput v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->s:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x65

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->n:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->k:I

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->m:I

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->e:I

    return v0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->f:I

    return v0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->g:I

    return v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->s:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->i:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->l:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->o:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->p:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->q:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpAddContact;->r:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/mm/storage/OpLogStorage$Concat;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
