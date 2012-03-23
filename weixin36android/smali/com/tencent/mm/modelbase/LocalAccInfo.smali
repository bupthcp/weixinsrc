.class public Lcom/tencent/mm/modelbase/LocalAccInfo;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/tencent/mm/network/IAccInfo_AIDL;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/network/IAccInfo_AIDL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/modelbase/LocalAccInfo;->a:Lcom/tencent/mm/network/IAccInfo_AIDL;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/LocalAccInfo;->a:Lcom/tencent/mm/network/IAccInfo_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IAccInfo_AIDL;->g()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/LocalAccInfo;->a:Lcom/tencent/mm/network/IAccInfo_AIDL;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/network/IAccInfo_AIDL;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/LocalAccInfo;->a:Lcom/tencent/mm/network/IAccInfo_AIDL;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/mm/network/IAccInfo_AIDL;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/LocalAccInfo;->a:Lcom/tencent/mm/network/IAccInfo_AIDL;

    invoke-interface {v0}, Lcom/tencent/mm/network/IAccInfo_AIDL;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
