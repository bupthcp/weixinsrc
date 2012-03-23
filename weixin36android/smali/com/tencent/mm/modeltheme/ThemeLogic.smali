.class public final Lcom/tencent/mm/modeltheme/ThemeLogic;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/tencent/mm/modeltheme/ThemeInfo;
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->Q()Lcom/tencent/mm/modeltheme/ThemeInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modeltheme/ThemeInfoStorage;->e(I)Lcom/tencent/mm/modeltheme/ThemeInfo;

    move-result-object v0

    return-object v0
.end method
