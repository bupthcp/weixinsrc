.class public Lcom/tencent/mm/network/connpool/SocketEngine;
.super Ljava/lang/Thread;


# static fields
.field private static final k:Lcom/tencent/mm/network/connpool/ISocketValidator;


# instance fields
.field protected final a:Lcom/tencent/mm/network/connpool/InAddrHost;

.field private b:Z

.field private c:Z

.field private d:Ljava/net/Socket;

.field private e:Lcom/tencent/mm/network/connpool/ConnEvent;

.field private f:Ljava/lang/String;

.field private g:Landroid/os/Handler;

.field private h:Z

.field private i:Z

.field private j:Z

.field private final l:Lcom/tencent/mm/network/connpool/ISocketValidator;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/mm/network/connpool/NoopValidator;

    invoke-direct {v0}, Lcom/tencent/mm/network/connpool/NoopValidator;-><init>()V

    sput-object v0, Lcom/tencent/mm/network/connpool/SocketEngine;->k:Lcom/tencent/mm/network/connpool/ISocketValidator;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/network/connpool/InAddrHost;Lcom/tencent/mm/network/connpool/ConnEvent;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MicroMsg.SocketEngine-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/network/connpool/InAddrHost;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->h:Z

    iput-boolean v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->i:Z

    iput-boolean v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->j:Z

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->m:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->a:Lcom/tencent/mm/network/connpool/InAddrHost;

    iput-object p2, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    new-instance v0, Lcom/tencent/mm/network/connpool/SocketEngine$1;

    invoke-virtual {p2}, Lcom/tencent/mm/network/connpool/ConnEvent;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/network/connpool/SocketEngine$1;-><init>(Lcom/tencent/mm/network/connpool/SocketEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->g:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/network/connpool/QueryDnsValidator;

    invoke-direct {v0, p0}, Lcom/tencent/mm/network/connpool/QueryDnsValidator;-><init>(Lcom/tencent/mm/network/connpool/SocketEngine;)V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->l:Lcom/tencent/mm/network/connpool/ISocketValidator;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/connpool/SocketEngine;[BLcom/tencent/mm/network/connpool/SocketEngine$Header;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/network/connpool/SocketEngine;->a([BLcom/tencent/mm/network/connpool/SocketEngine$Header;)I

    move-result v0

    return v0
.end method

.method private a([BLcom/tencent/mm/network/connpool/SocketEngine$Header;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x5

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->b:Z

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.SocketEngine"

    const-string v1, "write failed in cancelled engine"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/test/Test;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "write failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    const-string v0, "MicroMsg.SocketEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v0, "status callback null"

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    invoke-static {v0, v3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->h:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    array-length v4, p1

    invoke-static {v4}, Lcom/tencent/mm/platformtools/Util;->f(I)I

    move-result v4

    add-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v2, v0, p2}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    const-string v0, "MicroMsg.SocketEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->h:Z

    const/16 v0, 0x148

    goto :goto_1
.end method

.method private a(Lcom/tencent/mm/network/connpool/InAddress;ILcom/tencent/mm/network/connpool/ISocketValidator;)J
    .locals 10

    const-wide/16 v4, 0x7d0

    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    iget-object v6, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    invoke-static {v6}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/4 v7, 0x7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/mm/network/connpool/InAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    iput-object v6, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    iget-object v6, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setKeepAlive(Z)V

    invoke-static {}, Lcom/tencent/mm/test/Test;->c()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/net/SocketException;

    const-string v7, "Socket connect timeout"

    invoke-direct {v6, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tencent/mm/network/connpool/OutOfBandException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lcom/tencent/mm/network/connpool/InAddress;->a()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {p1}, Lcom/tencent/mm/network/connpool/InAddress;->b()I

    move-result v9

    invoke-direct {v7, v8, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v7, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    if-nez p3, :cond_1

    const-string v6, "MicroMsg.SocketEngine"

    const-string v7, "no connection validator set"

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/tencent/mm/network/connpool/OutOfBandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    move-wide v0, v4

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    const/16 v7, 0x7530

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v6, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    invoke-interface {p3, v6}, Lcom/tencent/mm/network/connpool/ISocketValidator;->a(Ljava/net/Socket;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s.validate failed, timeout="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    move-wide v0, v2

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/tencent/mm/network/connpool/OutOfBandException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/network/connpool/OutOfBandException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    move-wide v0, v4

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/network/connpool/SocketEngine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/network/connpool/SocketEngine;)Lcom/tencent/mm/network/connpool/ConnEvent;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/network/connpool/SocketEngine;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->b:Z

    return v0
.end method

.method private e()I
    .locals 15

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-nez v5, :cond_e

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->j:Z

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->a:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->a:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->a:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v1}, Lcom/tencent/mm/network/connpool/InAddrHost;->h()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/network/connpool/InAddress;->a(Ljava/lang/String;[I)[Lcom/tencent/mm/network/connpool/InAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->a:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->a([Lcom/tencent/mm/network/connpool/InAddress;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->a:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->j:Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->a:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->e()[Lcom/tencent/mm/network/connpool/InAddress;

    move-result-object v6

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->b:Z

    if-nez v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v7

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    array-length v9, v6

    const/4 v0, 0x0

    move v14, v0

    move-wide v0, v3

    move v3, v14

    :goto_2
    if-ge v3, v9, :cond_6

    aget-object v4, v6, v3

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->b:Z

    if-nez v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const/4 v0, 0x3

    if-ge v2, v0, :cond_5

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    :cond_5
    invoke-virtual {v4}, Lcom/tencent/mm/network/connpool/InAddress;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->c:Z

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->a:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->c()I

    move-result v0

    mul-int v1, v2, v0

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->j:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->l:Lcom/tencent/mm/network/connpool/ISocketValidator;

    :goto_3
    invoke-direct {p0, v4, v1, v0}, Lcom/tencent/mm/network/connpool/SocketEngine;->a(Lcom/tencent/mm/network/connpool/InAddress;ILcom/tencent/mm/network/connpool/ISocketValidator;)J

    move-result-wide v0

    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-nez v10, :cond_9

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->j:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->c:Z

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    invoke-virtual {v4}, Lcom/tencent/mm/network/connpool/InAddress;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x3

    :goto_4
    invoke-virtual {v4}, Lcom/tencent/mm/network/connpool/InAddress;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v4, v6}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_5
    iget-boolean v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->b:Z

    if-nez v2, :cond_c

    const/4 v0, 0x2

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lcom/tencent/mm/network/connpool/SocketEngine;->k:Lcom/tencent/mm/network/connpool/ISocketValidator;

    goto :goto_3

    :cond_8
    const/4 v2, 0x2

    goto :goto_4

    :cond_9
    const-string v4, "MicroMsg.SocketEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect failed, m."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->a:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v4}, Lcom/tencent/mm/network/connpool/InAddrHost;->f()Z

    const-wide/16 v10, 0x0

    cmp-long v4, v0, v10

    if-lez v4, :cond_a

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->a:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v4}, Lcom/tencent/mm/network/connpool/InAddrHost;->d()Z
    :try_end_0
    .catch Lcom/tencent/mm/network/connpool/QueryDnsValidator$QueryDnsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_a

    :try_start_1
    const-string v4, "MicroMsg.SocketEngine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connection retry span="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/network/connpool/SocketEngine;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/tencent/mm/network/connpool/QueryDnsValidator$QueryDnsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    :goto_6
    :try_start_2
    invoke-static {v7, v8}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    cmp-long v4, v10, v12

    if-lez v4, :cond_b

    const-string v2, "MicroMsg.SocketEngine"

    const-string v3, "connecting too long, consider failed now"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/tencent/mm/network/connpool/QueryDnsValidator$QueryDnsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.SocketEngine"

    const-string v2, "reset dns ip list from query dns exception"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->a:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v1}, Lcom/tencent/mm/network/connpool/InAddrHost;->g()V

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->a:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/QueryDnsValidator$QueryDnsException;->a()[Lcom/tencent/mm/network/connpool/InAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->a([Lcom/tencent/mm/network/connpool/InAddress;)V

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_c
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const/4 v0, 0x3

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x1

    move v5, v0

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_1

    :catch_2
    move-exception v4

    goto :goto_6
.end method

.method private f()I
    .locals 8

    const/4 v0, 0x1

    new-instance v2, Lcom/tencent/mm/network/connpool/SocketEngine$Response;

    invoke-direct {v2}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a(Ljava/io/DataInputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/4 v3, 0x4

    invoke-virtual {v2}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a()I

    move-result v4

    invoke-static {v4}, Lcom/tencent/mm/platformtools/Util;->g(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a(Lcom/tencent/mm/network/connpool/SocketEngine$Response;)Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    const-string v3, ""

    invoke-virtual {v2}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->b()[B

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->c()Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/tencent/mm/network/connpool/ConnEvent;->a(Ljava/lang/String;[BLjava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->i:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/tencent/mm/network/connpool/OutOfBandException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    iget-boolean v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->b:Z

    if-eqz v2, :cond_1

    const-string v0, "MicroMsg.SocketEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connection lost, read failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const-string v2, "MicroMsg.SocketEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop reading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/16 v4, 0x9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lcom/tencent/mm/network/connpool/OutOfBandException;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v1, Lcom/tencent/mm/network/connpool/OutOfBandException;->b:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a(Lcom/tencent/mm/network/connpool/SocketEngine$Response;)Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    move-result-object v2

    invoke-virtual {v3, v4, v1, v2}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/network/connpool/SocketEngine$Request;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->g:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/network/connpool/SocketEngine;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    const-string v0, "MicroMsg.SocketEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engine has been disconnect, threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->b:Z

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    new-instance v0, Lcom/tencent/mm/network/connpool/DummyEvent;

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    invoke-virtual {v1}, Lcom/tencent/mm/network/connpool/ConnEvent;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/network/connpool/DummyEvent;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.SocketEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel() exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v0, "MicroMsg.SocketEngine"

    const-string v1, "begin loopWait"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    invoke-virtual {v0, v3, v4, v4}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/SocketEngine;->e()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0, v4}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iput-boolean v5, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    iput-object v4, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->d:Ljava/net/Socket;

    const-string v0, "MicroMsg.SocketEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " run exit, thread id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->b:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/test/Test;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/SocketEngine;->f()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->i:Z

    if-eqz v0, :cond_2

    const-string v0, "MicroMsg.SocketEngine"

    const-string v1, "may be dns currupted"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->a:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->f()Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->f:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    invoke-virtual {v0, v5, v4, v4}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.SocketEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel() exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
