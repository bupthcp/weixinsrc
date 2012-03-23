.class public Lcom/tencent/mm/ui/bottle/BallonImageView;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/BallonImageView$1;-><init>(Lcom/tencent/mm/ui/bottle/BallonImageView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView;->a:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView;->a:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView;->a:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/tencent/mm/ui/bottle/BallonImageView$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/BallonImageView$1;-><init>(Lcom/tencent/mm/ui/bottle/BallonImageView;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView;->a:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView;->a:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView;->a:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView;->a:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BallonImageView;->setAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BallonImageView;->a:Landroid/view/animation/Animation;

    invoke-static {p0, v0}, Lb/a/r;->a(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
