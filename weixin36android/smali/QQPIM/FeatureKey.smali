.class public final LQQPIM/FeatureKey;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public cert:Ljava/lang/String;

.field public fileSize:I

.field public softName:Ljava/lang/String;

.field public uniCode:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/FeatureKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/FeatureKey;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/FeatureKey;->softName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/FeatureKey;->version:Ljava/lang/String;

    iput v1, p0, LQQPIM/FeatureKey;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    iput v1, p0, LQQPIM/FeatureKey;->fileSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/FeatureKey;->softName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/FeatureKey;->version:Ljava/lang/String;

    iput v1, p0, LQQPIM/FeatureKey;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    iput v1, p0, LQQPIM/FeatureKey;->fileSize:I

    iput-object p1, p0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    iput-object p2, p0, LQQPIM/FeatureKey;->softName:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/FeatureKey;->version:Ljava/lang/String;

    iput p4, p0, LQQPIM/FeatureKey;->versionCode:I

    iput-object p5, p0, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    iput p6, p0, LQQPIM/FeatureKey;->fileSize:I

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.FeatureKey"

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

    sget-boolean v1, LQQPIM/FeatureKey;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    const-string v2, "uniCode"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/FeatureKey;->softName:Ljava/lang/String;

    const-string v2, "softName"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/FeatureKey;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/FeatureKey;->versionCode:I

    const-string v2, "versionCode"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    const-string v2, "cert"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/FeatureKey;->fileSize:I

    const-string v2, "fileSize"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/FeatureKey;

    iget-object v0, p0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/FeatureKey;->softName:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/FeatureKey;->softName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/FeatureKey;->version:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/FeatureKey;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/FeatureKey;->versionCode:I

    iget v1, p1, LQQPIM/FeatureKey;->versionCode:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/FeatureKey;->fileSize:I

    iget v1, p1, LQQPIM/FeatureKey;->fileSize:I

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

.method public final getCert()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileSize()I
    .locals 1

    iget v0, p0, LQQPIM/FeatureKey;->fileSize:I

    return v0
.end method

.method public final getSoftName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/FeatureKey;->softName:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/FeatureKey;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()I
    .locals 1

    iget v0, p0, LQQPIM/FeatureKey;->versionCode:I

    return v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    invoke-virtual {p1, v1, v1}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/FeatureKey;->softName:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/FeatureKey;->version:Ljava/lang/String;

    iget v0, p0, LQQPIM/FeatureKey;->versionCode:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/FeatureKey;->versionCode:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    iget v0, p0, LQQPIM/FeatureKey;->fileSize:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/FeatureKey;->fileSize:I

    return-void
.end method

.method public final setCert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    return-void
.end method

.method public final setFileSize(I)V
    .locals 0

    iput p1, p0, LQQPIM/FeatureKey;->fileSize:I

    return-void
.end method

.method public final setSoftName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/FeatureKey;->softName:Ljava/lang/String;

    return-void
.end method

.method public final setUniCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/FeatureKey;->version:Ljava/lang/String;

    return-void
.end method

.method public final setVersionCode(I)V
    .locals 0

    iput p1, p0, LQQPIM/FeatureKey;->versionCode:I

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget-object v0, p0, LQQPIM/FeatureKey;->uniCode:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/FeatureKey;->softName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/FeatureKey;->version:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/FeatureKey;->versionCode:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget-object v0, p0, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/FeatureKey;->cert:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, LQQPIM/FeatureKey;->fileSize:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    return-void
.end method
