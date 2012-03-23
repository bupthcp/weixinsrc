.class Lcom/tencent/mm/ui/shake/ShakeReportUI$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/shake/ShakeReportUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$14;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$14;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->A(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$14;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->B(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$14;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c(Lcom/tencent/mm/ui/shake/ShakeReportUI;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$14;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->d(Lcom/tencent/mm/ui/shake/ShakeReportUI;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$14;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c(Lcom/tencent/mm/ui/shake/ShakeReportUI;Z)Z

    return-void
.end method
