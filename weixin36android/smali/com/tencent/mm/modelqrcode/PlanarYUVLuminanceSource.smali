.class public final Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;
.super La/o;


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>([BIILandroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v0, v1}, La/o;-><init>(II)V

    iput-object p1, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->a:[B

    iput p2, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->b:I

    iput p3, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->c:I

    iget v0, p4, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->d:I

    iget v0, p4, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->e:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->g:I

    iget v0, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->d:I

    iget v1, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    add-int/2addr v0, v1

    if-gt v0, p2, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->e:I

    iget v1, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->g:I

    add-int/2addr v0, v1

    if-le v0, p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()[B
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    iget v2, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->b:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->g:I

    iget v2, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->c:I

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->a:[B

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    iget v2, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->g:I

    mul-int v3, v1, v2

    new-array v2, v3, [B

    iget v1, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->e:I

    iget v4, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->b:I

    mul-int/2addr v1, v4

    iget v4, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->d:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    iget v5, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->b:I

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->a:[B

    invoke-static {v4, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->a:[B

    :goto_1
    iget v4, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->g:I

    if-ge v0, v4, :cond_2

    iget v4, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    mul-int/2addr v4, v0

    iget v5, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    invoke-static {v3, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->b:I

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public final a(I[B)[B
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->g:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested row is outside the image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    array-length v0, p2

    iget v1, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    if-ge v0, v1, :cond_3

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    new-array p2, v0, [B

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->e:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->b:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->d:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->a:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    invoke-static {v1, v0, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 11

    const/4 v2, 0x0

    iget v0, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    iget v1, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->g:I

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget-object v5, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->a:[B

    iget v0, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->e:I

    iget v3, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->b:I

    mul-int/2addr v0, v3

    iget v3, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->d:I

    add-int/2addr v0, v3

    move v3, v0

    move v0, v2

    :goto_0
    iget v4, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->g:I

    if-ge v0, v4, :cond_1

    iget v4, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    mul-int v6, v0, v4

    move v4, v2

    :goto_1
    iget v7, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    if-ge v4, v7, :cond_0

    add-int v7, v3, v4

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    add-int v8, v6, v4

    const/high16 v9, -0x100

    const v10, 0x10101

    mul-int/2addr v7, v10

    or-int/2addr v7, v9

    aput v7, v1, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->b:I

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    iget v3, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->g:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v3, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    iget v6, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->f:I

    iget v7, p0, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->g:I

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v0
.end method
