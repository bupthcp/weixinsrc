.class Lcom/tencent/mm/ui/shake/ShakeReportUI$18;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/shake/DraggerButton$OnDragListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/shake/ShakeReportUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$18;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$18;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->j(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$18;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->k(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$18;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->w(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$18;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->w(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$18;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->I(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    goto :goto_0
.end method
