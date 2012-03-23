.class public Lcom/tencent/mm/ui/tools/CropImageUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/tencent/mm/ui/tools/FrameIV;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:J

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->a:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->b:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->c:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->d:Z

    iput v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->q:I

    iput v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->r:I

    iput v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->w:I

    iput v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->x:I

    iput-boolean v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->y:Z

    return-void
.end method

.method private static a(FFFFF)F
    .locals 2

    mul-float v0, p3, p0

    mul-float v1, p4, p1

    sub-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/CropImageUI;F)F
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->k:F

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/CropImageUI;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->o:J

    return-wide p1
.end method

.method private a(II)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v1, 0x0

    const/high16 v8, 0x4000

    const/high16 v7, 0x3f80

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p1, v6}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->r:I

    if-eqz v2, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    iget v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->r:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v5, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    :cond_0
    int-to-float v1, p1

    mul-float/2addr v1, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, p2

    mul-float/2addr v2, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    move v2, v1

    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const-string v1, "MicroMsg.CropImageUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCopeBackImg: tw"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  th:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " imgW:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " imgH:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " maxS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    int-to-float v3, p1

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    div-float/2addr v1, v8

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p2

    div-float v2, v4, v2

    sub-float v2, v3, v2

    div-float/2addr v2, v8

    float-to-int v2, v2

    const-string v3, "MicroMsg.CropImageUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "offW:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " offH:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v7, v2, 0x2

    sub-int/2addr v4, v7

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1
.end method

.method private static a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x64

    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v2, ""

    invoke-static {p0, v0, v1, v2, p1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/CropImageUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/CropImageUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->p:Z

    return p1
.end method

.method private static a(Landroid/graphics/Matrix;)[[F
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x3

    filled-new-array {v7, v7}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    const/16 v1, 0x9

    new-array v4, v1, [F

    invoke-virtual {p0, v4}, Landroid/graphics/Matrix;->getValues([F)V

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_1

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_0

    aget-object v5, v0, v3

    mul-int/lit8 v6, v3, 0x3

    add-int/2addr v6, v1

    aget v6, v4, v6

    aput v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static b(FFFFF)F
    .locals 2

    mul-float v0, p3, p1

    mul-float v1, p4, p0

    add-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/CropImageUI;)F
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->k:F

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/CropImageUI;F)F
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->l:F

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/CropImageUI;)F
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->l:F

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/CropImageUI;F)F
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->m:F

    return p1
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/CropImageUI;F)F
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->n:F

    return p1
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/CropImageUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/tools/CropImageUI;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/tools/CropImageUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->a:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/tools/CropImageUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->p:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/tools/CropImageUI;)F
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->m:F

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/tools/CropImageUI;)F
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->n:F

    return v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/tools/CropImageUI;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->o:J

    return-wide v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/tools/CropImageUI;)V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/tools/CropImageUI;)V
    .locals 11

    const-wide/high16 v9, 0x4000

    const-wide/high16 v7, 0x3ff0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const-string v1, "MicroMsg.CropImageUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "window TitleBar.h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    :try_start_0
    const-string v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const-string v1, "MicroMsg.CropImageUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sbar:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    :goto_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v0, 0x4286

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v3

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff8

    div-double/2addr v3, v5

    double-to-int v0, v3

    add-int/2addr v1, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->y:Z

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->s:I

    sub-int v3, v2, v1

    iput v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->t:I

    iput v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->u:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->v:I

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/FrameIV;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/FrameIV;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->s:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v2, v7

    iget v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->t:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    div-double/2addr v0, v9

    double-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->w:I

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/FrameIV;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/FrameIV;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->v:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v2, v7

    iget v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->u:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    div-double/2addr v0, v9

    double-to-int v0, v0

    iput v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->x:I

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    iget v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->w:I

    iget v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->x:I

    iput v1, v0, Lcom/tencent/mm/ui/tools/FrameIV;->a:I

    iput v2, v0, Lcom/tencent/mm/ui/tools/FrameIV;->b:I

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/FrameIV;->postInvalidate()V

    return-void

    :catch_0
    move-exception v1

    :cond_0
    move v1, v0

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic m(Lcom/tencent/mm/ui/tools/CropImageUI;)V
    .locals 13

    const/high16 v12, 0x4000

    const-wide/high16 v10, 0x3ff0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/high16 v7, 0x3f80

    const v0, 0x7f07010e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->d:Z

    if-eqz v0, :cond_3

    const-string v0, "MicroMsg.CropImageUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isV:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->y:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " vW:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->s:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " vH:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->t:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " hW:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->u:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " hH:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->v:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->y:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->t:I

    :goto_1
    iget-boolean v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->y:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->s:I

    :goto_2
    invoke-static {v3, v0, v2, v6}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-boolean v6, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->a:Z

    :goto_3
    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->finish()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->v:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->u:I

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->c:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x96

    :goto_4
    iget-boolean v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->c:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x96

    :goto_5
    invoke-static {v3, v0, v2, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_4
    const/16 v0, 0x3c0

    goto :goto_4

    :cond_5
    const/16 v2, 0x3c0

    goto :goto_5

    :cond_6
    invoke-static {v3}, Lb/a/q;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->r:I

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->r:I

    if-eqz v2, :cond_7

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    iget v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->r:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v5, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_6
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->d:Z

    if-eqz v0, :cond_9

    const-string v0, "MicroMsg.CropImageUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v0, v8

    mul-float/2addr v0, v7

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v9

    mul-float/2addr v1, v7

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_8

    :goto_7
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const-string v1, "MicroMsg.CropImageUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offsetScale:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    int-to-float v1, v8

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    div-float/2addr v1, v12

    int-to-float v2, v9

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    div-float/2addr v0, v12

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/ui/tools/CropImageUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/CropImageUI$1;-><init>(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0

    :cond_7
    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    goto/16 :goto_6

    :cond_8
    move v0, v1

    goto :goto_7

    :cond_9
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->a:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v8

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v9

    div-float/2addr v1, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_b

    move v2, v0

    :goto_9
    if-le v8, v9, :cond_c

    int-to-float v0, v9

    :goto_a
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    cmpl-float v3, v1, v0

    if-lez v3, :cond_a

    move v0, v1

    :cond_a
    float-to-double v1, v2

    cmpg-double v1, v1, v10

    if-gez v1, :cond_10

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_8

    :cond_b
    move v2, v1

    goto :goto_9

    :cond_c
    int-to-float v0, v8

    goto :goto_a

    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v8

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v9

    div-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_e

    :goto_b
    int-to-float v1, v8

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v9

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpg-float v3, v1, v2

    if-gez v3, :cond_f

    :goto_c
    float-to-double v2, v0

    cmpl-double v0, v2, v10

    if-lez v0, :cond_10

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    move v0, v1

    goto/16 :goto_8

    :cond_e
    move v0, v1

    goto :goto_b

    :cond_f
    move v1, v2

    goto :goto_c

    :cond_10
    move v0, v7

    goto/16 :goto_8
.end method

.method static synthetic n(Lcom/tencent/mm/ui/tools/CropImageUI;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    aput v1, v0, v4

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    const/high16 v2, 0x42b4

    aget v3, v0, v3

    aget v0, v0, v4

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->q:I

    return-void
.end method

.method static synthetic o(Lcom/tencent/mm/ui/tools/CropImageUI;)V
    .locals 6

    const/4 v1, 0x2

    const v3, 0x3f888659

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v1, [F

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    aput v2, v0, v4

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    aput v2, v0, v5

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    aput v2, v1, v4

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    aput v2, v1, v5

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    aget v3, v0, v4

    aget v4, v1, v4

    sub-float/2addr v3, v4

    aget v0, v0, v5

    aget v1, v1, v5

    sub-float/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method static synthetic p(Lcom/tencent/mm/ui/tools/CropImageUI;)V
    .locals 11

    new-instance v0, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget-boolean v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    aput v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    aput v4, v1, v3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    aput v4, v2, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/high16 v3, 0x3f70

    const/high16 v4, 0x3f70

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x0

    aget v4, v2, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aget v1, v1, v4

    const/4 v4, 0x1

    aget v2, v2, v4

    sub-float/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/FrameIV;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/FrameIV;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/tools/FrameIV;->getWidth()I

    move-result v3

    const/16 v4, 0x9

    new-array v4, v4, [F

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x2

    aget v0, v4, v0

    const/4 v5, 0x0

    add-float/2addr v0, v5

    const/4 v5, 0x5

    aget v5, v4, v5

    const/4 v6, 0x0

    add-float/2addr v5, v6

    const/4 v6, 0x0

    aget v6, v4, v6

    const/4 v7, 0x3

    aget v4, v4, v7

    iget-object v7, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->q:I

    rem-int/lit8 v9, v9, 0x4

    packed-switch v9, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aput v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aput v3, v0, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aput v3, v1, v2

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    const/high16 v3, 0x3f70

    const/high16 v4, 0x3f70

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v4, v1, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aget v0, v0, v4

    const/4 v4, 0x1

    aget v1, v1, v4

    sub-float/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2
    return-void

    :pswitch_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v4, v0, v9, v10}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(FFFFF)F

    move-result v9

    int-to-float v10, v1

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_3

    int-to-float v7, v7

    const/4 v9, 0x0

    invoke-static {v6, v4, v0, v7, v9}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(FFFFF)F

    move-result v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v6, v4, v5, v0, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(FFFFF)F

    move-result v0

    int-to-float v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    const/4 v0, 0x0

    int-to-float v1, v8

    invoke-static {v6, v4, v5, v0, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(FFFFF)F

    move-result v0

    add-int v1, v2, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_1
    const/4 v9, 0x0

    int-to-float v8, v8

    invoke-static {v6, v4, v0, v9, v8}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(FFFFF)F

    move-result v8

    int-to-float v9, v1

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_4

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v4, v0, v8, v9}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(FFFFF)F

    move-result v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v6, v4, v5, v0, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(FFFFF)F

    move-result v0

    int-to-float v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_4

    int-to-float v0, v7

    const/4 v1, 0x0

    invoke-static {v6, v4, v5, v0, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(FFFFF)F

    move-result v0

    add-int v1, v2, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_2
    int-to-float v7, v7

    const/4 v9, 0x0

    invoke-static {v6, v4, v0, v7, v9}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(FFFFF)F

    move-result v7

    int-to-float v9, v1

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_5

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v4, v0, v7, v9}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(FFFFF)F

    move-result v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_5

    const/4 v0, 0x0

    int-to-float v1, v8

    invoke-static {v6, v4, v5, v0, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(FFFFF)F

    move-result v0

    int-to-float v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v6, v4, v5, v0, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(FFFFF)F

    move-result v0

    add-int v1, v2, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v4, v0, v9, v10}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(FFFFF)F

    move-result v9

    int-to-float v10, v1

    cmpl-float v9, v9, v10

    if-gtz v9, :cond_6

    const/4 v9, 0x0

    int-to-float v8, v8

    invoke-static {v6, v4, v0, v9, v8}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(FFFFF)F

    move-result v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_6

    int-to-float v0, v7

    const/4 v1, 0x0

    invoke-static {v6, v4, v5, v0, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(FFFFF)F

    move-result v0

    int-to-float v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v6, v4, v5, v0, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(FFFFF)F

    move-result v0

    add-int v1, v2, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic q(Lcom/tencent/mm/ui/tools/CropImageUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->c:Z

    return v0
.end method

.method static synthetic r(Lcom/tencent/mm/ui/tools/CropImageUI;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/tencent/mm/modelemoji/EmojiLogic;->extractForeground([III)Z

    const-string v0, "MicroMsg.CropImageUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this img is mutable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size:width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->j:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic s(Lcom/tencent/mm/ui/tools/CropImageUI;)V
    .locals 6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CropImage_OutputPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->j:Landroid/graphics/Bitmap;

    :goto_0
    const/16 v3, 0x64

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v4, v5}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "CropImage_OutputPath"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->setResult(ILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->finish()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x2

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->setResult(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0
.end method

.method static synthetic t(Lcom/tencent/mm/ui/tools/CropImageUI;)V
    .locals 12

    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/FrameIV;->getLeft()I

    move-result v2

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    invoke-virtual {v4}, Lcom/tencent/mm/ui/tools/FrameIV;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    invoke-virtual {v5}, Lcom/tencent/mm/ui/tools/FrameIV;->getWidth()I

    move-result v5

    aget v7, v0, v3

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_0

    aget v0, v0, v3

    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-boolean v7, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->d:Z

    if-eqz v7, :cond_2

    iget v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->s:I

    iget v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->t:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->u:I

    iget v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->v:I

    invoke-direct {p0, v1, v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CropImage_bg_vertical"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CropImage_bg_horizontal"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1, v3}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "CropImage_bg_vertical"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CropImage_bg_horizontal"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->setResult(ILandroid/content/Intent;)V

    :goto_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->finish()V

    :goto_3
    return-void

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    aget v0, v0, v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v9}, Lcom/tencent/mm/ui/tools/CropImageUI;->setResult(I)V

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    iget-object v8, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    invoke-virtual {v8}, Lcom/tencent/mm/ui/tools/FrameIV;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v0, v7

    iget-object v7, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    invoke-virtual {v7}, Lcom/tencent/mm/ui/tools/FrameIV;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_5

    :cond_3
    invoke-static {v1, v2, v4, v5, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_a

    const-string v0, "MicroMsg.CropImageUI"

    const-string v1, "doCropImage: error"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v9}, Lcom/tencent/mm/ui/tools/CropImageUI;->setResult(I)V

    :goto_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->finish()V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(Landroid/graphics/Matrix;)[[F

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/MatrixEquation;->a([[F)[[F

    move-result-object v0

    int-to-float v1, v2

    int-to-float v7, v4

    add-int/2addr v2, v5

    int-to-float v2, v2

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [F

    aput v1, v5, v3

    aput v7, v5, v6

    const/4 v1, 0x2

    aput v11, v5, v1

    const/4 v1, 0x3

    new-array v1, v1, [F

    aput v2, v1, v3

    aput v4, v1, v6

    const/4 v2, 0x2

    aput v11, v1, v2

    invoke-static {v0, v5}, Lcom/tencent/mm/ui/tools/MatrixEquation;->a([[F[F)[F

    move-result-object v4

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/MatrixEquation;->a([[F[F)[F

    move-result-object v0

    aget v1, v4, v3

    aget v2, v0, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    aget v2, v4, v6

    aget v5, v0, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    if-gez v1, :cond_6

    move v1, v3

    :cond_6
    if-gez v2, :cond_7

    move v2, v3

    :cond_7
    aget v5, v4, v3

    aget v3, v0, v3

    sub-float v3, v5, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    aget v4, v4, v6

    aget v0, v0, v6

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v4, v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->q:I

    rem-int/lit8 v0, v0, 0x4

    packed-switch v0, :pswitch_data_0

    :goto_6
    add-int v0, v1, v3

    iget-object v7, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-le v0, v7, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int v3, v0, v1

    :cond_8
    add-int v0, v2, v4

    iget-object v7, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v0, v7, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v4, v0, v2

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_0
    div-int/lit8 v0, v3, 0x2

    int-to-float v0, v0

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v10, v0, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_6

    :pswitch_1
    const/high16 v0, 0x42b4

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v0, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_6

    :pswitch_2
    const/high16 v0, 0x4334

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v0, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_6

    :pswitch_3
    const/high16 v0, 0x4387

    div-int/lit8 v7, v3, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v0, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CropImage_OutputPath"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "CropImage_OutputPath"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic u(Lcom/tencent/mm/ui/tools/CropImageUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->b:Z

    return v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030047

    return v0
.end method

.method protected final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final j()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f070112

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f070111

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->g:Landroid/widget/ImageView;

    const v0, 0x7f070110

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/tools/FrameIV;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CropImage_bCrop"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->a:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CropImage_bPrev"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->b:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CropImage_bMatting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->c:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CropImageUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CropImage_bBackground"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->d:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iput-boolean v2, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->p:Z

    const v0, 0x7f07010f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/ui/tools/CropImageUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/CropImageUI$2;-><init>(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    const v0, 0x7f070113

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v1, Lcom/tencent/mm/ui/tools/CropImageUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/CropImageUI$3;-><init>(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f070115

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f070114

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/tools/CropImageUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->d:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->h:Lcom/tencent/mm/ui/tools/FrameIV;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/tools/FrameIV;->setVisibility(I)V

    :cond_2
    new-instance v0, Lcom/tencent/mm/ui/tools/CropImageUI$4;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/CropImageUI$4;-><init>(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/mm/ui/tools/CropImageUI$5;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/CropImageUI$5;-><init>(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v3, Lcom/tencent/mm/ui/tools/CropImageUI$6;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/tools/CropImageUI$6;-><init>(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    invoke-direct {v0, v3, v5}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    new-instance v3, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v4, Lcom/tencent/mm/ui/tools/CropImageUI$7;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/tools/CropImageUI$7;-><init>(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    invoke-direct {v3, v4, v5}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    new-instance v4, Lcom/tencent/mm/ui/tools/CropImageUI$8;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/ui/tools/CropImageUI$8;-><init>(Lcom/tencent/mm/ui/tools/CropImageUI;Lcom/tencent/mm/platformtools/MTimerHandler;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/tencent/mm/ui/tools/CropImageUI$9;

    invoke-direct {v0, p0, v3}, Lcom/tencent/mm/ui/tools/CropImageUI$9;-><init>(Lcom/tencent/mm/ui/tools/CropImageUI;Lcom/tencent/mm/platformtools/MTimerHandler;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->b:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0a0318

    :goto_0
    new-instance v1, Lcom/tencent/mm/ui/tools/CropImageUI$10;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/CropImageUI$10;-><init>(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->a:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0a0316

    new-instance v1, Lcom/tencent/mm/ui/tools/CropImageUI$11;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/CropImageUI$11;-><init>(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    :goto_1
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->a:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0a0315

    goto :goto_0

    :cond_4
    const v0, 0x7f0a0314

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/tencent/mm/ui/tools/CropImageUI$12;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/CropImageUI$12;-><init>(Lcom/tencent/mm/ui/tools/CropImageUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CropImageUI;->setRequestedOrientation(I)V

    return-void
.end method
