.class Lcom/tencent/mm/modelsimple/NetSceneLbsFind$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelsimple/NetSceneLbsFind;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind$1;->a:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind$1;->a:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-static {v0}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->d(Lcom/tencent/mm/modelsimple/NetSceneLbsFind;)Lcom/tencent/mm/modelbase/IOnSceneEnd;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind$1;->a:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-static {v1}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->a(Lcom/tencent/mm/modelsimple/NetSceneLbsFind;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind$1;->a:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-static {v2}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->b(Lcom/tencent/mm/modelsimple/NetSceneLbsFind;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind$1;->a:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-static {v3}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->c(Lcom/tencent/mm/modelsimple/NetSceneLbsFind;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind$1;->a:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    const/4 v0, 0x0

    return v0
.end method
