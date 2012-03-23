.class Lcom/tencent/mm/network/connpool/QueryDnsValidator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/network/connpool/ISocketValidator;


# instance fields
.field private final a:[B

.field private b:Lcom/tencent/mm/network/connpool/SocketEngine;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/network/connpool/SocketEngine;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;

    const v1, 0x7fffffff

    const/16 v2, 0x5b

    new-array v3, v4, [B

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;-><init>(II[BZ)V

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->c()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/QueryDnsValidator;->a:[B

    iput-object p1, p0, Lcom/tencent/mm/network/connpool/QueryDnsValidator;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/Socket;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "socket invalid while validating via querydns"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/QueryDnsValidator;->a:[B

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    new-instance v0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;

    invoke-direct {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;-><init>()V

    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a(Ljava/io/DataInputStream;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->c()Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    move-result-object v3

    iget v3, v3, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    const v4, 0x3b9aca5b

    if-ne v3, v4, :cond_5

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->b()[B

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/network/connpool/SocketEngine$Helper;->a(Ljava/util/List;[B)V

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/QueryDnsValidator;->b:Lcom/tencent/mm/network/connpool/SocketEngine;

    iget-object v0, v0, Lcom/tencent/mm/network/connpool/SocketEngine;->a:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->e()[Lcom/tencent/mm/network/connpool/InAddress;

    move-result-object v4

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tencent/mm/network/connpool/InAddress;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/network/connpool/InAddress;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    array-length v5, v0

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_1

    aget-object v6, v0, v1

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    array-length v1, v4

    move v0, v2

    :goto_2
    if-ge v0, v1, :cond_3

    aget-object v5, v4, v0

    invoke-virtual {v5}, Lcom/tencent/mm/network/connpool/InAddress;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/tencent/mm/network/connpool/QueryDnsValidator$QueryDnsException;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/tencent/mm/network/connpool/InAddress;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/network/connpool/InAddress;

    invoke-direct {v1, v0}, Lcom/tencent/mm/network/connpool/QueryDnsValidator$QueryDnsException;-><init>([Lcom/tencent/mm/network/connpool/InAddress;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.QueryDnsValidator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection lost while validating, read failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v1, v2

    :cond_4
    return v1

    :cond_5
    :try_start_1
    const-string v0, "MicroMsg.QueryDnsValidator"

    const-string v1, "connection validation failed, maybe dns corruption"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
