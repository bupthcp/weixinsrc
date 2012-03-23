.class Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$3;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$3;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$3;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->d(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/SprayLayout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$3;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->e(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$3;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$3;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->e(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    move-result-object v0

    const v2, 0x7f070067

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;Lcom/tencent/mm/ui/bottle/SprayLayout;)Lcom/tencent/mm/ui/bottle/SprayLayout;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$3;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->d(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/SprayLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$3;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->d(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/SprayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->a()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$3;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->i(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$3;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->i(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;->a()V

    :cond_2
    return-void
.end method
