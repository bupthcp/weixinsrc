.class Lcom/tencent/mm/ui/bottle/PickedBottleImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/PickedBottleImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView$1;->a:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView$1;->a:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView$1;->a:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->a(Lcom/tencent/mm/ui/bottle/PickedBottleImageView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    mul-int/lit16 v0, v0, 0x212

    div-int/lit16 v0, v0, 0x320

    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView$1;->a:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->a(Lcom/tencent/mm/ui/bottle/PickedBottleImageView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView$1;->a:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->a(Lcom/tencent/mm/ui/bottle/PickedBottleImageView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView$1;->a:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->clearAnimation()V

    return-void
.end method
