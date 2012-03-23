.class Lcom/tencent/mm/network/connpool/SpeedTestEngine;
.super Ljava/lang/Thread;


# static fields
.field private static final a:[B


# instance fields
.field private b:Lcom/tencent/mm/network/connpool/InAddrHost;

.field private c:Ljava/net/Socket;

.field private d:Lcom/tencent/mm/network/connpool/ConnEvent;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x800

    new-array v0, v0, [B

    const-string v1, "a quick brown fox jumps over the lazy dog"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/tencent/mm/algorithm/TypeTransform;->a(J)[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    array-length v3, v2

    sub-int/2addr v1, v3

    array-length v3, v2

    invoke-static {v2, v4, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/tencent/mm/network/connpool/SocketEngine$Request;

    const v2, 0x7fffffff

    const/16 v3, 0x59

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;-><init>(II[BZ)V

    invoke-virtual {v1}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->c()[B

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->a:[B

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/network/connpool/InAddrHost;Lcom/tencent/mm/network/connpool/ConnEvent;)V
    .locals 1

    const-string v0, "speed-test-engine"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->e:Z

    iput-object p1, p0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->b:Lcom/tencent/mm/network/connpool/InAddrHost;

    iput-object p2, p0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->d:Lcom/tencent/mm/network/connpool/ConnEvent;

    return-void
.end method

.method private a(Lcom/tencent/mm/network/connpool/InAddress;)J
    .locals 16

    const-string v1, "MicroMsg.SpeedTestEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "do test:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, -0x1

    :try_start_0
    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v5

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setKeepAlive(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mm/network/connpool/InAddress;->a()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/tencent/mm/network/connpool/InAddress;->b()I

    move-result v9

    invoke-direct {v7, v8, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v8, 0x7530

    invoke-virtual {v4, v7, v8}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    sget-object v7, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->a:[B

    invoke-virtual {v4, v7}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    sget-object v4, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->a:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x0

    new-instance v7, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v8, Lcom/tencent/mm/network/connpool/SocketEngine$Response;

    invoke-direct {v8}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;-><init>()V

    invoke-virtual {v8, v7}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a(Ljava/io/DataInputStream;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->c()Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    move-result-object v9

    iget v9, v9, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    const v10, 0x3b9aca59

    if-ne v9, v10, :cond_3

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Util;->f(J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    :try_start_1
    invoke-virtual {v8}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget v9, Lcom/tencent/mm/protocal/ConstantsProtocal;->b:I

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget-object v9, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->a:[B

    array-length v9, v9

    invoke-virtual {v8}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    long-to-int v9, v2

    invoke-virtual {v6, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    new-instance v9, Lcom/tencent/mm/network/connpool/SocketEngine$Request;

    const v10, 0x7fffffff

    const/16 v11, 0x5a

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v5, v12}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;-><init>(II[BZ)V

    invoke-virtual {v9}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->c()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/io/OutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    array-length v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v8, v7}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a(Ljava/io/DataInputStream;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v8}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->c()Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    move-result-object v5

    iget v5, v5, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    const v6, 0x3b9aca5a

    if-ne v5, v6, :cond_0

    const-string v5, "MicroMsg.SpeedTestEngine"

    const-string v6, "report succeeded"

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    add-int/2addr v1, v5

    :cond_0
    move v13, v1

    move-wide v14, v2

    move-wide v1, v14

    move v3, v13

    :goto_0
    if-lez v3, :cond_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->d:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/4 v6, 0x4

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->d(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    if-lez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->d:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/4 v5, 0x5

    invoke-static {v4}, Lcom/tencent/mm/platformtools/Util;->c(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v6}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    :goto_1
    return-wide v1

    :cond_3
    const-string v5, "MicroMsg.SpeedTestEngine"

    const-string v6, "speed test failed: invalid resp"

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v1

    move-wide v1, v2

    goto :goto_1

    :catch_3
    move-exception v1

    move-wide v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->e:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.SpeedTestEngine"

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
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->b:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->e()[Lcom/tencent/mm/network/connpool/InAddress;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->e:Z

    if-eqz v5, :cond_2

    const-string v0, "MicroMsg.SpeedTestEngine"

    const-string v1, "user canceled"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->d:Lcom/tencent/mm/network/connpool/ConnEvent;

    invoke-virtual {v0, v10, v10, v10}, Lcom/tencent/mm/network/connpool/ConnEvent;->a(Ljava/lang/String;[BLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v4}, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->a(Lcom/tencent/mm/network/connpool/InAddress;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "MicroMsg.SpeedTestEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "save test result: addr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", cost="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tencent/mm/network/connpool/SpeedTestEngine;->d:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/4 v8, 0x2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v8, v4, v5}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
