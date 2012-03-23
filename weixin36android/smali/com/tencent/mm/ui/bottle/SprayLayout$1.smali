.class Lcom/tencent/mm/ui/bottle/SprayLayout$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/SprayLayout;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/SprayLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->a(Lcom/tencent/mm/ui/bottle/SprayLayout;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->b(Lcom/tencent/mm/ui/bottle/SprayLayout;)I

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->c(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->c(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->d(Lcom/tencent/mm/ui/bottle/SprayLayout;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->g(Lcom/tencent/mm/ui/bottle/SprayLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/SprayLayout;->h(Lcom/tencent/mm/ui/bottle/SprayLayout;)I

    move-result v1

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->a()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->a(Lcom/tencent/mm/ui/bottle/SprayLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->e(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    iget-object v1, v1, Lcom/tencent/mm/ui/bottle/SprayLayout;->a:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->e(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->f(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->c(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->a(Lcom/tencent/mm/ui/bottle/SprayLayout;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->e(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    iget-object v1, v1, Lcom/tencent/mm/ui/bottle/SprayLayout;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->f(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    iget-object v1, v1, Lcom/tencent/mm/ui/bottle/SprayLayout;->a:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->f(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->a(Lcom/tencent/mm/ui/bottle/SprayLayout;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->e(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->e(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->f(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    iget-object v1, v1, Lcom/tencent/mm/ui/bottle/SprayLayout;->b:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->c(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    iget-object v1, v1, Lcom/tencent/mm/ui/bottle/SprayLayout;->a:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->c(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->a(Lcom/tencent/mm/ui/bottle/SprayLayout;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->c(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    iget-object v1, v1, Lcom/tencent/mm/ui/bottle/SprayLayout;->c:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->f(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->f(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/SprayLayout;->j(Lcom/tencent/mm/ui/bottle/SprayLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/SprayLayout;->i(Lcom/tencent/mm/ui/bottle/SprayLayout;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x118

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/SprayLayout$1;->a:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/SprayLayout;->k(Lcom/tencent/mm/ui/bottle/SprayLayout;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/bottle/SprayLayout;->a(Lcom/tencent/mm/ui/bottle/SprayLayout;I)I

    goto/16 :goto_1
.end method
