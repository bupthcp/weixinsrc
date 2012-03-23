.class public final Lcom/tencent/mm/modelavatar/AvatarLogic;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/List;

.field private static b:I

.field private static c:Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldAvatarPusher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/modelavatar/AvatarLogic;->a:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/modelavatar/AvatarLogic;->b:I

    new-instance v0, Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldAvatarPusher;

    new-instance v1, Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldCallBack;

    invoke-direct {v1}, Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldCallBack;-><init>()V

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldAvatarPusher;-><init>(Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldCallBack;)V

    sput-object v0, Lcom/tencent/mm/modelavatar/AvatarLogic;->c:Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldAvatarPusher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0, p1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->n(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v5, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/lit8 v2, p1, 0x2

    sub-int v2, v0, v2

    if-lez v2, :cond_1

    mul-int/lit8 v2, p1, 0x2

    sub-int v2, v1, v2

    if-lez v2, :cond_1

    mul-int/lit8 v2, p1, 0x2

    sub-int v3, v0, v2

    mul-int/lit8 v0, p1, 0x2

    sub-int v4, v1, v0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, p0

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/modelavatar/AvatarLogic;->b:I

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarLogic;->c:Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldAvatarPusher;

    invoke-virtual {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldAvatarPusher;->a()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->B()Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/modelavatar/AvatarLogic;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarLogic;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarLogic;->c:Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldAvatarPusher;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldAvatarPusher;->a(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarLogic;->c:Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldAvatarPusher;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldAvatarPusher;->a(J)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@fb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/String;I)Z

    return-void
.end method

.method public static a(JI)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 2

    new-instance v0, Lcom/tencent/mm/modelavatar/ImgFlag;

    invoke-direct {v0}, Lcom/tencent/mm/modelavatar/ImgFlag;-><init>()V

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->b(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->B()Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->a(Lcom/tencent/mm/modelavatar/ImgFlag;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {p0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/tencent/mm/modelavatar/ImgFlag;

    invoke-direct {v0}, Lcom/tencent/mm/modelavatar/ImgFlag;-><init>()V

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(Z)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(I)V

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/ImgFlag;->b(I)V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(I)V

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->B()Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->a(Lcom/tencent/mm/modelavatar/ImgFlag;)Z

    move-result v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@fb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->n(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static b(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/tencent/mm/algorithm/UIN;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/algorithm/UIN;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@qqim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarLogic;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/tencent/mm/modelavatar/AvatarLogic;->b:I

    return v0
.end method

.method public static c(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    invoke-static {p0}, Lcom/tencent/mm/model/ContactStorageLogic;->s(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-string v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic d()I
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/modelavatar/AvatarLogic;->b:I

    return v0
.end method

.method public static d(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, -0x1

    invoke-static {p0}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-string v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic e()I
    .locals 2

    sget v0, Lcom/tencent/mm/modelavatar/AvatarLogic;->b:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/mm/modelavatar/AvatarLogic;->b:I

    return v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "MicroMsg.AvatarLogic"

    const-string v2, "setQQAvatarImgFlag failed : invalid username"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "@qqim"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MicroMsg.AvatarLogic"

    const-string v2, "setQQAvatarImgFlag failed : invalid username"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/mm/modelavatar/ImgFlag;

    invoke-direct {v0}, Lcom/tencent/mm/modelavatar/ImgFlag;-><init>()V

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelavatar/ImgFlag;->b(I)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->B()Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->a(Lcom/tencent/mm/modelavatar/ImgFlag;)Z

    move-result v0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "MicroMsg.AvatarLogic"

    const-string v2, "setMBAvatarImgFlag failed : invalid username"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "@t.qq.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MicroMsg.AvatarLogic"

    const-string v2, "setMBAvatarImgFlag failed : invalid username"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/tencent/mm/modelavatar/ImgFlag;

    invoke-direct {v0}, Lcom/tencent/mm/modelavatar/ImgFlag;-><init>()V

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelavatar/ImgFlag;->b(I)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->B()Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->a(Lcom/tencent/mm/modelavatar/ImgFlag;)Z

    move-result v0

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->B()Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelavatar/ImgFlag;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/tencent/mm/modelavatar/ImgFlag;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->n(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->n(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static j(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->n(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->o(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->v()Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->n(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->o(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->B()Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelavatar/ImgFlag;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/tencent/mm/modelavatar/ImgFlag;->d()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/tencent/mm/modelavatar/ImgFlag;->d()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->I()I

    move-result v3

    invoke-static {p0, v3}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/String;I)Z

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->I()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static n(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->o(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v1, "MicroMsg.AvatarLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getting head image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->v()Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->a(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->B()Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelavatar/ImgFlag;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/modelavatar/ImgFlag;->d()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->v()Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/mm/modelavatar/AvatarLogic$AvatarSerivce;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static o(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
