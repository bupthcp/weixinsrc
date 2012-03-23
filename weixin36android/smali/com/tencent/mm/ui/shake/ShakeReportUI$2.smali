.class Lcom/tencent/mm/ui/shake/ShakeReportUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/shake/ShakeReportUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$2;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$2;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$2;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$2;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$2;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$2;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->d(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/modelshake/NetSceneShakeGet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$2;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->d(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/modelshake/NetSceneShakeGet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$2;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->e(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/modelshake/NetSceneShakeReport;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$2;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    new-instance v1, Lcom/tencent/mm/modelshake/NetSceneShakeGet;

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$2;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->e(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/modelshake/NetSceneShakeReport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/modelshake/NetSceneShakeReport;->f()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelshake/NetSceneShakeGet;-><init>([B)V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Lcom/tencent/mm/modelshake/NetSceneShakeGet;)Lcom/tencent/mm/modelshake/NetSceneShakeGet;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$2;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->d(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/modelshake/NetSceneShakeGet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :cond_2
    return-void
.end method
