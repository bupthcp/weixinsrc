.class Lcom/tencent/mm/ui/shake/ShakeReportUI$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/shake/ShakeManager$ShakeListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/shake/ShakeReportUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.ShakeReportUI"

    const-string v1, "ui finished"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->g(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.ShakeReportUI"

    const-string v1, "tryShake the status is can\'s shake"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->h(Lcom/tencent/mm/ui/shake/ShakeReportUI;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v0

    const-wide/16 v2, 0x4b0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const-string v2, "MicroMsg.ShakeReportUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryStartShake delay too short:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->i(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/ui/shake/ScreenOnKeeper;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->i(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/ui/shake/ScreenOnKeeper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/ui/shake/ScreenOnKeeper;->a()V

    :cond_3
    const-string v2, "MicroMsg.ShakeReportUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryStartShake delaytoo enough:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;J)J

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->j(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->k(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->l(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->m(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->p(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->n(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    goto :goto_1
.end method
