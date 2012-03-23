.class Lcom/tencent/mm/modelbase/NetSceneQueue$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelbase/NetSceneBase;

.field private synthetic b:Lcom/tencent/mm/modelbase/NetSceneQueue;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelbase/NetSceneQueue;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$4;->b:Lcom/tencent/mm/modelbase/NetSceneQueue;

    iput-object p2, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$4;->a:Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$4;->b:Lcom/tencent/mm/modelbase/NetSceneQueue;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const-string v3, "doScene failed"

    iget-object v4, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$4;->a:Lcom/tencent/mm/modelbase/NetSceneBase;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method
