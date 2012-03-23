.class public Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->a:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300dd

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a01f7

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->d(I)V

    const v0, 0x7f07024c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/MMEditText$MixedWordCountTextWatcher;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->a:Landroid/widget/EditText;

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMEditText$MixedWordCountTextWatcher;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0017

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a0015

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI$2;-><init>(Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SettingsModifyNameUI;->b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method
