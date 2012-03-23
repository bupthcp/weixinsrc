.class public final LQQPIM/VirusFeature;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public content:Ljava/lang/String;

.field public id:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/VirusFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/VirusFeature;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, LQQPIM/VirusFeature;->id:S

    const-string v0, ""

    iput-object v0, p0, LQQPIM/VirusFeature;->content:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(SLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, LQQPIM/VirusFeature;->id:S

    const-string v0, ""

    iput-object v0, p0, LQQPIM/VirusFeature;->content:Ljava/lang/String;

    iput-short p1, p0, LQQPIM/VirusFeature;->id:S

    iput-object p2, p0, LQQPIM/VirusFeature;->content:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.VirusFeature"

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

    sget-boolean v1, LQQPIM/VirusFeature;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget-short v1, p0, LQQPIM/VirusFeature;->id:S

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(SLjava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/VirusFeature;->content:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/VirusFeature;

    iget-short v0, p0, LQQPIM/VirusFeature;->id:S

    iget-short v1, p1, LQQPIM/VirusFeature;->id:S

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/VirusFeature;->content:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/VirusFeature;->content:Ljava/lang/String;

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

.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/VirusFeature;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()S
    .locals 1

    iget-short v0, p0, LQQPIM/VirusFeature;->id:S

    return v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    const/4 v2, 0x1

    iget-short v0, p0, LQQPIM/VirusFeature;->id:S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(SIZ)S

    move-result v0

    iput-short v0, p0, LQQPIM/VirusFeature;->id:S

    invoke-virtual {p1, v2, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/VirusFeature;->content:Ljava/lang/String;

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/VirusFeature;->content:Ljava/lang/String;

    return-void
.end method

.method public final setId(S)V
    .locals 0

    iput-short p1, p0, LQQPIM/VirusFeature;->id:S

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget-short v0, p0, LQQPIM/VirusFeature;->id:S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(SI)V

    iget-object v0, p0, LQQPIM/VirusFeature;->content:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    return-void
.end method
