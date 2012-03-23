.class Lcom/tencent/mm/ui/shake/ShakeReportUI$12$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI$12;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$2;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12$2;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    iget-object v0, v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Z)Z

    return-void
.end method
