.class Lcom/tencent/mm/modelvideo/ImportVideo$1;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:I

.field private synthetic b:Lcom/tencent/mm/modelvideo/ImportVideo;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvideo/ImportVideo;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->a:I

    return-void
.end method

.method private varargs a()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->a:I

    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v2, v2, Lcom/tencent/mm/modelvideo/ImportVideo;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v3, v3, Lcom/tencent/mm/modelvideo/ImportVideo;->e:Landroid/content/Intent;

    invoke-static {v2, v3}, Lb/a/ah;->a(Landroid/content/Context;Landroid/content/Intent;)Lb/a/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    const v0, -0xc355

    iput v0, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->a:I

    const-string v0, ""

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    move-object v3, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v4, v3, Lb/a/d;->a:Ljava/lang/String;

    iput-object v4, v2, Lcom/tencent/mm/modelvideo/ImportVideo;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v2, v2, Lcom/tencent/mm/modelvideo/ImportVideo;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    const v0, -0xc351

    iput v0, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->a:I

    const-string v0, ""

    goto :goto_1

    :cond_2
    const v4, 0x989680

    if-le v2, v4, :cond_3

    const v0, -0xc352

    iput v0, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->a:I

    const-string v0, ""

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v2, v2, Lcom/tencent/mm/modelvideo/ImportVideo;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v4, v4, Lcom/tencent/mm/modelvideo/ImportVideo;->h:Ljava/lang/String;

    invoke-static {v2, v4, v1}, Lcom/tencent/mm/platformtools/FilesCopy;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget v4, v3, Lb/a/d;->c:I

    div-int/lit16 v4, v4, 0x3e8

    iput v4, v2, Lcom/tencent/mm/modelvideo/ImportVideo;->d:I

    const/4 v2, 0x1

    iget-object v4, v3, Lb/a/d;->b:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    :try_start_1
    iget-object v3, v3, Lb/a/d;->b:Landroid/graphics/Bitmap;

    const/16 v4, 0x3c

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v6, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v6, v6, Lcom/tencent/mm/modelvideo/ImportVideo;->g:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-eqz v1, :cond_4

    :try_start_2
    iget-object v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v1, v1, Lcom/tencent/mm/modelvideo/ImportVideo;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x3c

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v4, v4, Lcom/tencent/mm/modelvideo/ImportVideo;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v1, v1, Lcom/tencent/mm/modelvideo/ImportVideo;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const v1, -0xc353

    iput v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->a:I

    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v1, v1, Lcom/tencent/mm/modelvideo/ImportVideo;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, -0xc354

    iput v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->a:I

    goto/16 :goto_1

    :catch_1
    move-exception v1

    :cond_6
    move v1, v2

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelvideo/ImportVideo$1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v0, v0, Lcom/tencent/mm/modelvideo/ImportVideo;->b:Lcom/tencent/mm/modelvideo/ImportVideo$OnImportFinishListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v0, v0, Lcom/tencent/mm/modelvideo/ImportVideo;->b:Lcom/tencent/mm/modelvideo/ImportVideo$OnImportFinishListener;

    iget v1, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->a:I

    iget-object v2, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v2, v2, Lcom/tencent/mm/modelvideo/ImportVideo;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget-object v3, v3, Lcom/tencent/mm/modelvideo/ImportVideo;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/modelvideo/ImportVideo$1;->b:Lcom/tencent/mm/modelvideo/ImportVideo;

    iget v4, v4, Lcom/tencent/mm/modelvideo/ImportVideo;->d:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/mm/modelvideo/ImportVideo$OnImportFinishListener;->a(ILjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
