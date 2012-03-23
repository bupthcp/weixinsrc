.class public final LQQPIM/ReqHeader;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public lc:Ljava/lang/String;

.field public mobileno:Ljava/lang/String;

.field public platformid:B

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/ReqHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/ReqHeader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, LQQPIM/ReqHeader;->platformid:B

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ReqHeader;->version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ReqHeader;->lc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ReqHeader;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ReqHeader;->mobileno:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ReqHeader;->imsi:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, LQQPIM/ReqHeader;->platformid:B

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ReqHeader;->version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ReqHeader;->lc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ReqHeader;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ReqHeader;->mobileno:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ReqHeader;->imsi:Ljava/lang/String;

    iput-byte p1, p0, LQQPIM/ReqHeader;->platformid:B

    iput-object p2, p0, LQQPIM/ReqHeader;->version:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/ReqHeader;->lc:Ljava/lang/String;

    iput-object p4, p0, LQQPIM/ReqHeader;->imei:Ljava/lang/String;

    iput-object p5, p0, LQQPIM/ReqHeader;->mobileno:Ljava/lang/String;

    iput-object p6, p0, LQQPIM/ReqHeader;->imsi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.ReqHeader"

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

    sget-boolean v1, LQQPIM/ReqHeader;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget-byte v1, p0, LQQPIM/ReqHeader;->platformid:B

    const-string v2, "platformid"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(BLjava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/ReqHeader;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/ReqHeader;->lc:Ljava/lang/String;

    const-string v2, "lc"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/ReqHeader;->imei:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/ReqHeader;->mobileno:Ljava/lang/String;

    const-string v2, "mobileno"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/ReqHeader;->imsi:Ljava/lang/String;

    const-string v2, "imsi"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/ReqHeader;

    iget-byte v0, p0, LQQPIM/ReqHeader;->platformid:B

    iget-byte v1, p1, LQQPIM/ReqHeader;->platformid:B

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(BB)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/ReqHeader;->version:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/ReqHeader;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/ReqHeader;->lc:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/ReqHeader;->lc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/ReqHeader;->imei:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/ReqHeader;->imei:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/ReqHeader;->mobileno:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/ReqHeader;->mobileno:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/ReqHeader;->imsi:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/ReqHeader;->imsi:Ljava/lang/String;

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

.method public final getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ReqHeader;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public final getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ReqHeader;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public final getLc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ReqHeader;->lc:Ljava/lang/String;

    return-object v0
.end method

.method public final getMobileno()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ReqHeader;->mobileno:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlatformid()B
    .locals 1

    iget-byte v0, p0, LQQPIM/ReqHeader;->platformid:B

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ReqHeader;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    const/4 v2, 0x1

    iget-byte v0, p0, LQQPIM/ReqHeader;->platformid:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, LQQPIM/ReqHeader;->platformid:B

    invoke-virtual {p1, v2, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ReqHeader;->version:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ReqHeader;->lc:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ReqHeader;->imei:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ReqHeader;->mobileno:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ReqHeader;->imsi:Ljava/lang/String;

    return-void
.end method

.method public final setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ReqHeader;->imei:Ljava/lang/String;

    return-void
.end method

.method public final setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ReqHeader;->imsi:Ljava/lang/String;

    return-void
.end method

.method public final setLc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ReqHeader;->lc:Ljava/lang/String;

    return-void
.end method

.method public final setMobileno(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ReqHeader;->mobileno:Ljava/lang/String;

    return-void
.end method

.method public final setPlatformid(B)V
    .locals 0

    iput-byte p1, p0, LQQPIM/ReqHeader;->platformid:B

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ReqHeader;->version:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget-byte v0, p0, LQQPIM/ReqHeader;->platformid:B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(BI)V

    iget-object v0, p0, LQQPIM/ReqHeader;->version:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/ReqHeader;->lc:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/ReqHeader;->imei:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/ReqHeader;->mobileno:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/ReqHeader;->imsi:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    return-void
.end method
