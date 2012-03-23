.class public Lcom/tencent/mm/ui/AvatarDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;


# static fields
.field private static a:Z

.field private static final b:Landroid/graphics/Paint;

.field private static e:Landroid/graphics/Bitmap;

.field private static f:Ljava/util/List;

.field private static g:Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;


# instance fields
.field private c:Landroid/widget/ImageView;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/ui/AvatarDrawable;->a:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->f:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->g:Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/tencent/mm/ui/AvatarDrawable;->a(II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/AvatarDrawable;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/mm/ui/AvatarDrawable;->c:Landroid/widget/ImageView;

    return-void
.end method

.method public static a()I
    .locals 2

    const/high16 v0, 0x4250

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static a(II)Landroid/graphics/Bitmap;
    .locals 2

    sget-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p0, :cond_1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "avatar/default_nor_avatar.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v1

    invoke-static {v0, v1}, Lb/a/e;->a(Ljava/io/InputStream;F)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->e:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    invoke-static {v0, p0, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->e:Landroid/graphics/Bitmap;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lcom/tencent/mm/ui/MMActivity;)V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->g:Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;

    sget-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->g:Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/mm/ui/AvatarDrawable$1;

    invoke-direct {v0}, Lcom/tencent/mm/ui/AvatarDrawable$1;-><init>()V

    sput-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->g:Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/ui/AvatarDrawable;->g:Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    :cond_2
    sget-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->f:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static b()I
    .locals 2

    const/high16 v0, 0x4220

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avatar_drawable_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static b(Lcom/tencent/mm/ui/MMActivity;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sput-object v2, Lcom/tencent/mm/ui/AvatarDrawable;->g:Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    if-ne v0, p0, :cond_2

    sget-object v1, Lcom/tencent/mm/ui/AvatarDrawable;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/ui/AvatarDrawable;->g:Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    :cond_4
    sget-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    sput-object v2, Lcom/tencent/mm/ui/AvatarDrawable;->g:Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;

    goto :goto_0
.end method

.method static synthetic c()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/mm/ui/AvatarDrawable;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/AvatarDrawable;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/tencent/mm/ui/AvatarDrawable;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/AvatarDrawable;->c:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/tencent/mm/ui/AvatarDrawable;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AvatarDrawable;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v1, 0x0

    const/high16 v6, 0x40c0

    sget-boolean v0, Lcom/tencent/mm/ui/AvatarDrawable;->a:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/AvatarDrawable;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->j(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/AvatarDrawable;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/mm/ui/AvatarDrawable;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/AvatarDrawable;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/AvatarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    sget-object v3, Lcom/tencent/mm/ui/AvatarDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/AvatarDrawable;->getState()[I

    move-result-object v1

    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget v4, v1, v0

    const v5, 0x10100a7

    if-ne v4, v5, :cond_2

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v5, Lcom/tencent/mm/ui/AvatarDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
