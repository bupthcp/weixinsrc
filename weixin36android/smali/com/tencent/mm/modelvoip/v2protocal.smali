.class public Lcom/tencent/mm/modelvoip/v2protocal;
.super Ljava/lang/Object;


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:J

.field public g:J

.field public h:[B

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:[B

.field private m:I

.field private n:[I

.field private o:[I

.field private p:I

.field private q:Z


# direct methods
.method public static a(Lcom/tencent/mm/modelvoip/v2protocal;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/modelvoip/v2protocal;->q:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)[I
    .locals 11

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_0

    array-length v0, v5

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAddrArray failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v5, v3

    goto :goto_0

    :cond_1
    new-array v2, v4, [I

    move v0, v1

    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_4

    const-string v6, "MicroMsg.V2Protocol"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ip :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v0

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    const-string v7, "MicroMsg.V2Protocol"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " ipbyte : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_2

    array-length v7, v6

    if-gtz v7, :cond_3

    :cond_2
    const-string v6, "MicroMsg.V2Protocol"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addr to byte[] failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v0

    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v5, v6, v4

    shl-int/lit8 v5, v5, 0x8

    const v7, 0xff00

    and-int/2addr v5, v7

    or-int/2addr v0, v5

    aget-byte v5, v6, v10

    shl-int/lit8 v5, v5, 0x10

    const/high16 v7, 0xff

    and-int/2addr v5, v7

    or-int/2addr v0, v5

    aget-byte v5, v6, v1

    shl-int/lit8 v5, v5, 0x18

    const/high16 v6, -0x100

    and-int/2addr v5, v6

    or-int/2addr v0, v5

    const-string v5, "MicroMsg.V2Protocol"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " cnt : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  ip:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " port:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    aput v0, v2, v1

    aput p1, v2, v10

    move v1, v4

    :cond_4
    if-lt v1, v4, :cond_5

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_5

    move-object v0, v2

    goto/16 :goto_1

    :cond_5
    move-object v0, v3

    goto/16 :goto_1
.end method

.method private native init()I
.end method

.method private native uninit()I
.end method


# virtual methods
.method public final a()I
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v0, p0, Lcom/tencent/mm/modelvoip/v2protocal;->m:I

    iput-object v1, p0, Lcom/tencent/mm/modelvoip/v2protocal;->n:[I

    iput-object v1, p0, Lcom/tencent/mm/modelvoip/v2protocal;->o:[I

    iput-object v1, p0, Lcom/tencent/mm/modelvoip/v2protocal;->a:[B

    iput-object v1, p0, Lcom/tencent/mm/modelvoip/v2protocal;->b:[B

    iput v0, p0, Lcom/tencent/mm/modelvoip/v2protocal;->c:I

    iput-object v1, p0, Lcom/tencent/mm/modelvoip/v2protocal;->d:Ljava/lang/String;

    iput v0, p0, Lcom/tencent/mm/modelvoip/v2protocal;->p:I

    iput v0, p0, Lcom/tencent/mm/modelvoip/v2protocal;->e:I

    iput-wide v2, p0, Lcom/tencent/mm/modelvoip/v2protocal;->f:J

    iput-wide v2, p0, Lcom/tencent/mm/modelvoip/v2protocal;->g:J

    iput-object v1, p0, Lcom/tencent/mm/modelvoip/v2protocal;->h:[B

    iput-object v1, p0, Lcom/tencent/mm/modelvoip/v2protocal;->i:[B

    iput-object v1, p0, Lcom/tencent/mm/modelvoip/v2protocal;->j:[B

    iput-object v1, p0, Lcom/tencent/mm/modelvoip/v2protocal;->k:[B

    iput-object v1, p0, Lcom/tencent/mm/modelvoip/v2protocal;->l:[B

    iget-boolean v1, p0, Lcom/tencent/mm/modelvoip/v2protocal;->q:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/tencent/mm/modelvoip/v2protocal;->q:Z

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/v2protocal;->uninit()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final a(Z)I
    .locals 6

    const/4 v1, 0x1

    const-string v0, "punch.weixin.qq.com"

    const/16 v2, 0x1f90

    invoke-static {v0, v2}, Lcom/tencent/mm/modelvoip/v2protocal;->a(Ljava/lang/String;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/v2protocal;->n:[I

    const-string v0, "voip.weixin.qq.com"

    const/16 v2, 0x50

    invoke-static {v0, v2}, Lcom/tencent/mm/modelvoip/v2protocal;->a(Ljava/lang/String;I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelvoip/v2protocal;->o:[I

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/tencent/mm/modelvoip/v2protocal;->m:I

    invoke-direct {p0}, Lcom/tencent/mm/modelvoip/v2protocal;->init()I

    move-result v0

    const-string v2, "MicroMsg.V2Protocol"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "protocal init ret :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "peerId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/modelvoip/v2protocal;->a:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "capInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/modelvoip/v2protocal;->b:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/v2protocal;->a:[B

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->b([B)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/modelvoip/v2protocal;->b:[B

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->b([B)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "MicroMsg.V2Protocol"

    const-string v3, "Voip init get peerId or capInfo failed."

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-boolean v1, p0, Lcom/tencent/mm/modelvoip/v2protocal;->q:Z

    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public native exchangecabinfo()I
.end method

.method public native handlecommand()I
.end method

.method public native playcallback()I
.end method

.method public native recordcallback()I
.end method

.method public native setconfigconnect()I
.end method
