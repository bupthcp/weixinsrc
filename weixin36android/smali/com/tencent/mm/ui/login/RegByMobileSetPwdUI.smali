.class public Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300c3

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a00fe

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->d(I)V

    const v0, 0x7f070217

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->a:Landroid/widget/EditText;

    const v0, 0x7f070218

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->b:Landroid/widget/EditText;

    const v0, 0x7f0a001a

    new-instance v1, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$1;-><init>(Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a001b

    new-instance v1, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI$2;-><init>(Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;->b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method
