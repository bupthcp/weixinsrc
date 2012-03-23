.class public Lcom/tencent/mm/network/connpool/SocketEngine$Response;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

.field private b:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    invoke-direct {v0, v1, v1, v1}, Lcom/tencent/mm/network/connpool/SocketEngine$Header;-><init>(III)V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->b:[B

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/network/connpool/SocketEngine$Request;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    invoke-static {p1}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a(Lcom/tencent/mm/network/connpool/SocketEngine$Request;)Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->f:I

    invoke-static {p1}, Lcom/tencent/mm/network/connpool/SocketEngine$Request;->a(Lcom/tencent/mm/network/connpool/SocketEngine$Request;)Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    move-result-object v2

    iget v2, v2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    invoke-direct {v0, v1, v3, v2}, Lcom/tencent/mm/network/connpool/SocketEngine$Header;-><init>(III)V

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->b:[B

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/connpool/SocketEngine$Response;)Lcom/tencent/mm/network/connpool/SocketEngine$Header;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget v0, v0, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->b:I

    return v0
.end method

.method public final a(Ljava/io/DataInputStream;)Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v1, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->b:I

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->c:S

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->d:S

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget-short v1, v1, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->c:S

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget-short v1, v1, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->d:S

    if-eq v1, v0, :cond_2

    :cond_0
    const-string v0, "MicroMsg.SocketEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response.unserialize invalid header, length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget-short v2, v2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->c:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget-short v2, v2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->d:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v1, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, v1, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->f:I

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget v1, v1, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->b:I

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget-short v2, v2, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->c:S

    sub-int/2addr v1, v2

    const-string v2, "MicroMsg.SocketEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response.unserialize packet response: len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget v4, v4, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget v4, v4, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->b:[B

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->b:[B

    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    iget v1, v1, Lcom/tencent/mm/network/connpool/SocketEngine$Header;->e:I

    const/16 v2, 0x48

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/tencent/mm/network/connpool/OutOfBandException;

    iget-object v1, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->b:[B

    invoke-static {v1}, Lcom/tencent/mm/algorithm/TypeTransform;->a([B)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->b:[B

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/tencent/mm/algorithm/TypeTransform;->a([BI)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/network/connpool/OutOfBandException;-><init>(IJ)V

    throw v0
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->b:[B

    return-object v0
.end method

.method public final c()Lcom/tencent/mm/network/connpool/SocketEngine$Header;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/connpool/SocketEngine$Response;->a:Lcom/tencent/mm/network/connpool/SocketEngine$Header;

    return-object v0
.end method
