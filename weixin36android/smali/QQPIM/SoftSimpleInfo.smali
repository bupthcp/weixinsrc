.class public final LQQPIM/SoftSimpleInfo;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_softkey:LQQPIM/SoftKey;


# instance fields
.field public downloadtimes:I

.field public filesize:I

.field public fileurl:Ljava/lang/String;

.field public iFileID:I

.field public iProductID:I

.field public iSoftID:I

.field public logourl:Ljava/lang/String;

.field public nick_name:Ljava/lang/String;

.field public publishtime:Ljava/lang/String;

.field public score:I

.field public softclass:Ljava/lang/String;

.field public softkey:LQQPIM/SoftKey;

.field public suser:I

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SoftSimpleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SoftSimpleInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftSimpleInfo;->score:I

    iput v1, p0, LQQPIM/SoftSimpleInfo;->suser:I

    iput v1, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    iput v1, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    iput v1, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    return-void
.end method

.method public constructor <init>(LQQPIM/SoftKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IIIII)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->score:I

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->suser:I

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    iput-object p2, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    iput-object p4, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    iput-object p5, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    iput p6, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    iput-object p7, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    iput p8, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    iput-object p9, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    iput p10, p0, LQQPIM/SoftSimpleInfo;->score:I

    iput p11, p0, LQQPIM/SoftSimpleInfo;->suser:I

    iput p12, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    iput p13, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    iput p14, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftSimpleInfo"

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

    sget-boolean v1, LQQPIM/SoftSimpleInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    const-string v2, "softkey"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Lcom/a/a/a/g;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    const-string v2, "softclass"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    const-string v2, "nick_name"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    const-string v2, "logourl"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    const-string v2, "filesize"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    const-string v2, "publishtime"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    const-string v2, "downloadtimes"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    const-string v2, "fileurl"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->score:I

    const-string v2, "score"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->suser:I

    const-string v2, "suser"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    const-string v2, "iProductID"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    const-string v2, "iSoftID"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    const-string v2, "iFileID"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/SoftSimpleInfo;

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    iget-object v1, p1, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    iget v1, p1, LQQPIM/SoftSimpleInfo;->filesize:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    iget v1, p1, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftSimpleInfo;->score:I

    iget v1, p1, LQQPIM/SoftSimpleInfo;->score:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftSimpleInfo;->suser:I

    iget v1, p1, LQQPIM/SoftSimpleInfo;->suser:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    iget v1, p1, LQQPIM/SoftSimpleInfo;->iProductID:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    iget v1, p1, LQQPIM/SoftSimpleInfo;->iSoftID:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    iget v1, p1, LQQPIM/SoftSimpleInfo;->iFileID:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDownloadtimes()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    return v0
.end method

.method public final getFilesize()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    return v0
.end method

.method public final getFileurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    return-object v0
.end method

.method public final getIFileID()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    return v0
.end method

.method public final getIProductID()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    return v0
.end method

.method public final getISoftID()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    return v0
.end method

.method public final getLogourl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    return-object v0
.end method

.method public final getNick_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublishtime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    return-object v0
.end method

.method public final getScore()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->score:I

    return v0
.end method

.method public final getSoftclass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    return-object v0
.end method

.method public final getSoftkey()LQQPIM/SoftKey;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    return-object v0
.end method

.method public final getSuser()I
    .locals 1

    iget v0, p0, LQQPIM/SoftSimpleInfo;->suser:I

    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, LQQPIM/SoftSimpleInfo;->cache_softkey:LQQPIM/SoftKey;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SoftKey;

    invoke-direct {v0}, LQQPIM/SoftKey;-><init>()V

    sput-object v0, LQQPIM/SoftSimpleInfo;->cache_softkey:LQQPIM/SoftKey;

    :cond_0
    sget-object v0, LQQPIM/SoftSimpleInfo;->cache_softkey:LQQPIM/SoftKey;

    invoke-virtual {p1, v0, v2, v1}, Lcom/a/a/a/a;->a(Lcom/a/a/a/g;IZ)Lcom/a/a/a/g;

    move-result-object v0

    check-cast v0, LQQPIM/SoftKey;

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    invoke-virtual {p1, v1, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftSimpleInfo;->score:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->score:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->suser:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->suser:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    return-void
.end method

.method public final setDownloadtimes(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    return-void
.end method

.method public final setFilesize(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    return-void
.end method

.method public final setFileurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    return-void
.end method

.method public final setIFileID(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    return-void
.end method

.method public final setIProductID(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    return-void
.end method

.method public final setISoftID(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    return-void
.end method

.method public final setLogourl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    return-void
.end method

.method public final setNick_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    return-void
.end method

.method public final setPublishtime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    return-void
.end method

.method public final setScore(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->score:I

    return-void
.end method

.method public final setSoftclass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    return-void
.end method

.method public final setSoftkey(LQQPIM/SoftKey;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    return-void
.end method

.method public final setSuser(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftSimpleInfo;->suser:I

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->softkey:LQQPIM/SoftKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Lcom/a/a/a/g;I)V

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->type:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->softclass:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->nick_name:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->logourl:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_3
    iget v0, p0, LQQPIM/SoftSimpleInfo;->filesize:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->publishtime:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_4
    iget v0, p0, LQQPIM/SoftSimpleInfo;->downloadtimes:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, LQQPIM/SoftSimpleInfo;->fileurl:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_5
    iget v0, p0, LQQPIM/SoftSimpleInfo;->score:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftSimpleInfo;->suser:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iProductID:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iSoftID:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftSimpleInfo;->iFileID:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    return-void
.end method
