.class public final Lcom/tencent/mm/ui/qrcode/ViewfinderView;
.super Landroid/view/View;


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Bitmap;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:I

.field private j:Ljava/util/Collection;

.field private k:Ljava/util/Collection;

.field private l:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->a:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->l:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->d:I

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->e:I

    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->f:I

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->g:I

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->i:I

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->j:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const/16 v11, 0xff

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->l:Landroid/graphics/Rect;

    const-string v2, "ViewfinderView onDraw frameRect == null"

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->l:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->e:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v9

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    int-to-float v5, v9

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->c:Landroid/graphics/Bitmap;

    iget v1, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->d:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->j:Ljava/util/Collection;

    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->k:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->k:Ljava/util/Collection;

    :cond_3
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    const/16 v2, 0x7f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->h:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f;

    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v0}, La/f;->a()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v8, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, La/f;->b()F

    move-result v0

    add-float/2addr v0, v3

    const/high16 v3, 0x4040

    iget-object v4, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->j:Ljava/util/Collection;

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->k:Ljava/util/Collection;

    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->h:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/f;

    iget v3, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v0}, La/f;->a()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v0}, La/f;->b()F

    move-result v0

    add-float/2addr v0, v4

    const/high16 v4, 0x40c0

    iget-object v5, p0, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    const-wide/16 v1, 0x64

    iget v3, v8, Landroid/graphics/Rect;->left:I

    iget v4, v8, Landroid/graphics/Rect;->top:I

    iget v5, v8, Landroid/graphics/Rect;->right:I

    iget v6, v8, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/ui/qrcode/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_2
.end method
