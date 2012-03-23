.class public Lcom/tencent/mm/modelavatar/AvatarStorage;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# instance fields
.field private b:Lcom/tencent/mm/storagebase/MStorageEvent;

.field private c:Lcom/tencent/mm/algorithm/LRUMap;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    sput v0, Lcom/tencent/mm/modelavatar/AvatarStorage;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mm/modelavatar/AvatarStorage$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage$1;-><init>(Lcom/tencent/mm/modelavatar/AvatarStorage;)V

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->b:Lcom/tencent/mm/storagebase/MStorageEvent;

    iput-object v1, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    iput-object v1, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "avatar/default_hd_avatar.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lb/a/e;->a(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    const/16 v1, 0x1e0

    invoke-static {p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v1, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static a([B)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    const/16 v3, 0x60

    invoke-static {p0}, Lcom/tencent/mm/platformtools/Util;->b([B)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "MicroMsg.AvatarStorage"

    const-string v2, "updating avatar decode failed"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v1, v3, v3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    const/high16 v1, 0x4110

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/tencent/mm/modelavatar/AvatarStorage;)Lcom/tencent/mm/algorithm/LRUMap;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelavatar/AvatarStorage;)Lcom/tencent/mm/storagebase/MStorageEvent;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->b:Lcom/tencent/mm/storagebase/MStorageEvent;

    return-object v0
.end method

.method private b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/algorithm/LRUMap;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v1, p1, v0}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Landroid/graphics/Bitmap;)Z
    .locals 1

    invoke-static {p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;Z)Ljava/util/Set;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/algorithm/LRUMap;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/algorithm/LRUMap;->c(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private static c(Landroid/graphics/Bitmap;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v2, 0x0

    const/16 v3, 0x60

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/algorithm/LRUMap;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Ljava/lang/String;Z)Ljava/util/Set;

    return-void
.end method

.method private g(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    const/16 v3, 0x60

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    invoke-static {v1, v3, v3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "I_AM_NO_SDCARD_USER_NAME"

    invoke-direct {p0, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f0201f2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "MicroMsg.AvatarStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not cached, recycled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reload="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "I_AM_NO_SDCARD_USER_NAME"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x4110

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "I_AM_NO_SDCARD_USER_NAME"

    invoke-direct {p0, v1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hd_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/algorithm/LRUMap;

    sget v1, Lcom/tencent/mm/modelavatar/AvatarStorage;->a:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/algorithm/LRUMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v0}, Lcom/tencent/mm/algorithm/LRUMap;->a()V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    :goto_0
    sput p1, Lcom/tencent/mm/modelavatar/AvatarStorage;->a:I

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    sget v1, Lcom/tencent/mm/modelavatar/AvatarStorage;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/algorithm/LRUMap;->a(I)V

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->b:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storagebase/MStorageEvent;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 4

    const/16 v3, 0x60

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p2, v3, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    move-object p2, v0

    :cond_1
    const/high16 v0, 0x4110

    invoke-static {p2, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Ljava/lang/String;Z)Ljava/util/Set;

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->b:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v3, p1}, Lcom/tencent/mm/storagebase/MStorageEvent;->b(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->b:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v3}, Lcom/tencent/mm/storagebase/MStorageEvent;->a()V

    invoke-virtual {p0, p1, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage$SmallBM;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move v0, v2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[B)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a([B)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "MicroMsg.AvatarStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->f(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->b:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v2, p1}, Lcom/tencent/mm/storagebase/MStorageEvent;->b(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->b:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v2}, Lcom/tencent/mm/storagebase/MStorageEvent;->a()V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage$SmallBM;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelavatar/AvatarStorage$SmallBM;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/tencent/mm/modelavatar/AvatarStorage;->h(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v3, "MicroMsg.AvatarStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read from png :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/high16 v1, 0x4110

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage$SmallBM;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->g(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v0}, Lcom/tencent/mm/algorithm/LRUMap;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->c:Lcom/tencent/mm/algorithm/LRUMap;

    :cond_0
    return-void
.end method

.method public final b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->b:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storagebase/MStorageEvent;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Z)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.AvatarStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeavatar :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    invoke-static {v1}, Lcom/tencent/mm/algorithm/FileOperation;->d(Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/String;[B)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a([B)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "MicroMsg.AvatarStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode failed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Ljava/lang/String;Z)Z

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, p1, v2}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lcom/tencent/mm/modelavatar/AvatarStorage;->b:Lcom/tencent/mm/storagebase/MStorageEvent;

    invoke-virtual {v4, p1}, Lcom/tencent/mm/storagebase/MStorageEvent;->b(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/modelavatar/AvatarStorage$3;

    invoke-direct {v5, p0, v3, p1, v2}, Lcom/tencent/mm/modelavatar/AvatarStorage$3;-><init>(Lcom/tencent/mm/modelavatar/AvatarStorage;Ljava/util/Set;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    new-array v2, v1, [Ljava/lang/String;

    aput-object v4, v2, v0

    invoke-virtual {v5, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v0, v1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "MicroMsg.AvatarStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHD Headimage Bitmap :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->h(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
