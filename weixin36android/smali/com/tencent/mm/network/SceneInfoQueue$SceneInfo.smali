.class Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/tencent/mm/network/INetContext;

.field b:Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/network/INetContext;Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    iput-object p2, p0, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->b:Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    invoke-interface {v0}, Lcom/tencent/mm/network/INetContext;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->b:Lcom/tencent/mm/network/IOnGYNetEnd_AIDL;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/SceneInfoQueue$SceneInfo;->a:Lcom/tencent/mm/network/INetContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
