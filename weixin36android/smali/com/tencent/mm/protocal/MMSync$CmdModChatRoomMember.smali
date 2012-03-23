.class public Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;
.super Lcom/tencent/mm/protocal/MMSync$CmdItem;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:[B

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/tencent/mm/protocal/MMSync$CmdItem;-><init>(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->d:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->f:[B

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->g:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->j:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->k:I

    iput v1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->m:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->f:[B

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->l:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->n:Ljava/lang/String;

    return-void
.end method

.method public b([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->f:[B

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->l:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->e:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->o:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->m:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->g:I

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->a:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->n:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->k:I

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->b:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->o:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->c:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->d:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->c:Ljava/lang/String;

    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->h:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->i:Ljava/lang/String;

    return-void
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->e:I

    return v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->j:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->p:Ljava/lang/String;

    return-void
.end method

.method public l()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->f:[B

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->g:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->f:[B

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->h:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->i:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->j:Ljava/lang/String;

    return-object v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->k:I

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->p:Ljava/lang/String;

    return-object v0
.end method
