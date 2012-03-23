.class Lcom/tencent/mm/ui/shake/ShakeReportUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/shake/ShakeReportUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$3;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FFIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p7, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$3;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;F)F

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$3;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0, p2}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b(Lcom/tencent/mm/ui/shake/ShakeReportUI;F)F

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$3;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0, p3}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;I)I

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$3;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0, p4}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b(Lcom/tencent/mm/ui/shake/ShakeReportUI;I)I

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$3;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0, p5}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$3;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0, p6}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b(Lcom/tencent/mm/ui/shake/ShakeReportUI;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$3;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->f(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "MicroMsg.ShakeReportUI"

    const-string v1, "initLbsManager failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
