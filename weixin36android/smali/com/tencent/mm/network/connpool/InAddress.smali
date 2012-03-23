.class public Lcom/tencent/mm/network/connpool/InAddress;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/net/InetAddress;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/network/connpool/InAddress;->a:Ljava/net/InetAddress;

    iput p2, p0, Lcom/tencent/mm/network/connpool/InAddress;->b:I

    iput-boolean p3, p0, Lcom/tencent/mm/network/connpool/InAddress;->c:Z

    return-void
.end method

.method public static a(Ljava/lang/String;[I)[Lcom/tencent/mm/network/connpool/InAddress;
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, "MicroMsg.InAddress"

    const-string v2, "Parse Host failed: null host or ports"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v5

    array-length v6, v5

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    array-length v8, p1

    move v0, v2

    :goto_2
    if-ge v0, v8, :cond_2

    aget v9, p1, v0

    new-instance v10, Lcom/tencent/mm/network/connpool/InAddress;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v9, v11}, Lcom/tencent/mm/network/connpool/InAddress;-><init>(Ljava/net/InetAddress;IZ)V

    invoke-virtual {v4, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tencent/mm/network/connpool/InAddress;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/network/connpool/InAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MicroMsg.InAddress"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse Host, Unknown Host Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/InAddress;->a:Ljava/net/InetAddress;

    return-object v0
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/network/connpool/InAddress;->b:I

    return v0
.end method

.method final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/InAddress;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/InAddress;->a:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/network/connpool/InAddress;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/InAddress;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "(hc)"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "(dns)"

    goto :goto_0
.end method
