.class Lcom/tencent/mm/ui/shake/ShakeReportUI$17$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/shake/ShakeReportUI$17;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI$17;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$17$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$17$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$17;

    iget-object v0, v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$17;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0, v3}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Z)Z

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$17$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$17;

    iget-object v1, v1, Lcom/tencent/mm/ui/shake/ShakeReportUI$17;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
