.class public Lcom/tencent/mm/ui/setting/PersonalPreference;
.super Landroid/preference/Preference;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/graphics/Bitmap;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/tencent/mm/ui/MMActivity;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->a:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->c:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->d:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->e:Landroid/graphics/Bitmap;

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->i:Lcom/tencent/mm/ui/MMActivity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->a:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->c:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->d:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->e:Landroid/graphics/Bitmap;

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->i:Lcom/tencent/mm/ui/MMActivity;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->e:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->i:Lcom/tencent/mm/ui/MMActivity;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->k:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/PersonalPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0039

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/PersonalPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0039

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f070177

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0701af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->i:Lcom/tencent/mm/ui/MMActivity;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0701b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->g:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->b:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/PersonalPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0039

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f0701b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->d:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/PersonalPreference;->h:Ljava/lang/String;

    goto :goto_0
.end method
