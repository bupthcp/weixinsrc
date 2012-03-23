.class Lcom/tencent/mm/ui/shake/ShakeReportUI$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/Dialog;

.field private synthetic b:Lcom/tencent/mm/ui/shake/ShakeReportUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$10;->b:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$10;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$10;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$10;->b:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->q(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    return-void
.end method
