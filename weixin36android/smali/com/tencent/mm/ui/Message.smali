.class Lcom/tencent/mm/ui/Message;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/mm/modelpmsg/PushMessage;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelpmsg/PushMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/ui/Message;->a:Lcom/tencent/mm/modelpmsg/PushMessage;

    return-void
.end method

.method private static a(Ljava/util/Map;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lb/a/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {p1}, Lb/a/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/tencent/mm/modelpmsg/PushMessage;->b(Ljava/lang/String;)Lcom/tencent/mm/modelpmsg/PushMessage$IMAGE_PATH_TYPE;

    move-result-object v2

    sget-object v3, Lcom/tencent/mm/modelpmsg/PushMessage$IMAGE_PATH_TYPE;->c:Lcom/tencent/mm/modelpmsg/PushMessage$IMAGE_PATH_TYPE;

    if-ne v2, v3, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/tencent/mm/modelpmsg/PushMessage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    :try_start_0
    sget-object v3, Lcom/tencent/mm/modelpmsg/PushMessage$IMAGE_PATH_TYPE;->a:Lcom/tencent/mm/modelpmsg/PushMessage$IMAGE_PATH_TYPE;

    if-ne v2, v3, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/a/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v3}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lb/a/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v0, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v0, v4

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object v2, v0

    :cond_8
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Message;->a:Lcom/tencent/mm/modelpmsg/PushMessage;

    iget-object v0, v0, Lcom/tencent/mm/modelpmsg/PushMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/ui/ViewHolder;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p1, Lcom/tencent/mm/ui/ViewHolder;->b:Landroid/widget/Button;

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/Message;->a:Lcom/tencent/mm/modelpmsg/PushMessage;

    iget-object v0, v0, Lcom/tencent/mm/modelpmsg/PushMessage;->d:Ljava/util/Map;

    iget-object v1, p1, Lcom/tencent/mm/ui/ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/Message;->a(Ljava/util/Map;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/ui/ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/tencent/mm/ui/ViewHolder;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/mm/ui/Message;->a:Lcom/tencent/mm/modelpmsg/PushMessage;

    iget-boolean v1, v1, Lcom/tencent/mm/modelpmsg/PushMessage;->b:Z

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    goto :goto_2
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Message;->a:Lcom/tencent/mm/modelpmsg/PushMessage;

    iget-object v0, v0, Lcom/tencent/mm/modelpmsg/PushMessage;->c:Ljava/lang/String;

    return-object v0
.end method
