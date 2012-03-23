.class Lcom/tencent/mm/network/GYNet$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/network/connpool/InAddrHost$IAddrPlus;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/GYNet;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/GYNet;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/network/GYNet$3;->a:Lcom/tencent/mm/network/GYNet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[Lcom/tencent/mm/network/connpool/InAddress;
    .locals 2

    iget-object v1, p0, Lcom/tencent/mm/network/GYNet$3;->a:Lcom/tencent/mm/network/GYNet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/GYNet$3;->a:Lcom/tencent/mm/network/GYNet;

    invoke-static {v0}, Lcom/tencent/mm/network/GYNet;->d(Lcom/tencent/mm/network/GYNet;)[Lcom/tencent/mm/network/connpool/InAddress;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
