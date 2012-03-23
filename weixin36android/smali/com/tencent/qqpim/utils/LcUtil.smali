.class public Lcom/tencent/qqpim/utils/LcUtil;
.super Ljava/lang/Object;


# static fields
.field public static final ERROR:I = 0x0

.field public static final MUSTUPDATE:I = 0x2

.field public static final NONEED:I = 0x1

.field public static final SHOULDUPDATE:I = 0x3


# instance fields
.field iPostBuf:[B

.field iQQNum:J

.field iUpdateFileBuf:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static int2byte(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static lcCreateKey(J[B)[B
    .locals 7

    const/4 v1, 0x0

    const-string v0, "E1D84CC825147ECD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/utils/MD5Util;->encrypt(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    :goto_0
    const/16 v4, 0x8

    if-lt v0, v4, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_0
    aget-byte v4, v2, v0

    const-string v5, "%1$02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static long2byte(J)[B
    .locals 6

    const-wide/16 v4, 0xff

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    and-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public getConf()[B
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    array-length v0, v0

    add-int/lit8 v1, v0, -0x11

    new-array v0, v1, [B

    iget-object v2, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public getConfVer()[B
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    new-array v0, v3, [B

    iget-object v1, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public getShortValueFromBuf([BI)S
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    aget-byte v1, p1, p2

    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/utils/LcUtil;->parseHexByte2String(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/tencent/qqpim/utils/LcUtil;->parseHexByte2String(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v0

    return v0
.end method

.method public getUpdateDesText()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    invoke-virtual {p0, v0, v4}, Lcom/tencent/qqpim/utils/LcUtil;->getShortValueFromBuf([BI)S

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    const/4 v3, 0x2

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :cond_0
    return-object v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    invoke-virtual {p0, v0, v4}, Lcom/tencent/qqpim/utils/LcUtil;->getShortValueFromBuf([BI)S

    move-result v0

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpim/utils/LcUtil;->getShortValueFromBuf([BI)S

    move-result v1

    add-int/lit8 v0, v0, 0x2

    new-array v2, v1, [B

    iget-object v3, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    invoke-static {v3, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    :cond_0
    return-object v0
.end method

.method public makeCheckUpdateRequestPackge([BJI)[B
    .locals 7

    const/4 v6, 0x5

    const/4 v2, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    iput-wide p2, p0, Lcom/tencent/qqpim/utils/LcUtil;->iQQNum:J

    const/16 v0, 0x40

    new-array v0, v0, [B

    aput-byte v2, v0, v3

    const/4 v1, 0x1

    aput-byte v4, v0, v1

    aput-byte v3, v0, v2

    aput-byte v3, v0, v4

    aput-byte v6, v0, v5

    invoke-static {p2, p3}, Lcom/tencent/qqpim/utils/LcUtil;->long2byte(J)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x9

    const/16 v2, 0x10

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x19

    aput-byte v4, v0, v1

    invoke-static {p4}, Lcom/tencent/qqpim/utils/LcUtil;->int2byte(I)[B

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v1, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x1e

    aput-byte v4, v0, v1

    const/16 v1, 0x1f

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/tencent/qqpim/utils/LcUtil;->iPostBuf:[B

    iget-object v1, p0, Lcom/tencent/qqpim/utils/LcUtil;->iPostBuf:[B

    const/16 v2, 0x1f

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/LcUtil;->iPostBuf:[B

    return-object v0
.end method

.method public makeGetConfRequestPackge([BJI)[B
    .locals 7

    const/16 v6, 0x1f

    const/4 v2, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    iput-wide p2, p0, Lcom/tencent/qqpim/utils/LcUtil;->iQQNum:J

    const/16 v0, 0x40

    new-array v0, v0, [B

    aput-byte v2, v0, v3

    const/4 v1, 0x1

    aput-byte v4, v0, v1

    aput-byte v3, v0, v2

    aput-byte v3, v0, v4

    const/16 v1, 0x12

    aput-byte v1, v0, v5

    invoke-static {p2, p3}, Lcom/tencent/qqpim/utils/LcUtil;->long2byte(J)[B

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x9

    const/16 v2, 0x10

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x19

    aput-byte v4, v0, v1

    invoke-static {p4}, Lcom/tencent/qqpim/utils/LcUtil;->int2byte(I)[B

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v1, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x1e

    aput-byte v4, v0, v1

    new-array v1, v6, [B

    iput-object v1, p0, Lcom/tencent/qqpim/utils/LcUtil;->iPostBuf:[B

    iget-object v1, p0, Lcom/tencent/qqpim/utils/LcUtil;->iPostBuf:[B

    invoke-static {v0, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/LcUtil;->iPostBuf:[B

    return-object v0
.end method

.method public parseHexByte2String(B)Ljava/lang/String;
    .locals 2

    const/16 v1, 0xf

    if-le p1, v1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sloveCheckUpdateResponPackge([B[B)I
    .locals 7

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    array-length v3, p2

    const/16 v4, 0xd

    if-lt v3, v4, :cond_3

    aget-byte v3, p2, v2

    if-ne v1, v3, :cond_3

    const/16 v3, 0x9

    aget-byte v3, p2, v3

    if-nez v3, :cond_3

    const/16 v3, 0xa

    invoke-virtual {p0, p2, v3}, Lcom/tencent/qqpim/utils/LcUtil;->getShortValueFromBuf([BI)S

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    move v2, v0

    :cond_0
    return v2

    :cond_1
    iget-wide v4, p0, Lcom/tencent/qqpim/utils/LcUtil;->iQQNum:J

    invoke-static {v4, v5, p1}, Lcom/tencent/qqpim/utils/LcUtil;->lcCreateKey(J[B)[B

    move-result-object v4

    new-array v5, v3, [B

    iput-object v5, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    new-instance v5, Lcom/tencent/qqpim/utils/Cryptor;

    invoke-direct {v5}, Lcom/tencent/qqpim/utils/Cryptor;-><init>()V

    const/16 v6, 0xc

    invoke-virtual {v5, p2, v6, v3, v4}, Lcom/tencent/qqpim/utils/Cryptor;->decrypt([BII[B)[B

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    iget-object v3, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    iget-object v4, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    invoke-virtual {p0, v4, v2}, Lcom/tencent/qqpim/utils/LcUtil;->getShortValueFromBuf([BI)S

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    add-int/lit8 v4, v5, 0x1

    iget-object v5, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    invoke-virtual {p0, v5, v4}, Lcom/tencent/qqpim/utils/LcUtil;->getShortValueFromBuf([BI)S

    move-result v5

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    iget-object v6, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    array-length v6, v6

    if-ne v4, v6, :cond_3

    if-lez v5, :cond_3

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public sloveGetConfResponPackge([B[B)I
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    array-length v2, p2

    const/16 v3, 0xd

    if-lt v2, v3, :cond_1

    aget-byte v2, p2, v1

    if-ne v0, v2, :cond_1

    const/16 v2, 0x9

    aget-byte v2, p2, v2

    if-nez v2, :cond_1

    const/16 v1, 0xa

    invoke-virtual {p0, p2, v1}, Lcom/tencent/qqpim/utils/LcUtil;->getShortValueFromBuf([BI)S

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/tencent/qqpim/utils/LcUtil;->iQQNum:J

    invoke-static {v2, v3, p1}, Lcom/tencent/qqpim/utils/LcUtil;->lcCreateKey(J[B)[B

    move-result-object v2

    new-instance v3, Lcom/tencent/qqpim/utils/Cryptor;

    invoke-direct {v3}, Lcom/tencent/qqpim/utils/Cryptor;-><init>()V

    new-array v4, v1, [B

    iput-object v4, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    const/16 v4, 0xc

    invoke-virtual {v3, p2, v4, v1, v2}, Lcom/tencent/qqpim/utils/Cryptor;->decrypt([BII[B)[B

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/utils/LcUtil;->iUpdateFileBuf:[B

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
