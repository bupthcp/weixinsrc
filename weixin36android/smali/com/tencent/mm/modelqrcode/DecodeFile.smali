.class public Lcom/tencent/mm/modelqrcode/DecodeFile;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeFinCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeFile;->a:Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeFinCallback;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelqrcode/DecodeFile;)Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeFinCallback;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeFile;->a:Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeFinCallback;

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v0

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/tencent/mm/modelqrcode/DecodeFile;->a(Landroid/graphics/Bitmap;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v0

    const-string v3, "MicroMsg.DecodeFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decode once time(ms):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const-wide/16 v0, 0x1

    :cond_2
    const-wide/16 v2, 0x2710

    div-long v0, v2, v0

    long-to-int v2, v0

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_4

    mul-int/lit8 v0, v1, 0xa

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v0, v3, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gt v0, v3, :cond_4

    invoke-static {p0, v0}, Lcom/tencent/mm/modelqrcode/DecodeFile;->a(Landroid/graphics/Bitmap;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Bitmap;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/tencent/mm/modelqrcode/RGBLuminanceSource;

    invoke-direct {v0, p0, p1, p1}, Lcom/tencent/mm/modelqrcode/RGBLuminanceSource;-><init>(Landroid/graphics/Bitmap;II)V

    new-instance v1, La/k;

    new-instance v2, La/b/f;

    invoke-direct {v2, v0}, La/b/f;-><init>(La/o;)V

    invoke-direct {v1, v2}, La/k;-><init>(La/e;)V

    :try_start_0
    new-instance v0, La/j;

    invoke-direct {v0}, La/j;-><init>()V

    invoke-virtual {v0, v1}, La/j;->a(La/k;)La/h;

    move-result-object v1

    invoke-virtual {v0}, La/j;->a()V

    invoke-virtual {v1}, La/h;->a()Ljava/lang/String;
    :try_end_0
    .catch La/i; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-wide/high16 v2, 0x3ff0

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v0, v1, :cond_2

    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    add-int/lit16 v0, v0, 0x1e0

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x1e0

    int-to-double v0, v0

    cmpg-double v5, v0, v2

    if-gtz v5, :cond_1

    move-wide v0, v2

    :cond_1
    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v2

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v5, v5

    div-double/2addr v5, v0

    double-to-int v5, v5

    iget v4, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v6, v4

    div-double v0, v6, v0

    double-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {p0, v5, v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v1

    const-string v3, "MicroMsg.DecodeFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compress img time(ms):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/modelqrcode/DecodeFile;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeFinCallback;)I
    .locals 3

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/tencent/mm/modelqrcode/DecodeFile;->a:Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeFinCallback;

    new-instance v0, Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeTask;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeTask;-><init>(Lcom/tencent/mm/modelqrcode/DecodeFile;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2
.end method
