.class Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:[I

.field private synthetic f:Lcom/tencent/mm/ui/tools/WhatsNewUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/tools/WhatsNewUI;Lcom/tencent/mm/ui/tools/WhatsNewUI;)V
    .locals 2

    const/4 v1, 0x6

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->f:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->b:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->c:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->d:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->e:[I

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    const v0, 0x7f0702ce

    invoke-virtual {p1, v0}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->a(Lcom/tencent/mm/ui/tools/WhatsNewUI;Landroid/view/View;)Landroid/view/View;

    invoke-static {p1}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->d(Lcom/tencent/mm/ui/tools/WhatsNewUI;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0702cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->b(Lcom/tencent/mm/ui/tools/WhatsNewUI;Landroid/view/View;)Landroid/view/View;

    invoke-static {p1}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->d(Lcom/tencent/mm/ui/tools/WhatsNewUI;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0702d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->c(Lcom/tencent/mm/ui/tools/WhatsNewUI;Landroid/view/View;)Landroid/view/View;

    return-void

    :array_0
    .array-data 0x4
        0x8t 0x1t 0x3t 0x7ft
        0xat 0x1t 0x3t 0x7ft
        0x9t 0x1t 0x3t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x1at 0x4t 0xat 0x7ft
        0x1ct 0x4t 0xat 0x7ft
        0x1et 0x4t 0xat 0x7ft
        0x20t 0x4t 0xat 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1bt 0x4t 0xat 0x7ft
        0x1dt 0x4t 0xat 0x7ft
        0x1ft 0x4t 0xat 0x7ft
        0x21t 0x4t 0xat 0x7ft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x3t 0x2t 0x7ft
        0x3t 0x3t 0x2t 0x7ft
        0x4t 0x3t 0x2t 0x7ft
        0x5t 0x3t 0x2t 0x7ft
        0x6t 0x3t 0x2t 0x7ft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->e:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->e:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    if-lt p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance p2, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->getItemViewType(I)I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->b:[I

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->getItemViewType(I)I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->getItemViewType(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->e:[I

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    const-string v0, "MicroMsg.WhatsNewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->d:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->d:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0702d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->c:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0702d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->d:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->getItemViewType(I)I

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
