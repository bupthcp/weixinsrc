.class public final Lcom/tencent/mm/network/NetService;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field private b:Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/network/NetService;->b:Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/network/NetService;->a:Z

    return-void
.end method

.method public static a(IILandroid/content/Context;)Z
    .locals 8

    const/16 v7, 0x17

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string v2, "com.tencent.mm_preferences"

    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "settings_active_time_full"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "settings_active_begin_time_hour"

    const/16 v4, 0x8

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "settings_active_begin_time_min"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "settings_active_end_time_hour"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "settings_active_end_time_min"

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v3, v5, :cond_2

    if-eq v4, v2, :cond_0

    :cond_2
    if-ne v3, v5, :cond_4

    if-ge v4, v2, :cond_4

    if-ne p0, v3, :cond_3

    if-lt p1, v4, :cond_3

    if-le p1, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-le v5, v3, :cond_8

    if-le p0, v3, :cond_5

    if-lt p0, v5, :cond_0

    :cond_5
    if-ne p0, v3, :cond_6

    if-ge p1, v4, :cond_0

    :cond_6
    if-ne p0, v5, :cond_7

    if-le p1, v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    if-lt v5, v3, :cond_9

    if-ne v3, v5, :cond_0

    if-le v4, v2, :cond_0

    :cond_9
    if-le p0, v3, :cond_a

    if-le p0, v7, :cond_0

    :cond_a
    if-ne p0, v3, :cond_b

    if-ge p1, v4, :cond_0

    :cond_b
    if-ne p0, v5, :cond_c

    if-le p1, v2, :cond_0

    :cond_c
    if-lez p0, :cond_d

    if-lt p0, v5, :cond_0

    :cond_d
    move v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/tencent/mm/platformtools/GprsSetting;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/tencent/mm/platformtools/GprsSetting;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/NetService;->b:Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/network/NetService;->b:Lcom/tencent/mm/network/connpool/IConnPoolMoniter_AIDL;

    return-void
.end method
