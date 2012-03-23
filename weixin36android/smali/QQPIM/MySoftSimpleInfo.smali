.class public final LQQPIM/MySoftSimpleInfo;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_softSimpleInfo:LQQPIM/SoftSimpleInfo;


# instance fields
.field public official:I

.field public reportFeature:I

.field public softSimpleInfo:LQQPIM/SoftSimpleInfo;

.field public update:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/MySoftSimpleInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/MySoftSimpleInfo;->$assertionsDisabled:Z

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

    iput-object v0, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    iput v1, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    iput v1, p0, LQQPIM/MySoftSimpleInfo;->official:I

    iput v1, p0, LQQPIM/MySoftSimpleInfo;->update:I

    return-void
.end method

.method public constructor <init>(LQQPIM/SoftSimpleInfo;III)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    iput v1, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    iput v1, p0, LQQPIM/MySoftSimpleInfo;->official:I

    iput v1, p0, LQQPIM/MySoftSimpleInfo;->update:I

    iput-object p1, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    iput p2, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    iput p3, p0, LQQPIM/MySoftSimpleInfo;->official:I

    iput p4, p0, LQQPIM/MySoftSimpleInfo;->update:I

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.MySoftSimpleInfo"

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

    sget-boolean v1, LQQPIM/MySoftSimpleInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    const-string v2, "softSimpleInfo"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Lcom/a/a/a/g;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    const-string v2, "reportFeature"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/MySoftSimpleInfo;->official:I

    const-string v2, "official"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/MySoftSimpleInfo;->update:I

    const-string v2, "update"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/MySoftSimpleInfo;

    iget-object v0, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    iget-object v1, p1, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    iget v1, p1, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->official:I

    iget v1, p1, LQQPIM/MySoftSimpleInfo;->official:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->update:I

    iget v1, p1, LQQPIM/MySoftSimpleInfo;->update:I

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

.method public final getOfficial()I
    .locals 1

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->official:I

    return v0
.end method

.method public final getReportFeature()I
    .locals 1

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    return v0
.end method

.method public final getSoftSimpleInfo()LQQPIM/SoftSimpleInfo;
    .locals 1

    iget-object v0, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    return-object v0
.end method

.method public final getUpdate()I
    .locals 1

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->update:I

    return v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, LQQPIM/MySoftSimpleInfo;->cache_softSimpleInfo:LQQPIM/SoftSimpleInfo;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SoftSimpleInfo;

    invoke-direct {v0}, LQQPIM/SoftSimpleInfo;-><init>()V

    sput-object v0, LQQPIM/MySoftSimpleInfo;->cache_softSimpleInfo:LQQPIM/SoftSimpleInfo;

    :cond_0
    sget-object v0, LQQPIM/MySoftSimpleInfo;->cache_softSimpleInfo:LQQPIM/SoftSimpleInfo;

    invoke-virtual {p1, v0, v2, v1}, Lcom/a/a/a/a;->a(Lcom/a/a/a/g;IZ)Lcom/a/a/a/g;

    move-result-object v0

    check-cast v0, LQQPIM/SoftSimpleInfo;

    iput-object v0, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->official:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/MySoftSimpleInfo;->official:I

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->update:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/MySoftSimpleInfo;->update:I

    return-void
.end method

.method public final setOfficial(I)V
    .locals 0

    iput p1, p0, LQQPIM/MySoftSimpleInfo;->official:I

    return-void
.end method

.method public final setReportFeature(I)V
    .locals 0

    iput p1, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    return-void
.end method

.method public final setSoftSimpleInfo(LQQPIM/SoftSimpleInfo;)V
    .locals 0

    iput-object p1, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    return-void
.end method

.method public final setUpdate(I)V
    .locals 0

    iput p1, p0, LQQPIM/MySoftSimpleInfo;->update:I

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget-object v0, p0, LQQPIM/MySoftSimpleInfo;->softSimpleInfo:LQQPIM/SoftSimpleInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Lcom/a/a/a/g;I)V

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->reportFeature:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->official:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/MySoftSimpleInfo;->update:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    return-void
.end method
