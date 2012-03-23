.class public final LQQPIM/ClientVersionInfo;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_id:I


# instance fields
.field public id:I

.field public info:Ljava/lang/String;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/ClientVersionInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/ClientVersionInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    iput v0, p0, LQQPIM/ClientVersionInfo;->id:I

    iput v0, p0, LQQPIM/ClientVersionInfo;->version:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ClientVersionInfo;->info:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    iput v0, p0, LQQPIM/ClientVersionInfo;->id:I

    iput v0, p0, LQQPIM/ClientVersionInfo;->version:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ClientVersionInfo;->info:Ljava/lang/String;

    iput p1, p0, LQQPIM/ClientVersionInfo;->id:I

    iput p2, p0, LQQPIM/ClientVersionInfo;->version:I

    iput-object p3, p0, LQQPIM/ClientVersionInfo;->info:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.ClientVersionInfo"

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

    sget-boolean v1, LQQPIM/ClientVersionInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/ClientVersionInfo;->id:I

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/ClientVersionInfo;->version:I

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/ClientVersionInfo;->info:Ljava/lang/String;

    const-string v2, "info"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/ClientVersionInfo;

    iget v0, p0, LQQPIM/ClientVersionInfo;->id:I

    iget v1, p1, LQQPIM/ClientVersionInfo;->id:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/ClientVersionInfo;->version:I

    iget v1, p1, LQQPIM/ClientVersionInfo;->version:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/ClientVersionInfo;->info:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/ClientVersionInfo;->info:Ljava/lang/String;

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

.method public final getId()I
    .locals 1

    iget v0, p0, LQQPIM/ClientVersionInfo;->id:I

    return v0
.end method

.method public final getInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ClientVersionInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    iget v0, p0, LQQPIM/ClientVersionInfo;->version:I

    return v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, LQQPIM/ClientVersionInfo;->id:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/ClientVersionInfo;->id:I

    iget v0, p0, LQQPIM/ClientVersionInfo;->version:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/ClientVersionInfo;->version:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ClientVersionInfo;->info:Ljava/lang/String;

    return-void
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, LQQPIM/ClientVersionInfo;->id:I

    return-void
.end method

.method public final setInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ClientVersionInfo;->info:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(I)V
    .locals 0

    iput p1, p0, LQQPIM/ClientVersionInfo;->version:I

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget v0, p0, LQQPIM/ClientVersionInfo;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/ClientVersionInfo;->version:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget-object v0, p0, LQQPIM/ClientVersionInfo;->info:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/ClientVersionInfo;->info:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
