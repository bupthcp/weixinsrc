.class public Lcom/tencent/mm/network/connpool/InAddrHost;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:[I

.field private d:Ljava/util/LinkedList;

.field private e:Lcom/tencent/mm/network/connpool/InAddrHost$IAddrPlus;

.field private f:Lcom/tencent/mm/network/connpool/InAddress;

.field private g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[ILcom/tencent/mm/network/connpool/InAddrHost$IAddrPlus;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->a:I

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->g:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/mm/network/connpool/InAddrHost;->a(Ljava/lang/String;[ILcom/tencent/mm/network/connpool/InAddrHost$IAddrPlus;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    const/16 v0, 0x9c4

    if-ge p1, v0, :cond_0

    const-string v0, "MicroMsg.InAddrHost"

    const-string v1, "ignore dangerous timeout from server"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->a:I

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;[ILcom/tencent/mm/network/connpool/InAddrHost$IAddrPlus;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->c:[I

    iput-object p3, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->e:Lcom/tencent/mm/network/connpool/InAddrHost$IAddrPlus;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->d:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->g:J

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->g:J

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const-string v0, "MicroMsg.InAddrHost"

    const-string v1, "dns expired, force resolving"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([I)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget v4, p1, v1

    if-lez v4, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->c:[I

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_5

    aget v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-lez v5, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->c:[I

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->c:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->c:[I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public final declared-synchronized a([Lcom/tencent/mm/network/connpool/InAddress;)V
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->d:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    if-eqz p1, :cond_0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    const-string v4, "MicroMsg.InAddrHost"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add cached ip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->d:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->e:Lcom/tencent/mm/network/connpool/InAddrHost$IAddrPlus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->e:Lcom/tencent/mm/network/connpool/InAddrHost$IAddrPlus;

    invoke-interface {v1}, Lcom/tencent/mm/network/connpool/InAddrHost$IAddrPlus;->a()[Lcom/tencent/mm/network/connpool/InAddress;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    const-string v4, "MicroMsg.InAddrHost"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add cached ip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->d:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/tencent/mm/network/connpool/InAddress;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->f:Lcom/tencent/mm/network/connpool/InAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->a:I

    return v0
.end method

.method public final declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()[Lcom/tencent/mm/network/connpool/InAddress;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->d:Ljava/util/LinkedList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/tencent/mm/network/connpool/InAddress;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/network/connpool/InAddress;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Z
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->d:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/network/connpool/InAddress;

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->f:Lcom/tencent/mm/network/connpool/InAddress;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()[I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/InAddrHost;->c:[I

    return-object v0
.end method
