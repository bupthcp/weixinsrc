.class Lcom/tencent/mm/ui/chatting/SmileyPanel$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/SmileyPanel;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    const/high16 v3, 0x3f80

    const v2, 0x3f99999a

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/MMFlipper;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->b(Lcom/tencent/mm/ui/chatting/SmileyPanel;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/MMFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMFlipper;->removeAllViews()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/MMFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMFlipper;->a()V

    packed-switch p2, :pswitch_data_1

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0, p2}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/MMFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMFlipper;->invalidate()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/MMFlipper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMFlipper;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/MMFlipper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMFlipper;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->b(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/MMFlipper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMFlipper;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->c(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/MMFlipper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMFlipper;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->d(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->c(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->d(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->e(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#c0c0c0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->g(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->h(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->c(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/MMFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->i(Lcom/tencent/mm/ui/chatting/SmileyPanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMFlipper;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->e(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->j(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->k(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->e(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#c0c0c0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->g(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->h(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->j(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/MMFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->l(Lcom/tencent/mm/ui/chatting/SmileyPanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMFlipper;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->e(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I

    goto/16 :goto_2

    :pswitch_6
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->m(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->n(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->e(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->g(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#c0c0c0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->h(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->m(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/MMFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->o(Lcom/tencent/mm/ui/chatting/SmileyPanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMFlipper;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->e(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I

    goto/16 :goto_2

    :pswitch_7
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->p(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->q(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->e(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->g(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->h(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;

    move-result-object v0

    const-string v1, "#c0c0c0"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->p(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/MMFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->r(Lcom/tencent/mm/ui/chatting/SmileyPanel;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMFlipper;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;->a:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->e(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x7f070291
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f070291
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
