.class public Lcom/tencent/mm/modelvideo/vprotocal;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vprotocal"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native GetNowFrameCnt()I
.end method

.method public static a()I
    .locals 1

    invoke-static {}, Lcom/tencent/mm/modelvideo/vprotocal;->cancel()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/tencent/mm/modelvideo/RecordParams;)I
    .locals 12

    invoke-static {}, Lcom/tencent/mm/modelvideo/vprotocal;->cancel()I

    iget v0, p0, Lcom/tencent/mm/modelvideo/RecordParams;->c:I

    iget v1, p0, Lcom/tencent/mm/modelvideo/RecordParams;->b:I

    iget v2, p0, Lcom/tencent/mm/modelvideo/RecordParams;->d:I

    iget v3, p0, Lcom/tencent/mm/modelvideo/RecordParams;->f:I

    iget v4, p0, Lcom/tencent/mm/modelvideo/RecordParams;->e:I

    iget v5, p0, Lcom/tencent/mm/modelvideo/RecordParams;->a:I

    iget v6, p0, Lcom/tencent/mm/modelvideo/RecordParams;->g:I

    iget v7, p0, Lcom/tencent/mm/modelvideo/RecordParams;->h:I

    iget-object v8, p0, Lcom/tencent/mm/modelvideo/RecordParams;->i:Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/mm/modelvideo/RecordParams;->l:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/tencent/mm/modelvideo/RecordParams;->k:Ljava/lang/String;

    invoke-static/range {v0 .. v11}, Lcom/tencent/mm/modelvideo/vprotocal;->compress(IIIIIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/tencent/mm/modelvideo/vprotocal;->pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b()I
    .locals 1

    invoke-static {}, Lcom/tencent/mm/modelvideo/vprotocal;->GetNowFrameCnt()I

    move-result v0

    return v0
.end method

.method public static b(Lcom/tencent/mm/modelvideo/RecordParams;)I
    .locals 12

    invoke-static {}, Lcom/tencent/mm/modelvideo/vprotocal;->cancel()I

    iget v0, p0, Lcom/tencent/mm/modelvideo/RecordParams;->c:I

    iget v1, p0, Lcom/tencent/mm/modelvideo/RecordParams;->b:I

    iget v2, p0, Lcom/tencent/mm/modelvideo/RecordParams;->d:I

    iget v3, p0, Lcom/tencent/mm/modelvideo/RecordParams;->f:I

    iget v4, p0, Lcom/tencent/mm/modelvideo/RecordParams;->e:I

    iget v5, p0, Lcom/tencent/mm/modelvideo/RecordParams;->a:I

    iget v6, p0, Lcom/tencent/mm/modelvideo/RecordParams;->g:I

    iget v7, p0, Lcom/tencent/mm/modelvideo/RecordParams;->h:I

    iget-object v8, p0, Lcom/tencent/mm/modelvideo/RecordParams;->i:Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/mm/modelvideo/RecordParams;->l:Ljava/lang/String;

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/tencent/mm/modelvideo/RecordParams;->k:Ljava/lang/String;

    invoke-static/range {v0 .. v11}, Lcom/tencent/mm/modelvideo/vprotocal;->compress(IIIIIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native cancel()I
.end method

.method private static native compress(IIIIIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
.end method

.method private static native pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method
