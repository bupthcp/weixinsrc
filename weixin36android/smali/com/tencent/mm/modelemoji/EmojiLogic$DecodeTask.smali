.class Lcom/tencent/mm/modelemoji/EmojiLogic$DecodeTask;
.super Landroid/os/AsyncTask;


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelemoji/EmojiLogic$DecodeTask;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 3

    const/high16 v2, 0x3fc0

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    :goto_0
    return p0

    :cond_0
    int-to-float v0, p0

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int p0, v0

    goto :goto_0
.end method

.method private static a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "custom_emoji/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v4, Lcom/tencent/mm/modelemoji/GifDecoder;

    invoke-direct {v4, v0}, Lcom/tencent/mm/modelemoji/GifDecoder;-><init>([B)V

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v4, v6}, Lcom/tencent/mm/modelemoji/GifDecoder;->a(Ljava/util/Vector;)I

    move v5, v2

    :goto_0
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v5, v0, :cond_4

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;

    iget-object v4, v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/mm/modelemoji/EmojiLogic$DecodeTask;->a(I)I

    move-result v7

    iget-object v4, v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/mm/modelemoji/EmojiLogic$DecodeTask;->a(I)I

    move-result v8

    iget-object v4, v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v7, :cond_0

    iget-object v4, v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v8, v4, :cond_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->a:Landroid/graphics/Bitmap;

    const/4 v9, 0x1

    invoke-static {v4, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v0, v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v0, 0x64

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/mm/model/AccountStorage;->N()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v0, v7, v8}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :goto_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->a:Landroid/graphics/Bitmap;

    const/16 v7, 0x64

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tencent/mm/model/AccountStorage;->N()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_4
    move v0, v2

    :goto_5
    return v0

    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;

    iget v0, v0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->b:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v3, :cond_5

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    :goto_6
    move v0, v1

    goto :goto_5

    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_7
    if-eqz v3, :cond_6

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_8
    throw v0

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    check-cast p1, [Landroid/content/Context;

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/modelemoji/EmojiLogic;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/EmojiView;->b(Z)V

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {v0}, Lcom/tencent/mm/modelemoji/EmojiLogic$DecodeTask;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    check-cast p1, Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/EmojiView;->b(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelemoji/EmojiLogic;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/modelemoji/EmojiLogic;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelemoji/EmojiLogic;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/tencent/mm/modelemoji/EmojiLogic$DecodeTask;

    invoke-direct {v0, v3}, Lcom/tencent/mm/modelemoji/EmojiLogic$DecodeTask;-><init>(B)V

    new-array v1, v1, [Landroid/content/Context;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiLogic$DecodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void
.end method
