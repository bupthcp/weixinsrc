.class public Lcom/tencent/mm/protocal/MMDelChatRoomMember$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:I

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMDelChatRoomMember$Resp;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/protocal/MMDelChatRoomMember$Resp;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/protocal/MMDelChatRoomMember$Resp;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/protocal/MMDelChatRoomMember$Resp;->a:I

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMDelChatRoomMember$Resp;->b:Ljava/util/List;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMDelChatRoomMember$Resp;->a:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMDelChatRoomMember$Resp;->a:I

    return v0
.end method
