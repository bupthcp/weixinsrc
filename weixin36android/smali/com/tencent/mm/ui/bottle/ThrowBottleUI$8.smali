.class Lcom/tencent/mm/ui/bottle/ThrowBottleUI$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$8;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$8;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->k(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->e()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$8;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->s(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/platformtools/MTimerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$8;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->t(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/platformtools/MTimerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$8;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->q(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V

    const-string v0, "MM.Bottle.ThrowBottleUI"

    const-string v1, "bottle record stop on error"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$8;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$8;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    move-result-object v1

    const v2, 0x7f0a0154

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
