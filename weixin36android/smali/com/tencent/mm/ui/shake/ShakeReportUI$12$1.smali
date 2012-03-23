.class Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI$12;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    iget-object v0, v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Z)Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    iget-object v0, v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    iget-object v3, v3, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v4, 0x7f0a03fe

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    iget-object v4, v4, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v5, 0x7f0a03fd

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, ""

    new-instance v4, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1$1;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1$1;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;)V

    invoke-static {v0, v3, v1, v2, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    iget-object v2, v2, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x100e

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    iget-object v0, v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->y(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    const/16 v4, 0x1010

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    iget-object v0, v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->l(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    iget-object v0, v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    iget-object v3, v3, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->l(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-static {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b(Lcom/tencent/mm/ui/shake/ShakeReportUI;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    iget-object v0, v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v1, 0x7f07026a

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    iget-object v1, v1, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->l(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
