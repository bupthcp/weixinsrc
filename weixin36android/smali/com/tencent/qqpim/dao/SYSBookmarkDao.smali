.class public abstract Lcom/tencent/qqpim/dao/SYSBookmarkDao;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/interfaces/IDao;


# static fields
.field public static final OS_1_5:I = 0x3

.field public static final OS_1_6:I = 0x4

.field public static final OS_2:I = 0x5

.field public static final OS_2_0_1:I = 0x6

.field public static final OS_2_1:I = 0x7

.field public static final OS_2_2:I = 0x8

.field public static final version:S = 0x1100s


# instance fields
.field protected contentResolver:Landroid/content/ContentResolver;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSBookmarkDao;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static getIDao(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IDao;
    .locals 1

    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->isSDKVersionBelow2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/qqpim/dao/SYSBookmarkDaoV1;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SYSBookmarkDaoV1;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/qqpim/dao/SYSBookmarkDaoV2;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/dao/SYSBookmarkDaoV2;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSDKVersion()I
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static isSDKVersionBelow2()Z
    .locals 2

    invoke-static {}, Lcom/tencent/qqpim/dao/SYSBookmarkDao;->getSDKVersion()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public queryNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
