.class public final LQQPIM/DownSoftInfo;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_softkey:LQQPIM/SoftKey;


# instance fields
.field public nAvgSpeed:I

.field public nDownSize:I

.field public nDownType:B

.field public nFileId:I

.field public nMaxSpeed:I

.field public nProductId:I

.field public nRetryTimes:I

.field public nSoftId:I

.field public nSuccess:B

.field public nUsedTime:I

.field public softkey:LQQPIM/SoftKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/DownSoftInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/DownSoftInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    iput v0, p0, LQQPIM/DownSoftInfo;->nProductId:I

    iput v0, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    iput v0, p0, LQQPIM/DownSoftInfo;->nFileId:I

    iput-byte v0, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    iput v0, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    iput v0, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    iput v0, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    iput v0, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    iput v0, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    iput-byte v0, p0, LQQPIM/DownSoftInfo;->nDownType:B

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    return-void
.end method

.method public constructor <init>(IIIBIIIIIBLQQPIM/SoftKey;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    iput v0, p0, LQQPIM/DownSoftInfo;->nProductId:I

    iput v0, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    iput v0, p0, LQQPIM/DownSoftInfo;->nFileId:I

    iput-byte v0, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    iput v0, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    iput v0, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    iput v0, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    iput v0, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    iput v0, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    iput-byte v0, p0, LQQPIM/DownSoftInfo;->nDownType:B

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    iput p1, p0, LQQPIM/DownSoftInfo;->nProductId:I

    iput p2, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    iput p3, p0, LQQPIM/DownSoftInfo;->nFileId:I

    iput-byte p4, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    iput p5, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    iput p6, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    iput p7, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    iput p8, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    iput p9, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    iput-byte p10, p0, LQQPIM/DownSoftInfo;->nDownType:B

    iput-object p11, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.DownSoftInfo"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v1, LQQPIM/DownSoftInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/DownSoftInfo;->nProductId:I

    const-string v2, "nProductId"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    const-string v2, "nSoftId"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/DownSoftInfo;->nFileId:I

    const-string v2, "nFileId"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget-byte v1, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    const-string v2, "nSuccess"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(BLjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    const-string v2, "nDownSize"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    const-string v2, "nUsedTime"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    const-string v2, "nMaxSpeed"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    const-string v2, "nAvgSpeed"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    const-string v2, "nRetryTimes"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget-byte v1, p0, LQQPIM/DownSoftInfo;->nDownType:B

    const-string v2, "nDownType"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(BLjava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    const-string v2, "softkey"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Lcom/a/a/a/g;Ljava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/DownSoftInfo;

    iget v0, p0, LQQPIM/DownSoftInfo;->nProductId:I

    iget v1, p1, LQQPIM/DownSoftInfo;->nProductId:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    iget v1, p1, LQQPIM/DownSoftInfo;->nSoftId:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/DownSoftInfo;->nFileId:I

    iget v1, p1, LQQPIM/DownSoftInfo;->nFileId:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    iget-byte v1, p1, LQQPIM/DownSoftInfo;->nSuccess:B

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(BB)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    iget v1, p1, LQQPIM/DownSoftInfo;->nDownSize:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    iget v1, p1, LQQPIM/DownSoftInfo;->nUsedTime:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    iget v1, p1, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    iget v1, p1, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    iget v1, p1, LQQPIM/DownSoftInfo;->nRetryTimes:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nDownType:B

    iget-byte v1, p1, LQQPIM/DownSoftInfo;->nDownType:B

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(BB)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    iget-object v1, p1, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getNAvgSpeed()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    return v0
.end method

.method public final getNDownSize()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    return v0
.end method

.method public final getNDownType()B
    .locals 1

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nDownType:B

    return v0
.end method

.method public final getNFileId()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nFileId:I

    return v0
.end method

.method public final getNMaxSpeed()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    return v0
.end method

.method public final getNProductId()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nProductId:I

    return v0
.end method

.method public final getNRetryTimes()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    return v0
.end method

.method public final getNSoftId()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    return v0
.end method

.method public final getNSuccess()B
    .locals 1

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    return v0
.end method

.method public final getNUsedTime()I
    .locals 1

    iget v0, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    return v0
.end method

.method public final getSoftkey()LQQPIM/SoftKey;
    .locals 1

    iget-object v0, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    return-object v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LQQPIM/DownSoftInfo;->nProductId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nProductId:I

    iget v0, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    iget v0, p0, LQQPIM/DownSoftInfo;->nFileId:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nFileId:I

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    iget v0, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    iget v0, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    iget v0, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    iget v0, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    iget v0, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nDownType:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, LQQPIM/DownSoftInfo;->nDownType:B

    sget-object v0, LQQPIM/DownSoftInfo;->cache_softkey:LQQPIM/SoftKey;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SoftKey;

    invoke-direct {v0}, LQQPIM/SoftKey;-><init>()V

    sput-object v0, LQQPIM/DownSoftInfo;->cache_softkey:LQQPIM/SoftKey;

    :cond_0
    sget-object v0, LQQPIM/DownSoftInfo;->cache_softkey:LQQPIM/SoftKey;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(Lcom/a/a/a/g;IZ)Lcom/a/a/a/g;

    move-result-object v0

    check-cast v0, LQQPIM/SoftKey;

    iput-object v0, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    return-void
.end method

.method public final setNAvgSpeed(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    return-void
.end method

.method public final setNDownSize(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    return-void
.end method

.method public final setNDownType(B)V
    .locals 0

    iput-byte p1, p0, LQQPIM/DownSoftInfo;->nDownType:B

    return-void
.end method

.method public final setNFileId(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nFileId:I

    return-void
.end method

.method public final setNMaxSpeed(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    return-void
.end method

.method public final setNProductId(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nProductId:I

    return-void
.end method

.method public final setNRetryTimes(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    return-void
.end method

.method public final setNSoftId(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    return-void
.end method

.method public final setNSuccess(B)V
    .locals 0

    iput-byte p1, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    return-void
.end method

.method public final setNUsedTime(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    return-void
.end method

.method public final setSoftkey(LQQPIM/SoftKey;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget v0, p0, LQQPIM/DownSoftInfo;->nProductId:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nSoftId:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nFileId:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nSuccess:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(BI)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nDownSize:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nUsedTime:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nMaxSpeed:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nAvgSpeed:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/DownSoftInfo;->nRetryTimes:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget-byte v0, p0, LQQPIM/DownSoftInfo;->nDownType:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(BI)V

    iget-object v0, p0, LQQPIM/DownSoftInfo;->softkey:LQQPIM/SoftKey;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Lcom/a/a/a/g;I)V

    return-void
.end method
