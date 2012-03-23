.class Lcom/tencent/mm/modelbase/NetSceneQueue$ReturnTimeoutCallBack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private final a:Lcom/tencent/mm/modelbase/NetSceneBase;

.field private synthetic b:Lcom/tencent/mm/modelbase/NetSceneQueue;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/modelbase/NetSceneQueue;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$ReturnTimeoutCallBack;->b:Lcom/tencent/mm/modelbase/NetSceneQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$ReturnTimeoutCallBack;->a:Lcom/tencent/mm/modelbase/NetSceneBase;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    const-string v0, "MicroMsg.NetSceneQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scene not return, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$ReturnTimeoutCallBack;->a:Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-virtual {v2}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", canceled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$ReturnTimeoutCallBack;->b:Lcom/tencent/mm/modelbase/NetSceneQueue;

    iget-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$ReturnTimeoutCallBack;->a:Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$ReturnTimeoutCallBack;->b:Lcom/tencent/mm/modelbase/NetSceneQueue;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "doScene failed"

    iget-object v4, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$ReturnTimeoutCallBack;->a:Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    const/4 v0, 0x0

    return v0
.end method
