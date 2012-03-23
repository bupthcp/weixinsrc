.class public final Lcom/tencent/mm/modelgetvuserinfo/SceneGetVUserInfo;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->R()Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;->a(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/modelgetvuserinfo/SceneGetVUserInfo;->a(Z)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 9

    const v8, 0x10203

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    sub-long v6, v2, v0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    if-eqz p0, :cond_2

    const-wide/32 v4, 0x240c8400

    sub-long v0, v2, v0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    new-instance v0, Lcom/tencent/mm/modelgetvuserinfo/SceneGetVUserInfo$DoGetVuserinfo;

    invoke-direct {v0}, Lcom/tencent/mm/modelgetvuserinfo/SceneGetVUserInfo$DoGetVuserinfo;-><init>()V

    goto :goto_0
.end method
