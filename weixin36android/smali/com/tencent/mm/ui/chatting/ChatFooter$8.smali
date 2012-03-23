.class Lcom/tencent/mm/ui/chatting/ChatFooter$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ChatFooter;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    const/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->g(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/Button;

    move-result-object v0

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/ChatFooter;->h(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter;I)I

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ChatFooter;->i(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v8

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/ChatFooter;->i(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v5}, Lcom/tencent/mm/ui/chatting/ChatFooter;->j(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v2, v9

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v5}, Lcom/tencent/mm/ui/chatting/ChatFooter;->j(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->k(Lcom/tencent/mm/ui/chatting/ChatFooter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->l(Lcom/tencent/mm/ui/chatting/ChatFooter;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0, v8}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->g(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->h(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v1

    const v2, 0x7f0202fb

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->g(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0a0172

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->m(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStartRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStartRequest;->a()Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v6}, Lcom/tencent/mm/ui/chatting/ChatFooter;->h(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v6

    const/high16 v7, 0x4270

    invoke-static {v6, v7}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v7}, Lcom/tencent/mm/ui/chatting/ChatFooter;->n(Lcom/tencent/mm/ui/chatting/ChatFooter;)I

    move-result v7

    sub-int v6, v7, v6

    if-gt v1, v6, :cond_3

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v6}, Lcom/tencent/mm/ui/chatting/ChatFooter;->o(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v6}, Lcom/tencent/mm/ui/chatting/ChatFooter;->j(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/2addr v4, v3

    if-gt v1, v4, :cond_4

    if-lt v1, v3, :cond_4

    if-lt v0, v2, :cond_4

    add-int v1, v2, v5

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->j(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0202fe

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->p(Lcom/tencent/mm/ui/chatting/ChatFooter;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->r(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ChatFooter;->q(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/view/animation/ScaleAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0, v8}, Lcom/tencent/mm/ui/chatting/ChatFooter;->b(Lcom/tencent/mm/ui/chatting/ChatFooter;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->s(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0178

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v6}, Lcom/tencent/mm/ui/chatting/ChatFooter;->o(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v6}, Lcom/tencent/mm/ui/chatting/ChatFooter;->j(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0, v9}, Lcom/tencent/mm/ui/chatting/ChatFooter;->b(Lcom/tencent/mm/ui/chatting/ChatFooter;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->j(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->s(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0177

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :pswitch_2
    const-string v6, "MicroMsg.ChatFooter"

    const-string v7, "action up"

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v6, v9}, Lcom/tencent/mm/ui/chatting/ChatFooter;->a(Lcom/tencent/mm/ui/chatting/ChatFooter;Z)Z

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v6}, Lcom/tencent/mm/ui/chatting/ChatFooter;->g(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/Button;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v7}, Lcom/tencent/mm/ui/chatting/ChatFooter;->h(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v7

    const v8, 0x7f0202fa

    invoke-virtual {v7, v8}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v6}, Lcom/tencent/mm/ui/chatting/ChatFooter;->g(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/Button;

    move-result-object v6

    const v7, 0x7f0a0171

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    add-int/2addr v4, v3

    if-gt v1, v4, :cond_5

    if-lt v1, v3, :cond_5

    if-lt v0, v2, :cond_5

    add-int v1, v2, v5

    if-gt v0, v1, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->t(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdCancelRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdCancelRequest;->e()Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter$8;->a:Lcom/tencent/mm/ui/chatting/ChatFooter;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->u(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStopRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStopRequest;->b()Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
