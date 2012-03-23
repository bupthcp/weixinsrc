.class public Lcom/tencent/mm/network/connpool/SocketEngine$Request;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

.field private final b:[B


# direct methods
.method public constructor <init>(II[BZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    array-length v1, p3

    invoke-direct {v0, p1, v1, p2}, Lcom/tencent/mm/network/connpool/SocketEngine$Header;-><init>(III)V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iput-object p3, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->b:[B

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iput-boolean p4, v0, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/connpool/SocketEngine$Request;)Lcom/tencent/mm/network/connpool/SocketEngine$Header;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/tencent/mm/network/connpool/SocketEngine$Response;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget-boolean v0, v0, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;

    invoke-direct {v0, p0}, Lcom/tencent/mm/network/connpool/SocketEngine$Response;-><init>(Lcom/tencent/mm/network/connpool/SocketEngine$Request;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/tencent/mm/network/connpool/SocketEngine$Header;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    return-object v0
.end method

.method public final c()[B
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget v2, v2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->b:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget-short v2, v2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->c:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget-short v2, v2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->d:S

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget v2, v2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget v2, v2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->f:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->b:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.SocketEngine"

    const-string v1, "Request.serialize() failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget v0, v0, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->f:I

    return v0
.end method
