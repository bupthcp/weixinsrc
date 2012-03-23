.class public final Lcom/tencent/mm/ui/MappingDrawable$Factory;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->b:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->c:I

    iput p3, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->d:I

    iput p4, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->e:I

    iput p5, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->f:I

    const-string v0, "MicroMsg.MappingDrawable.Factory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "factory created: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", linecount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Landroid/content/Context;II)Lcom/tencent/mm/ui/MappingDrawable$Factory;
    .locals 8

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-lez p2, :cond_2

    div-int v2, v6, p2

    :goto_0
    if-nez v2, :cond_1

    move v3, v2

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const-string v7, "calc mapping drawable size failed"

    if-lez v3, :cond_0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_2
    invoke-static {v7, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    new-instance v0, Lcom/tencent/mm/ui/MappingDrawable$Factory;

    div-int v4, v6, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/ui/MappingDrawable$Factory;-><init>(Landroid/graphics/Bitmap;IIII)V

    return-object v0

    :cond_0
    move v0, v4

    goto :goto_2

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_0
.end method


# virtual methods
.method public final a(I)Lcom/tencent/mm/ui/MappingDrawable;
    .locals 8

    new-instance v0, Lcom/tencent/mm/ui/MappingDrawable;

    iget-object v1, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->b:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->e:I

    rem-int v2, p1, v2

    iget v3, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->e:I

    div-int v3, p1, v3

    new-instance v4, Landroid/graphics/Rect;

    iget v5, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->c:I

    mul-int/2addr v5, v2

    iget v6, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->d:I

    mul-int/2addr v6, v3

    iget v7, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->c:I

    mul-int/2addr v2, v7

    iget v7, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->c:I

    add-int/2addr v2, v7

    iget v7, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->d:I

    mul-int/2addr v3, v7

    iget v7, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->d:I

    add-int/2addr v3, v7

    invoke-direct {v4, v5, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, p0, Lcom/tencent/mm/ui/MappingDrawable$Factory;->f:I

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/mm/ui/MappingDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)V

    return-object v0
.end method
