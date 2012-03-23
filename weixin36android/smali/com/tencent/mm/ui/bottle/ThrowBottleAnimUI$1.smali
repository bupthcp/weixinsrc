.class Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->b(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;)V

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
