.class Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$2;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$2;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->c(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/BottleImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$2;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->d(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/SprayLayout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$2;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$2;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->e(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    move-result-object v0

    const v2, 0x7f070067

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;Lcom/tencent/mm/ui/bottle/SprayLayout;)Lcom/tencent/mm/ui/bottle/SprayLayout;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$2;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->d(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Lcom/tencent/mm/ui/bottle/SprayLayout;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$2;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->f(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$2;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->g(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/ui/bottle/SprayLayout;->a(III)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$2;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->h(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
