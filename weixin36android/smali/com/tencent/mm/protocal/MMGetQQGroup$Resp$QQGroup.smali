.class public Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->c:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->d:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->b:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->d:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->d:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->c:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->e:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->e:I

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMGetQQGroup$Resp$QQGroup;->c:Ljava/lang/String;

    return-object v0
.end method
