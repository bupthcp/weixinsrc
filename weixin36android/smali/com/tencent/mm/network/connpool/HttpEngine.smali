.class public Lcom/tencent/mm/network/connpool/HttpEngine;
.super Ljava/lang/Thread;


# static fields
.field private static final a:[B


# instance fields
.field private b:Ljava/net/Socket;

.field private c:Ljava/io/BufferedInputStream;

.field private d:Ljava/io/BufferedOutputStream;

.field private e:Lcom/tencent/mm/network/connpool/ConnEvent;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private final j:Z

.field private k:Z

.field private final l:Lcom/tencent/mm/network/connpool/HttpResponse;

.field private m:Ljava/lang/String;

.field private n:Lcom/tencent/mm/network/connpool/InAddrHost;

.field private o:[B

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/mm/network/connpool/HttpEngine;->a:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0xat
        0x0t
        0x0t
        0xact
    .end array-data
.end method

.method public constructor <init>(Lcom/tencent/mm/network/connpool/InAddrHost;ZLcom/tencent/mm/network/connpool/ConnEvent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpSocketEngine-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/network/connpool/InAddrHost;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    iput-object v3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->k:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->m:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->p:Ljava/lang/String;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->q:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->n:Lcom/tencent/mm/network/connpool/InAddrHost;

    iput-boolean p2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->i:Z

    iput-boolean v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->h:Z

    new-instance v0, Lcom/tencent/mm/network/connpool/HttpResponse;

    invoke-direct {v0}, Lcom/tencent/mm/network/connpool/HttpResponse;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->k:Z

    iput-boolean v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->j:Z

    iput-object p3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    return-void
.end method

.method private a([B[B)I
    .locals 5

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->k:Z

    if-nez v1, :cond_0

    const-string v0, "MicroMsg.HttpEngine"

    const-string v1, "write failed in cancelled engine"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/test/Test;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string v2, "write failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v1

    const-string v2, "MicroMsg.HttpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "head null"

    invoke-static {v1, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    if-eqz p2, :cond_2

    array-length v1, p2

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1, p2}, Ljava/io/BufferedOutputStream;->write([B)V

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v1, "status callback null"

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    invoke-static {v1, v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->c(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "MicroMsg.HttpEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Write Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/tencent/mm/network/connpool/InAddress;I)J
    .locals 6

    const-wide/16 v0, 0x7d0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/4 v3, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/mm/network/connpool/InAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    iput-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->b:Ljava/net/Socket;

    invoke-virtual {p1}, Lcom/tencent/mm/network/connpool/InAddress;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->q:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/test/Test;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/net/ConnectException;

    const-string v3, "Socket connect timeout"

    invoke-direct {v2, v3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->b:Ljava/net/Socket;

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lcom/tencent/mm/network/connpool/InAddress;->a()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/mm/network/connpool/InAddress;->b()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->c:Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->d:Ljava/io/BufferedOutputStream;
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;

    goto :goto_0

    :catch_3
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;

    goto :goto_0

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "\r\n"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->c:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->c:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->d:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    iput-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    iput-boolean v5, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->i:Z

    iput-boolean v5, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->h:Z

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/HttpResponse;->a()V

    iput-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->n:Lcom/tencent/mm/network/connpool/InAddrHost;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->k:Z

    iput-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.HttpEngine"

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

    :catch_1
    move-exception v0

    const-string v1, "MicroMsg.HttpEngine"

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

    :catch_2
    move-exception v0

    const-string v1, "MicroMsg.HttpEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reset Close Writer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private d()I
    .locals 15

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->i:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tencent/mm/network/connpool/InAddress;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/tencent/mm/network/connpool/InAddress;

    sget-object v3, Lcom/tencent/mm/network/connpool/HttpEngine;->a:[B

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    const/16 v4, 0x50

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/tencent/mm/network/connpool/InAddress;-><init>(Ljava/net/InetAddress;IZ)V

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->k:Z

    if-nez v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->n:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->n:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->n:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v1}, Lcom/tencent/mm/network/connpool/InAddrHost;->h()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/network/connpool/InAddress;->a(Ljava/lang/String;[I)[Lcom/tencent/mm/network/connpool/InAddress;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->n:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->a([Lcom/tencent/mm/network/connpool/InAddress;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->n:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->d()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->n:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->e()[Lcom/tencent/mm/network/connpool/InAddress;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v5

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    array-length v7, v0

    const/4 v1, 0x0

    move v12, v1

    move v1, v2

    move-wide v13, v3

    move-wide v2, v13

    move v4, v12

    :goto_2
    if-ge v4, v7, :cond_f

    aget-object v8, v0, v4

    iget-boolean v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->k:Z

    if-nez v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-ge v1, v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->n:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v2}, Lcom/tencent/mm/network/connpool/InAddrHost;->c()I

    move-result v2

    mul-int/2addr v2, v1

    invoke-direct {p0, v8, v2}, Lcom/tencent/mm/network/connpool/HttpEngine;->a(Lcom/tencent/mm/network/connpool/InAddress;I)J

    move-result-wide v2

    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-nez v9, :cond_a

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->i:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/4 v1, 0x1

    invoke-virtual {v8}, Lcom/tencent/mm/network/connpool/InAddress;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    move-wide v0, v2

    :goto_3
    iget-boolean v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->k:Z

    if-nez v2, :cond_d

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v8}, Lcom/tencent/mm/network/connpool/InAddress;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->n:Lcom/tencent/mm/network/connpool/InAddrHost;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddress;->c()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->p:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/4 v1, 0x3

    invoke-virtual {v8}, Lcom/tencent/mm/network/connpool/InAddress;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->n:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->b()Lcom/tencent/mm/network/connpool/InAddress;

    move-result-object v0

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/4 v1, 0x2

    invoke-virtual {v8}, Lcom/tencent/mm/network/connpool/InAddress;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v5}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    move-wide v0, v2

    goto :goto_3

    :cond_a
    const-string v8, "MicroMsg.HttpEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connect failed, m."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->n:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v8}, Lcom/tencent/mm/network/connpool/InAddrHost;->f()Z

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_b

    :try_start_1
    const-string v8, "MicroMsg.HttpEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connection retry span="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tencent/mm/network/connpool/HttpEngine;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    :goto_5
    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-lez v8, :cond_c

    const-string v0, "MicroMsg.HttpEngine"

    const-string v1, "connecting too long, consider failed now"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    goto/16 :goto_3

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_d
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x3

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception v8

    goto :goto_5

    :cond_f
    move-wide v0, v2

    goto/16 :goto_3
.end method

.method private e()I
    .locals 11

    const/4 v1, 0x6

    const/4 v0, 0x2

    const/4 v10, -0x1

    iget-boolean v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->k:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->j:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->n:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v3}, Lcom/tencent/mm/network/connpool/InAddrHost;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/network/connpool/ConnEvent;->a(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->b:Ljava/net/Socket;

    const v3, 0xafc8

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    const/16 v2, 0x400

    new-array v3, v2, [B

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->c:Ljava/io/BufferedInputStream;

    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-eq v2, v10, :cond_3

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/4 v5, 0x4

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->d(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    if-eq v2, v10, :cond_c

    iget-boolean v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->k:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Ljava/lang/String;-><init>([BII)V

    iget-object v5, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-boolean v5, v5, Lcom/tencent/mm/network/connpool/HttpResponse;->a:Z

    if-nez v5, :cond_8

    const-string v5, "\r\n\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_6

    iget-object v6, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v8, v8, Lcom/tencent/mm/network/connpool/HttpResponse;->d:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "\r\n\r\n"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v5, v9

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/tencent/mm/network/connpool/HttpResponse;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v4, v4, Lcom/tencent/mm/network/connpool/HttpResponse;->e:Lorg/apache/http/util/ByteArrayBuffer;

    iget-object v5, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v5, v5, Lcom/tencent/mm/network/connpool/HttpResponse;->d:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v6, v6, Lcom/tencent/mm/network/connpool/HttpResponse;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {v4, v3, v5, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/tencent/mm/network/connpool/HttpResponse;->a:Z

    const-string v2, "http/1.x "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v4, v4, Lcom/tencent/mm/network/connpool/HttpResponse;->d:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/tencent/mm/network/connpool/HttpResponse;->b:I

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v4, v4, Lcom/tencent/mm/network/connpool/HttpResponse;->d:Ljava/lang/String;

    const-string v5, "content-length:"

    invoke-static {v4, v5, v2}, Lcom/tencent/mm/network/connpool/HttpEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/tencent/mm/network/connpool/HttpResponse;->c:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v4, v4, Lcom/tencent/mm/network/connpool/HttpResponse;->d:Ljava/lang/String;

    const-string v5, "wxbt:"

    invoke-static {v4, v5, v2}, Lcom/tencent/mm/network/connpool/HttpEngine;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/16 v5, 0x9

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_2
    :try_start_2
    const-string v2, "MicroMsg.HttpEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpSocketEngine head:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v5, v5, Lcom/tencent/mm/network/connpool/HttpResponse;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget v4, v4, Lcom/tencent/mm/network/connpool/HttpResponse;->b:I

    iget-object v5, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v5, v5, Lcom/tencent/mm/network/connpool/HttpResponse;->d:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/tencent/mm/network/connpool/ConnEvent;->a(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget v2, v2, Lcom/tencent/mm/network/connpool/HttpResponse;->b:I

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_7

    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v6, v6, Lcom/tencent/mm/network/connpool/HttpResponse;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/mm/network/connpool/HttpResponse;->d:Ljava/lang/String;

    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-boolean v2, v2, Lcom/tencent/mm/network/connpool/HttpResponse;->a:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget v2, v2, Lcom/tencent/mm/network/connpool/HttpResponse;->c:I

    if-eq v2, v10, :cond_b

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v2, v2, Lcom/tencent/mm/network/connpool/HttpResponse;->e:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget v4, v4, Lcom/tencent/mm/network/connpool/HttpResponse;->c:I

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v3, v3, Lcom/tencent/mm/network/connpool/HttpResponse;->e:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/network/connpool/ConnEvent;->a([B)V

    iget-boolean v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->k:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v4, v4, Lcom/tencent/mm/network/connpool/HttpResponse;->e:Lorg/apache/http/util/ByteArrayBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_0

    :cond_9
    :try_start_3
    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v2, v2, Lcom/tencent/mm/network/connpool/HttpResponse;->e:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget v4, v4, Lcom/tencent/mm/network/connpool/HttpResponse;->c:I

    if-le v2, v4, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http data corrupted, content len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget v2, v2, Lcom/tencent/mm/network/connpool/HttpResponse;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", body len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v2, v2, Lcom/tencent/mm/network/connpool/HttpResponse;->e:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v4, v4, Lcom/tencent/mm/network/connpool/HttpResponse;->e:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v4}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tencent/mm/network/connpool/ConnEvent;->b([B)V

    :cond_b
    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->c:Ljava/io/BufferedInputStream;

    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-eq v2, v10, :cond_3

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/4 v5, 0x4

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->e(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    invoke-virtual {v4, v5, v6, v7}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_0

    :cond_c
    const-string v0, "MicroMsg.HttpEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read Error, Read -1, Content-length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget v3, v3, Lcom/tencent/mm/network/connpool/HttpResponse;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , Body:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v3, v3, Lcom/tencent/mm/network/connpool/HttpResponse;->e:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto/16 :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->k:Z

    return-void
.end method

.method public final a(Ljava/lang/String;[BLjava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->o:[B

    iput-object p3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    const-string v0, "request header null"

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "request data null"

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->o:[B

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->q:Ljava/lang/String;

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/HttpEngine;->c()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1, v5, v2}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->j:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/HttpEngine;->d()I

    move-result v0

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/HttpEngine;->c()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/HttpResponse;->a()V

    const-string v0, "MicroMsg.HttpEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.HttpEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request data len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->o:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->o:[B

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/network/connpool/HttpEngine;->a([B[B)I

    move-result v0

    if-eq v0, v3, :cond_4

    if-eq v0, v4, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;)V

    :cond_3
    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/HttpEngine;->c()V

    goto :goto_0

    :cond_4
    const-string v0, "MicroMsg.HttpEngine"

    const-string v1, "reading http response"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/HttpEngine;->e()I

    move-result v1

    if-eq v1, v3, :cond_7

    if-eq v1, v4, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->n:Lcom/tencent/mm/network/connpool/InAddrHost;

    invoke-virtual {v0}, Lcom/tencent/mm/network/connpool/InAddrHost;->f()Z

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;

    const/4 v0, 0x7

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget v0, v0, Lcom/tencent/mm/network/connpool/HttpResponse;->b:I

    add-int/lit16 v0, v0, 0x2710

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v4}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Object;)V

    const-string v0, "MicroMsg.HttpEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FailStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ErrStr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/HttpEngine;->c()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v5}, Lcom/tencent/mm/network/connpool/ConnEvent;->b(ILjava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->e:Lcom/tencent/mm/network/connpool/ConnEvent;

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v1, v1, Lcom/tencent/mm/network/connpool/HttpResponse;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->l:Lcom/tencent/mm/network/connpool/HttpResponse;

    iget-object v2, v2, Lcom/tencent/mm/network/connpool/HttpResponse;->e:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/network/connpool/ConnEvent;->a(Ljava/lang/String;[BLjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->i:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/tencent/mm/network/connpool/HttpEngine;->h:Z

    if-nez v0, :cond_1

    :cond_9
    invoke-direct {p0}, Lcom/tencent/mm/network/connpool/HttpEngine;->c()V

    goto/16 :goto_0
.end method
