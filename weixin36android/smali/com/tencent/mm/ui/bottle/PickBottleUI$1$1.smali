.class Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/PickBottleUI$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, -0x2711

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->a(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/ui/bottle/SprayLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->a()V

    const/16 v0, -0x7d2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->a(Lcom/tencent/mm/ui/bottle/PickBottleUI;Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;)Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->b(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->b(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    move-result-object v0

    const v1, 0x7f0a03e7

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->h(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->c(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->c(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->b:I

    if-ne v0, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->d(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->d(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->f(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v1, v1, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->e(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->d(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v1, v1, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->c(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->d(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v1, v1, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->c(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->b:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->g(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->a(Lcom/tencent/mm/ui/bottle/PickBottleUI;Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;)Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

    goto :goto_0
.end method
