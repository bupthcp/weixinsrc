.class public Lcom/tencent/mm/ui/bottle/BottleToast;
.super Landroid/widget/Toast;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleToast;->c:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleToast;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleToast;->a:Landroid/view/View;

    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleToast;->b:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p0, v0, v3, v3}, Lcom/tencent/mm/ui/bottle/BottleToast;->setGravity(III)V

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/bottle/BottleToast;->setDuration(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleToast;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleToast;->setView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleToast;->c:Landroid/content/Context;

    return-void
.end method

.method public setText(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleToast;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleToast;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleToast;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
