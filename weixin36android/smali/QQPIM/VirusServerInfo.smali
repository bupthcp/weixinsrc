.class public final LQQPIM/VirusServerInfo;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public advise:Ljava/lang/String;

.field public bUpdate:Z

.field public short_desc:Ljava/lang/String;

.field public strTips:Ljava/lang/String;

.field public timestamp:I

.field public url:Ljava/lang/String;

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/VirusServerInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/VirusServerInfo;->$assertionsDisabled:Z

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

    iput-object v0, p0, LQQPIM/VirusServerInfo;->strTips:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, LQQPIM/VirusServerInfo;->bUpdate:Z

    iput v1, p0, LQQPIM/VirusServerInfo;->version:I

    iput v1, p0, LQQPIM/VirusServerInfo;->timestamp:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/VirusServerInfo;->url:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/VirusServerInfo;->short_desc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/VirusServerInfo;->advise:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/VirusServerInfo;->strTips:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, LQQPIM/VirusServerInfo;->bUpdate:Z

    iput v1, p0, LQQPIM/VirusServerInfo;->version:I

    iput v1, p0, LQQPIM/VirusServerInfo;->timestamp:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/VirusServerInfo;->url:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/VirusServerInfo;->short_desc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/VirusServerInfo;->advise:Ljava/lang/String;

    iput-object p1, p0, LQQPIM/VirusServerInfo;->strTips:Ljava/lang/String;

    iput-boolean p2, p0, LQQPIM/VirusServerInfo;->bUpdate:Z

    iput p3, p0, LQQPIM/VirusServerInfo;->version:I

    iput p4, p0, LQQPIM/VirusServerInfo;->timestamp:I

    iput-object p5, p0, LQQPIM/VirusServerInfo;->url:Ljava/lang/String;

    iput-object p6, p0, LQQPIM/VirusServerInfo;->short_desc:Ljava/lang/String;

    iput-object p7, p0, LQQPIM/VirusServerInfo;->advise:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.VirusServerInfo"

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

    sget-boolean v1, LQQPIM/VirusServerInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/VirusServerInfo;->strTips:Ljava/lang/String;

    const-string v2, "strTips"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-boolean v1, p0, LQQPIM/VirusServerInfo;->bUpdate:Z

    const-string v2, "bUpdate"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ZLjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/VirusServerInfo;->version:I

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/VirusServerInfo;->timestamp:I

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/VirusServerInfo;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/VirusServerInfo;->short_desc:Ljava/lang/String;

    const-string v2, "short_desc"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/VirusServerInfo;->advise:Ljava/lang/String;

    const-string v2, "advise"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/VirusServerInfo;

    iget-object v0, p0, LQQPIM/VirusServerInfo;->strTips:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/VirusServerInfo;->strTips:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LQQPIM/VirusServerInfo;->bUpdate:Z

    iget-boolean v1, p1, LQQPIM/VirusServerInfo;->bUpdate:Z

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/VirusServerInfo;->version:I

    iget v1, p1, LQQPIM/VirusServerInfo;->version:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/VirusServerInfo;->timestamp:I

    iget v1, p1, LQQPIM/VirusServerInfo;->timestamp:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/VirusServerInfo;->url:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/VirusServerInfo;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/VirusServerInfo;->short_desc:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/VirusServerInfo;->short_desc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/VirusServerInfo;->advise:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/VirusServerInfo;->advise:Ljava/lang/String;

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

.method public final getAdvise()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/VirusServerInfo;->advise:Ljava/lang/String;

    return-object v0
.end method

.method public final getBUpdate()Z
    .locals 1

    iget-boolean v0, p0, LQQPIM/VirusServerInfo;->bUpdate:Z

    return v0
.end method

.method public final getShort_desc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/VirusServerInfo;->short_desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getStrTips()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/VirusServerInfo;->strTips:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()I
    .locals 1

    iget v0, p0, LQQPIM/VirusServerInfo;->timestamp:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/VirusServerInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    iget v0, p0, LQQPIM/VirusServerInfo;->version:I

    return v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/VirusServerInfo;->strTips:Ljava/lang/String;

    invoke-virtual {p1, v2, v2}, Lcom/a/a/a/a;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, LQQPIM/VirusServerInfo;->bUpdate:Z

    iget v0, p0, LQQPIM/VirusServerInfo;->version:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/VirusServerInfo;->version:I

    iget v0, p0, LQQPIM/VirusServerInfo;->timestamp:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/VirusServerInfo;->timestamp:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/VirusServerInfo;->url:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/VirusServerInfo;->short_desc:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/VirusServerInfo;->advise:Ljava/lang/String;

    return-void
.end method

.method public final setAdvise(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/VirusServerInfo;->advise:Ljava/lang/String;

    return-void
.end method

.method public final setBUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, LQQPIM/VirusServerInfo;->bUpdate:Z

    return-void
.end method

.method public final setShort_desc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/VirusServerInfo;->short_desc:Ljava/lang/String;

    return-void
.end method

.method public final setStrTips(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/VirusServerInfo;->strTips:Ljava/lang/String;

    return-void
.end method

.method public final setTimestamp(I)V
    .locals 0

    iput p1, p0, LQQPIM/VirusServerInfo;->timestamp:I

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/VirusServerInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(I)V
    .locals 0

    iput p1, p0, LQQPIM/VirusServerInfo;->version:I

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget-object v0, p0, LQQPIM/VirusServerInfo;->strTips:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-boolean v0, p0, LQQPIM/VirusServerInfo;->bUpdate:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(ZI)V

    iget v0, p0, LQQPIM/VirusServerInfo;->version:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/VirusServerInfo;->timestamp:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget-object v0, p0, LQQPIM/VirusServerInfo;->url:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/VirusServerInfo;->short_desc:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/VirusServerInfo;->advise:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    return-void
.end method
