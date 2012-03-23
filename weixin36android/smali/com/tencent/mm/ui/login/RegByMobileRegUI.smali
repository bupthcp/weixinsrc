.class public Lcom/tencent/mm/ui/login/RegByMobileRegUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/CheckBox;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->h:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->l:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/RegByMobileRegUI;Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->h:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/RegByMobileRegUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/RegByMobileRegUI;Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/RegByMobileRegUI;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "bindmcontact_mobile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_sync_addr"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "regbymobile_ticket"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/login/RegByMobileSetPwdUI;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->m:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->h:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "bindmcontact_mobile"

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bindmcontact_shortmobile"

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "country_name"

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "couttry_code"

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/login/RegByMobileVerifyUI;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300c1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "country_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->i:Ljava/lang/String;

    const-string v0, "couttry_code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->j:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f0a00e3

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "country_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "couttry_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bindmcontact_shortmobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "login_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->m:I

    const v0, 0x7f070212

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->a:Landroid/widget/EditText;

    const v0, 0x7f070041

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->c:Landroid/widget/TextView;

    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->d:Landroid/widget/TextView;

    const v0, 0x7f070213

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->e:Landroid/widget/CheckBox;

    const v0, 0x7f070215

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->k:Landroid/widget/Button;

    const v0, 0x7f070144

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->l:Landroid/widget/Button;

    const v0, 0x7f0a00fb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->d(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->j:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f070214

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/login/RegByMobileRegUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI$1;-><init>(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->e:Landroid/widget/CheckBox;

    new-instance v1, Lcom/tencent/mm/ui/login/RegByMobileRegUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI$2;-><init>(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tencent/mm/ui/login/RegByMobileRegUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI$3;-><init>(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->m:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->k:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    new-instance v0, Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->k:Landroid/widget/Button;

    new-instance v2, Lcom/tencent/mm/ui/login/RegByMobileRegUI$4;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI$4;-><init>(Lcom/tencent/mm/ui/login/RegByMobileRegUI;Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->l:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI$5;-><init>(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0014

    new-instance v1, Lcom/tencent/mm/ui/login/RegByMobileRegUI$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI$6;-><init>(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void

    :cond_4
    iget v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->k:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->k:Landroid/widget/Button;

    const v1, 0x7f0a011e

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->h:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->h:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->a()V

    :cond_0
    return-void
.end method
