.class Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:[B

.field private synthetic f:Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;IIILjava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;->f:Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;

    iput p2, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;->a:I

    iput p3, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;->b:I

    iput p4, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;->c:I

    iput-object p5, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;->e:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;->f:Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;

    invoke-static {v0}, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->a(Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;->f:Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;

    invoke-static {v0}, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->c(Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;)Lcom/tencent/mm/network/IOnGYNetEnd;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;->a:I

    iget v2, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;->b:I

    iget v3, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;->c:I

    iget-object v4, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd$1;->f:Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;

    invoke-static {v5}, Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;->b(Lcom/tencent/mm/modelbase/RemoteOnGYNetEnd;)Lcom/tencent/mm/network/IReqResp;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/network/IOnGYNetEnd;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V

    goto :goto_0
.end method
