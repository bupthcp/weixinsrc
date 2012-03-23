.class Lcom/tencent/mm/ui/shake/ShakeReportUI$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/shake/ShakeReportUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->w(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->w(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0, v6}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->l(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v1, 0x7f0a03f9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v5, 0x7f0a03f6

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v6, 0x7f0a03f7

    invoke-virtual {v5, v6}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v6, 0x7f0a03f8

    invoke-virtual {v5, v6}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI$12;)V

    new-instance v5, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$2;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$2;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI$12;)V

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v1, 0x7f0a03fa

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1
.end method
