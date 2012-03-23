.class public Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:Ljava/util/List;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->c:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->d:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->e:Ljava/lang/String;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->f:[B

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->g:Ljava/util/List;

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->h:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->g:Ljava/util/List;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->f:[B

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->h:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->d:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->b:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->e:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->d:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public j()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->f:[B

    return-object v0
.end method

.method public k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMCreateChatRoom$Resp;->g:Ljava/util/List;

    return-object v0
.end method
