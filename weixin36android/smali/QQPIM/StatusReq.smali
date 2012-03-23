.class public final LQQPIM/StatusReq;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_header:LQQPIM/ReqHeader;


# instance fields
.field public header:LQQPIM/ReqHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/StatusReq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/StatusReq;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/StatusReq;->header:LQQPIM/ReqHeader;

    return-void
.end method

.method public constructor <init>(LQQPIM/ReqHeader;)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/StatusReq;->header:LQQPIM/ReqHeader;

    iput-object p1, p0, LQQPIM/StatusReq;->header:LQQPIM/ReqHeader;

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.StatusReq"

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

    sget-boolean v1, LQQPIM/StatusReq;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/StatusReq;->header:LQQPIM/ReqHeader;

    const-string v2, "header"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Lcom/a/a/a/g;Ljava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/StatusReq;

    iget-object v0, p0, LQQPIM/StatusReq;->header:LQQPIM/ReqHeader;

    iget-object v1, p1, LQQPIM/StatusReq;->header:LQQPIM/ReqHeader;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getHeader()LQQPIM/ReqHeader;
    .locals 1

    iget-object v0, p0, LQQPIM/StatusReq;->header:LQQPIM/ReqHeader;

    return-object v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    sget-object v0, LQQPIM/StatusReq;->cache_header:LQQPIM/ReqHeader;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/ReqHeader;

    invoke-direct {v0}, LQQPIM/ReqHeader;-><init>()V

    sput-object v0, LQQPIM/StatusReq;->cache_header:LQQPIM/ReqHeader;

    :cond_0
    sget-object v0, LQQPIM/StatusReq;->cache_header:LQQPIM/ReqHeader;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(Lcom/a/a/a/g;IZ)Lcom/a/a/a/g;

    move-result-object v0

    check-cast v0, LQQPIM/ReqHeader;

    iput-object v0, p0, LQQPIM/StatusReq;->header:LQQPIM/ReqHeader;

    return-void
.end method

.method public final setHeader(LQQPIM/ReqHeader;)V
    .locals 0

    iput-object p1, p0, LQQPIM/StatusReq;->header:LQQPIM/ReqHeader;

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget-object v0, p0, LQQPIM/StatusReq;->header:LQQPIM/ReqHeader;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Lcom/a/a/a/g;I)V

    return-void
.end method
