.class Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->I()Lcom/tencent/mm/modelshake/ShakeItemStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->d()Z

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$1;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    iget-object v0, v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->x(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
