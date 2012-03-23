.class Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const v0, 0x7f0a03d0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->a(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/widget/Button;

    move-result-object v1

    if-eq p1, v1, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->b(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->a(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;Z)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->a(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    move-result-object v2

    const v3, 0x7f0202fb

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->a(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f0a03d2

    :cond_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d()Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v1, v4}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->a(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;Z)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->a(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    move-result-object v2

    const v3, 0x7f0202fa

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->a(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v0, 0x7f0a03d1

    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->e(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->e()Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->f(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->g(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    move-result-object v0

    const v1, 0x7f0a03cf

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->h(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->g(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowText;

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowText;-><init>(Ljava/lang/String;Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->h(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
