.class Lcom/tencent/mm/ui/LauncherUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/tencent/mm/ui/LauncherUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/LauncherUI;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/LauncherUI$1;->b:Lcom/tencent/mm/ui/LauncherUI;

    iput p2, p0, Lcom/tencent/mm/ui/LauncherUI$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI$1;->b:Lcom/tencent/mm/ui/LauncherUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/LauncherUI;->a(Lcom/tencent/mm/ui/LauncherUI;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/LauncherUI$1;->a:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    const-string v0, "MicroMsg.LauncherUI"

    const-string v1, "can\'t not bind Service"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI$1;->b:Lcom/tencent/mm/ui/LauncherUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/LauncherUI;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/LauncherUI$1;->b:Lcom/tencent/mm/ui/LauncherUI;

    iget v1, p0, Lcom/tencent/mm/ui/LauncherUI$1;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/LauncherUI;->a(Lcom/tencent/mm/ui/LauncherUI;I)V

    goto :goto_0
.end method
