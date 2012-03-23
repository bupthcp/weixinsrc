.class public final LQQPIM/SUIKey;
.super Lcom/a/a/a/g;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x304dc0b30cb1650fL


# instance fields
.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public lc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SUIKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SUIKey;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    iput-object p1, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    iput-object p2, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    iput-object p4, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    iput-object p5, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SUIKey"

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

    sget-boolean v1, LQQPIM/SUIKey;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    const-string v2, "lc"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    const-string v2, "imsi"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/SUIKey;

    iget-object v0, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SUIKey;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SUIKey;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

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

    iget-object v0, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public final getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public final getLc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    invoke-virtual {p1, v1, v1}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    return-void
.end method

.method public final setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    return-void
.end method

.method public final setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    return-void
.end method

.method public final setLc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget-object v0, p0, LQQPIM/SUIKey;->lc:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SUIKey;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SUIKey;->version:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SUIKey;->imei:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SUIKey;->imsi:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    return-void
.end method
