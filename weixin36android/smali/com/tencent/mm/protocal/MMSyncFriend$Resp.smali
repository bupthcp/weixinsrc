.class public Lcom/tencent/mm/protocal/MMSyncFriend$Resp;
.super Lcom/tencent/mm/protocal/MMBase$Resp;


# instance fields
.field private a:I

.field private b:I

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Resp;-><init>()V

    iput v0, p0, Lcom/tencent/mm/protocal/MMSyncFriend$Resp;->a:I

    iput v0, p0, Lcom/tencent/mm/protocal/MMSyncFriend$Resp;->b:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/protocal/MMSyncFriend$Resp;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSyncFriend$Resp;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSyncFriend$Resp;->a:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/protocal/MMSyncFriend$Resp;->b:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/protocal/MMSyncFriend$Resp;->b:I

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protocal/MMSyncFriend$Resp;->c:Ljava/util/List;

    return-object v0
.end method
