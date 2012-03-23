.class public Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->e:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->f:I

    iput v2, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->g:I

    iput v2, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->h:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->k:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->l:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->g:I

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->l:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->g:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->h:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->i:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->h:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->f:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->j:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->i:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->k:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->j:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->e:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->k:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->d:Ljava/lang/String;

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->f:I

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->c:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->b:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->b:Ljava/lang/String;

    return-object v0
.end method

.method public l()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQFriend;->a:J

    return-wide v0
.end method
