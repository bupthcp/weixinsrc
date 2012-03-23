.class public Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->a:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->a:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->a(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300bc

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0701f4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0701f6

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0701f5

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "type"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->a:I

    iget v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->a:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_0

    const v3, 0x7f0a006c

    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->d(I)V

    const v3, 0x7f02024a

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a049a

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a049c

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    new-instance v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI$1;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    new-instance v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI$2;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a0013

    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI$3;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void

    :cond_0
    const v3, 0x7f0a006f

    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->d(I)V

    const v3, 0x7f02024b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a049b

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method
