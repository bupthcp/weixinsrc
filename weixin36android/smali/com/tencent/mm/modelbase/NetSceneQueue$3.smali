.class Lcom/tencent/mm/modelbase/NetSceneQueue$3;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelbase/NetSceneQueue;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelbase/NetSceneQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$3;->a:Lcom/tencent/mm/modelbase/NetSceneQueue;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$3;->a:Lcom/tencent/mm/modelbase/NetSceneQueue;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method
