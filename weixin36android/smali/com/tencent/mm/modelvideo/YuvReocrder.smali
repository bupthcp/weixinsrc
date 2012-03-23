.class public Lcom/tencent/mm/modelvideo/YuvReocrder;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static h:I


# instance fields
.field private a:Landroid/hardware/Camera;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:J

.field private f:Ljava/io/FileOutputStream;

.field private g:Lcom/tencent/mm/modelvideo/RecordParams;

.field private i:Lb/a/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/modelvideo/YuvReocrder;->h:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->a:Landroid/hardware/Camera;

    iput-boolean v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->b:Z

    iput-boolean v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->c:Z

    iput v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->e:J

    iput-object v2, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->f:Ljava/io/FileOutputStream;

    return-void
.end method

.method public static a(Ljava/lang/String;II)I
    .locals 9

    const/4 v6, 0x0

    mul-int v2, p1, p2

    new-array v0, v2, [I

    mul-int/lit8 v1, v2, 0x4

    new-array v3, v1, [B

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    move v1, v6

    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v4, v1, 0x4

    aget-byte v5, v3, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v3, v7

    shl-int/lit8 v7, v7, 0x8

    const v8, 0xff00

    and-int/2addr v7, v8

    or-int/2addr v5, v7

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, v3, v7

    shl-int/lit8 v7, v7, 0x10

    const/high16 v8, 0xff

    and-int/2addr v7, v8

    or-int/2addr v5, v7

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v3, v4

    shl-int/lit8 v4, v4, 0x18

    const/high16 v7, -0x100

    and-int/2addr v4, v7

    or-int/2addr v4, v5

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v2, p1

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.YuvReocrder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThumbFromYuv Failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(J)I
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->c:Z

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->e:J

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->g:Lcom/tencent/mm/modelvideo/RecordParams;

    iget v1, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->d:I

    iput v1, v0, Lcom/tencent/mm/modelvideo/RecordParams;->n:I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->g:Lcom/tencent/mm/modelvideo/RecordParams;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v1, v1

    iput v1, v0, Lcom/tencent/mm/modelvideo/RecordParams;->o:I

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->g:Lcom/tencent/mm/modelvideo/RecordParams;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->g:Lcom/tencent/mm/modelvideo/RecordParams;

    iget v0, v0, Lcom/tencent/mm/modelvideo/RecordParams;->o:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->g:Lcom/tencent/mm/modelvideo/RecordParams;

    iget v0, v0, Lcom/tencent/mm/modelvideo/RecordParams;->o:I

    :goto_0
    iput v0, v1, Lcom/tencent/mm/modelvideo/RecordParams;->o:I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->g:Lcom/tencent/mm/modelvideo/RecordParams;

    iget v1, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->d:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    long-to-float v2, p1

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/tencent/mm/modelvideo/RecordParams;->a:I

    const-string v0, "MicroMsg.YuvReocrder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " fix frame rate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->g:Lcom/tencent/mm/modelvideo/RecordParams;

    iget v2, v2, Lcom/tencent/mm/modelvideo/RecordParams;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Cnt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " t:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->e:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time from ui:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelvideo/YuvReocrder;->a()V

    iget v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->d:I

    :goto_1
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/SurfaceHolder;Lcom/tencent/mm/modelvideo/RecordParams;Z)I
    .locals 10

    const/4 v2, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->g:Lcom/tencent/mm/modelvideo/RecordParams;

    if-nez p3, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/modelvideo/YuvReocrder;->a()V

    if-eqz p3, :cond_3

    sget v0, Lcom/tencent/mm/modelvideo/YuvReocrder;->h:I

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mm/modelvideo/YuvReocrder;->h:I

    :cond_3
    sget v0, Lcom/tencent/mm/modelvideo/YuvReocrder;->h:I

    invoke-static {v0}, Lb/a/ad;->a(I)Lb/a/u;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->i:Lb/a/u;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->i:Lb/a/u;

    iget-object v0, v0, Lb/a/u;->a:Landroid/hardware/Camera;

    iput-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->a:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->g:Lcom/tencent/mm/modelvideo/RecordParams;

    iget-object v1, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->i:Lb/a/u;

    iget v1, v1, Lb/a/u;->b:I

    iput v1, v0, Lcom/tencent/mm/modelvideo/RecordParams;->d:I

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_4

    const-string v0, "MicroMsg.YuvReocrder"

    const-string v1, "start camera failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->b:Z

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const v1, 0x7fffffff

    invoke-static {v4}, Lb/a/ad;->a(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_b

    move v3, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    const-string v0, "MicroMsg.YuvReocrder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "supp w:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " h:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int v0, v6, v7

    iget v8, p2, Lcom/tencent/mm/modelvideo/RecordParams;->d:I

    if-eqz v8, :cond_6

    iget v8, p2, Lcom/tencent/mm/modelvideo/RecordParams;->d:I

    const/16 v9, 0xb4

    if-ne v8, v9, :cond_7

    :cond_6
    iget v8, p2, Lcom/tencent/mm/modelvideo/RecordParams;->e:I

    if-lt v6, v8, :cond_7

    iget v8, p2, Lcom/tencent/mm/modelvideo/RecordParams;->f:I

    if-ge v7, v8, :cond_9

    :cond_7
    iget v8, p2, Lcom/tencent/mm/modelvideo/RecordParams;->d:I

    const/16 v9, 0x5a

    if-eq v8, v9, :cond_8

    iget v8, p2, Lcom/tencent/mm/modelvideo/RecordParams;->d:I

    const/16 v9, 0x10e

    if-ne v8, v9, :cond_c

    :cond_8
    iget v8, p2, Lcom/tencent/mm/modelvideo/RecordParams;->e:I

    if-lt v7, v8, :cond_c

    iget v8, p2, Lcom/tencent/mm/modelvideo/RecordParams;->f:I

    if-lt v6, v8, :cond_c

    :cond_9
    if-ge v0, v1, :cond_c

    iput v7, p2, Lcom/tencent/mm/modelvideo/RecordParams;->c:I

    iput v6, p2, Lcom/tencent/mm/modelvideo/RecordParams;->b:I

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_a
    iget v0, p2, Lcom/tencent/mm/modelvideo/RecordParams;->c:I

    iget v1, p2, Lcom/tencent/mm/modelvideo/RecordParams;->b:I

    invoke-virtual {v4, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    :goto_3
    const-string v0, "MicroMsg.YuvReocrder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " rotate:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p2, Lcom/tencent/mm/modelvideo/RecordParams;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " w:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " h:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->b:Z

    move v0, v2

    goto/16 :goto_0

    :cond_b
    :try_start_1
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v1, v0, Landroid/hardware/Camera$Size;->height:I

    iput v1, p2, Lcom/tencent/mm/modelvideo/RecordParams;->b:I

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    iput v0, p2, Lcom/tencent/mm/modelvideo/RecordParams;->c:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.YuvReocrder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start preview failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_2
.end method

.method public final a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.YuvReocrder"

    const-string v1, "release camera"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v2, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->a:Landroid/hardware/Camera;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->b:Z

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->g:Lcom/tencent/mm/modelvideo/RecordParams;

    iget-object v3, v3, Lcom/tencent/mm/modelvideo/RecordParams;->i:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->f:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput v1, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->d:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->e:J

    iput-boolean v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->c:Z

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->e:J

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    const-string v0, "MicroMsg.YuvReocrder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/modelvideo/YuvReocrder;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
