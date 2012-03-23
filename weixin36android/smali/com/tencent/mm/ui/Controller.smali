.class Lcom/tencent/mm/ui/Controller;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/mm/ui/MMImageButton;

.field private b:Lcom/tencent/mm/ui/MMImageButton;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/LinearLayout;

.field private final g:Lcom/tencent/mm/ui/MMActivity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/Controller;->b:Lcom/tencent/mm/ui/MMImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/Controller;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/Controller;->d:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/Controller;->e:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/Controller;->f:Landroid/widget/LinearLayout;

    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    iput-object v0, p0, Lcom/tencent/mm/ui/Controller;->g:Lcom/tencent/mm/ui/MMActivity;

    const v0, 0x7f070189

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f070186

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/Controller;->b:Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f070185

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/Controller;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f070187

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/Controller;->d:Landroid/widget/ImageView;

    const v0, 0x7f070188

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/Controller;->e:Landroid/widget/ImageView;

    const v0, 0x7f070124

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/Controller;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->g:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/mm/ui/Controller;->a(Ljava/lang/Object;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMImageButton;->setVisibility(I)V

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/MMImageButton;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/MMImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->b:Lcom/tencent/mm/ui/MMImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->b:Lcom/tencent/mm/ui/MMImageButton;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->b:Lcom/tencent/mm/ui/MMImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMImageButton;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMImageButton;->a(I)V

    goto :goto_1
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/Controller;->g:Lcom/tencent/mm/ui/MMActivity;

    iget-object v2, p0, Lcom/tencent/mm/ui/Controller;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, p1, v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/MMImageButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->g:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/tencent/mm/ui/Controller;->b(Ljava/lang/Object;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->b:Lcom/tencent/mm/ui/MMImageButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->b:Lcom/tencent/mm/ui/MMImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMImageButton;->setVisibility(I)V

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->b:Lcom/tencent/mm/ui/MMImageButton;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/MMImageButton;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->b:Lcom/tencent/mm/ui/MMImageButton;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/MMImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMImageButton;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->b:Lcom/tencent/mm/ui/MMImageButton;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->b:Lcom/tencent/mm/ui/MMImageButton;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMImageButton;->a(I)V

    goto :goto_1
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->c:Landroid/widget/TextView;

    const v1, 0x7f02022d

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->g:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/Controller;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/Controller;->a:Lcom/tencent/mm/ui/MMImageButton;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/MMImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method
