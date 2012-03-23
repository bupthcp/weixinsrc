.class public final LQQPIM/UserInfo;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_ct:I


# instance fields
.field public channelid:Ljava/lang/String;

.field public ct:I

.field public imei:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public lc:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public qq:Ljava/lang/String;

.field public ua:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/UserInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/UserInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    sget-object v0, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    invoke-virtual {v0}, LQQPIM/ConnectType;->value()I

    move-result v0

    iput v0, p0, LQQPIM/UserInfo;->ct:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    sget-object v0, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    invoke-virtual {v0}, LQQPIM/ConnectType;->value()I

    move-result v0

    iput v0, p0, LQQPIM/UserInfo;->ct:I

    iput-object p1, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    iput-object p2, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    iput-object p4, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    iput-object p5, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    iput-object p6, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    iput-object p7, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    iput p8, p0, LQQPIM/UserInfo;->ct:I

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.UserInfo"

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

    sget-boolean v1, LQQPIM/UserInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    const-string v2, "qq"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    const-string v2, "ip"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    const-string v2, "lc"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    const-string v2, "channelid"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    const-string v2, "ua"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/UserInfo;->ct:I

    const-string v2, "ct"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/UserInfo;

    iget-object v0, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/UserInfo;->ct:I

    iget v1, p1, LQQPIM/UserInfo;->ct:I

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

.method public final getChannelid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    return-object v0
.end method

.method public final getCt()I
    .locals 1

    iget v0, p0, LQQPIM/UserInfo;->ct:I

    return v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final getLc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public final getQq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public final getUa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/a/a/a/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    iget v0, p0, LQQPIM/UserInfo;->ct:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/UserInfo;->ct:I

    return-void
.end method

.method public final setChannelid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    return-void
.end method

.method public final setCt(I)V
    .locals 0

    iput p1, p0, LQQPIM/UserInfo;->ct:I

    return-void
.end method

.method public final setImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    return-void
.end method

.method public final setLc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    return-void
.end method

.method public final setPhone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    return-void
.end method

.method public final setQq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    return-void
.end method

.method public final setUa(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget-object v0, p0, LQQPIM/UserInfo;->imei:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/UserInfo;->qq:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/UserInfo;->phone:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/UserInfo;->ip:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/UserInfo;->lc:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/UserInfo;->channelid:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, LQQPIM/UserInfo;->ua:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;I)V

    :cond_5
    iget v0, p0, LQQPIM/UserInfo;->ct:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    return-void
.end method
