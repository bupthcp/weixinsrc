.class public Lcom/tencent/mm/ui/setting/EditSignatureUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/EditSignatureUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/EditSignatureUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->a:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f03004c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0191

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->d(I)V

    const v0, 0x7f070117

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->a:Landroid/widget/EditText;

    const v0, 0x7f070118

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->a:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x1e

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/setting/EditSignatureUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/EditSignatureUI$1;-><init>(Lcom/tencent/mm/ui/setting/EditSignatureUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x3003

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/EditSignatureUI;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0015

    new-instance v1, Lcom/tencent/mm/ui/setting/EditSignatureUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/EditSignatureUI$2;-><init>(Lcom/tencent/mm/ui/setting/EditSignatureUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a0017

    new-instance v1, Lcom/tencent/mm/ui/setting/EditSignatureUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/EditSignatureUI$3;-><init>(Lcom/tencent/mm/ui/setting/EditSignatureUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/EditSignatureUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method
