.class Lcom/tencent/mm/ui/shake/ShakeReportUI$17;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/shake/ShakeReportUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$17;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$17;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->H(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$17;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0, v5}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$17;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0, v5}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->d(Lcom/tencent/mm/ui/shake/ShakeReportUI;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$17;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->w(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$17;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$17;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v4, 0x7f0a03f7

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/shake/ShakeReportUI$17$1;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$17$1;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI$17;)V

    new-instance v5, Lcom/tencent/mm/ui/shake/ShakeReportUI$17$2;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$17$2;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI$17;)V

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    goto :goto_0
.end method
