.class public Lcom/tencent/mm/ui/MappingDrawable;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static final f:Landroid/graphics/Paint;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Rect;

.field private c:I

.field private d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/tencent/mm/ui/MappingDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v0, Lcom/tencent/mm/ui/MappingDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/tencent/mm/ui/MappingDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/mm/ui/MappingDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IB)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IB)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/ui/MappingDrawable;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/tencent/mm/ui/MappingDrawable;->b:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MappingDrawable;->setFilterBitmap(Z)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/tencent/mm/ui/MappingDrawable;->setBounds(IIII)V

    iput p3, p0, Lcom/tencent/mm/ui/MappingDrawable;->e:I

    iget-object v0, p0, Lcom/tencent/mm/ui/MappingDrawable;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/MappingDrawable;->c:I

    iget-object v0, p0, Lcom/tencent/mm/ui/MappingDrawable;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/MappingDrawable;->d:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/MappingDrawable;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/mm/ui/MappingDrawable;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MappingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    sget-object v3, Lcom/tencent/mm/ui/MappingDrawable;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MappingDrawable;->d:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MappingDrawable;->c:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
