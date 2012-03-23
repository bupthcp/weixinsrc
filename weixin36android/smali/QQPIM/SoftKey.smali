.class public final LQQPIM/SoftKey;
.super Lcom/a/a/a/g;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public cert:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public producttime:Ljava/lang/String;

.field public softname:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versioncode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SoftKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SoftKey;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftKey;->versioncode:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftKey;->versioncode:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    iput-object p1, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    iput-object p2, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    iput-object p4, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    iput-object p5, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    iput p6, p0, LQQPIM/SoftKey;->versioncode:I

    iput-object p7, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftKey"

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

    sget-boolean v1, LQQPIM/SoftKey;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final compareTo(LQQPIM/SoftKey;)I
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v2, v0, [I

    iget-object v0, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    iget-object v3, p1, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/a/a/a/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    aput v0, v2, v1

    const/4 v0, 0x1

    iget-object v3, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    iget-object v4, p1, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/a/a/a/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    iget-object v4, p1, LQQPIM/SoftKey;->version:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/a/a/a/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    iget-object v4, p1, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/a/a/a/c;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    aput v3, v2, v0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    aget v3, v2, v0

    if-eqz v3, :cond_1

    aget v1, v2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LQQPIM/SoftKey;

    invoke-virtual {p0, p1}, LQQPIM/SoftKey;->compareTo(LQQPIM/SoftKey;)I

    move-result v0

    return v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    const-string v2, "softname"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    const-string v2, "producttime"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    const-string v2, "cert"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftKey;->versioncode:I

    const-string v2, "versioncode"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/SoftKey;

    iget-object v0, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftKey;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

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

.method public final getCert()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getProducttime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    return-object v0
.end method

.method public final getSoftname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersioncode()I
    .locals 1

    iget v0, p0, LQQPIM/SoftKey;->versioncode:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    invoke-static {v2}, Lcom/a/a/a/c;->a(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    invoke-static {v2}, Lcom/a/a/a/c;->a(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    invoke-static {v2}, Lcom/a/a/a/c;->a(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    invoke-static {v2}, Lcom/a/a/a/c;->a(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    invoke-virtual {p1, v1, v1}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftKey;->versioncode:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftKey;->versioncode:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    return-void
.end method

.method public final setCert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    return-void
.end method

.method public final setProducttime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    return-void
.end method

.method public final setSoftname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    return-void
.end method

.method public final setVersioncode(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftKey;->versioncode:I

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget-object v0, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, LQQPIM/SoftKey;->versioncode:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget-object v0, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method
