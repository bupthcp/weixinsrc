.class public Lcom/tencent/mm/modelemoji/EmojiInfo;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:I

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:I

.field private J:I

.field private final K:Ljava/lang/String;

.field private m:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v0, 0x11

    sput v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->a:I

    const/16 v0, 0x20

    sput v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->b:I

    const/16 v0, 0x21

    sput v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->c:I

    const/16 v0, 0x22

    sput v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->n:I

    const/16 v0, 0x23

    sput v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->o:I

    const/16 v0, 0x24

    sput v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->p:I

    const/16 v0, 0x25

    sput v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->q:I

    const/16 v0, 0x26

    sput v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->r:I

    const/16 v0, 0x31

    sput v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->d:I

    const/16 v0, 0x32

    sput v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->e:I

    const/16 v0, 0x41

    sput v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->f:I

    const/16 v0, 0x51

    sput v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->g:I

    sput v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->h:I

    sput v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->i:I

    sput v3, Lcom/tencent/mm/modelemoji/EmojiInfo;->s:I

    const/4 v0, 0x4

    sput v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->j:I

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->k:I

    sput v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->t:I

    sput v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->u:I

    sput v3, Lcom/tencent/mm/modelemoji/EmojiInfo;->l:I

    const-string v0, "0_0"

    sput-object v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->v:Ljava/lang/String;

    const-string v0, "custom_emoji/"

    sput-object v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->N()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->K:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->q()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    iput-object p1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->K:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->q()V

    return-void
.end method

.method public static b(I)Z
    .locals 1

    sget v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->e:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->d:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->y:Ljava/lang/String;

    sget v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->a:I

    iput v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->h:I

    iput v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->A:I

    iput v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->B:I

    iput v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->C:I

    sget v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->k:I

    iput v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->D:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->E:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->F:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->G:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->H:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->I:I

    iput v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->J:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "md5"

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const-string v0, "svrid"

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const-string v0, "catalog"

    iget v2, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    const-string v0, "type"

    iget v2, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->A:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    const-string v0, "size"

    iget v2, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->B:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    const-string v0, "start"

    iget v2, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->C:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    const-string v0, "state"

    iget v2, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->D:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-string v0, "name"

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const-string v0, "content"

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    const-string v0, "reserved1"

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const-string v2, "reserved2"

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->H:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    const-string v0, "reserved3"

    iget v2, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->I:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b
    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->m:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    const-string v0, "reserved4"

    iget v2, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->J:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_c
    return-object v1

    :cond_d
    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->H:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->K:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v1

    invoke-static {v2, v1}, Lb/a/e;->a(Ljava/io/InputStream;F)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_1
    :try_start_3
    const-string v3, "MicroMsg.EmojiInfo"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->G:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6

    const/high16 v5, 0x4000

    const/4 v1, 0x0

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->a:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->e:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->d:I

    if-ne v0, v2, :cond_7

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->n()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->A:I

    sget v3, Lcom/tencent/mm/modelemoji/EmojiInfo;->i:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->n()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/mm/modelemoji/EmojiInfo;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_4

    const/high16 v0, 0x4000

    invoke-static {v2, v0}, Lb/a/e;->a(Ljava/io/InputStream;F)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    move-result-object v0

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->o()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    :cond_4
    const/high16 v0, 0x3fc0

    :try_start_4
    invoke-static {v2, v0}, Lb/a/e;->a(Ljava/io/InputStream;F)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    move-result-object v0

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_5
    :goto_3
    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_6
    :goto_5
    throw v0

    :cond_7
    :try_start_8
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->K:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    const/high16 v0, 0x3fc0

    :try_start_9
    invoke-static {v2, v0}, Lb/a/e;->a(Ljava/io/InputStream;F)Landroid/graphics/Bitmap;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v0

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_6
    :try_start_b
    const-string v3, "MicroMsg.EmojiInfo"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v2, :cond_5

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_7
    if-eqz v1, :cond_8

    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    :cond_8
    :goto_8
    throw v0

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catch_9
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_a
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->x:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->y:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->A:I

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->B:I

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->C:I

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->D:I

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->E:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->F:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->G:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->H:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->I:I

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->J:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->x:Ljava/lang/String;

    return-void
.end method

.method public final a([B)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->K:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2, p1}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)I

    const/4 v0, 0x1

    return v0
.end method

.method public final a(II)[B
    .locals 5

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->a:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->e:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->d:I

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/tencent/mm/modelemoji/EmojiInfo;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    int-to-long v2, p1

    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    new-array v0, p2, [B

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->C:I

    invoke-static {v0, v1, p2}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;II)[B

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_4
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->a:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->e:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v2, Lcom/tencent/mm/modelemoji/EmojiInfo;->d:I

    if-ne v1, v2, :cond_4

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/mm/modelemoji/EmojiInfo;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->B:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->B:I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    :cond_2
    return-void

    :catch_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_1
    throw v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->y:Ljava/lang/String;

    return-void
.end method

.method public final b()Z
    .locals 3

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->e:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->d:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->K:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->E:Ljava/lang/String;

    return-void
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->A:I

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->i:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->p()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->A:I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->F:Ljava/lang/String;

    return-void
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->e:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->d:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->B:I

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->G:Ljava/lang/String;

    return-void
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->A:I

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->i:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->x:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->C:I

    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->D:I

    return-void
.end method

.method public final g()Z
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->y:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->y:Ljava/lang/String;

    goto :goto_0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->z:I

    return v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->A:I

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->B:I

    return v0
.end method

.method public final l()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->C:I

    return v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->D:I

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->E:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->E:Ljava/lang/String;

    goto :goto_0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->F:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->F:Ljava/lang/String;

    goto :goto_0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->G:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiInfo;->G:Ljava/lang/String;

    goto :goto_0
.end method
