.class public Lcom/tencent/mm/ui/setting/SettingsAliasUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/Button;

.field private c:Lcom/tencent/mm/ui/login/RegAccountToast;

.field private d:Landroid/app/ProgressDialog;

.field private e:Lcom/tencent/mm/modelsimple/NetSceneGeneralSet;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->c:Lcom/tencent/mm/ui/login/RegAccountToast;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->d:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsAliasUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)Lcom/tencent/mm/ui/login/RegAccountToast;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->c:Lcom/tencent/mm/ui/login/RegAccountToast;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V
    .locals 5

    const v2, 0x7f0a0200

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->c:Lcom/tencent/mm/ui/login/RegAccountToast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->c:Lcom/tencent/mm/ui/login/RegAccountToast;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/login/RegAccountToast;->a()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->f:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0206

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00b1

    const v2, 0x7f0a00e9

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0201

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/tencent/mm/ui/setting/SettingsAliasUI$6;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI$6;-><init>(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->e:Lcom/tencent/mm/modelsimple/NetSceneGeneralSet;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->e:Lcom/tencent/mm/modelsimple/NetSceneGeneralSet;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_3
    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneGeneralSet;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelsimple/NetSceneGeneralSet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->e:Lcom/tencent/mm/modelsimple/NetSceneGeneralSet;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->e:Lcom/tencent/mm/modelsimple/NetSceneGeneralSet;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)Lcom/tencent/mm/modelsimple/NetSceneGeneralSet;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->e:Lcom/tencent/mm/modelsimple/NetSceneGeneralSet;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300da

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->d:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->d:Landroid/app/ProgressDialog;

    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->c()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0a0205

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->n()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x2a

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsAliasUI$7;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI$7;-><init>(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2, v1}, Lcom/tencent/mm/ui/MMErrorProcessor$CertainError;->a(Landroid/content/Context;III)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_0

    :cond_4
    move v0, v1

    goto :goto_1

    :pswitch_0
    const/4 v2, -0x7

    if-eq p2, v2, :cond_5

    const/16 v2, -0xa

    if-ne p2, v2, :cond_4

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00e8

    const v3, 0x7f0a0207

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0200

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->d(I)V

    new-instance v0, Lcom/tencent/mm/ui/login/RegAccountToast;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/login/RegAccountToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->c:Lcom/tencent/mm/ui/login/RegAccountToast;

    const v0, 0x7f070246

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->a:Landroid/widget/EditText;

    const v0, 0x7f070244

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->a:Landroid/widget/EditText;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->a:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->b:Landroid/widget/Button;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->b:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsAliasUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsAliasUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI$2;-><init>(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsAliasUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI$3;-><init>(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsAliasUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI$4;-><init>(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsAliasUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI$5;-><init>(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->c:Lcom/tencent/mm/ui/login/RegAccountToast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->c:Lcom/tencent/mm/ui/login/RegAccountToast;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/login/RegAccountToast;->a()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->e:Lcom/tencent/mm/modelsimple/NetSceneGeneralSet;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->e:Lcom/tencent/mm/modelsimple/NetSceneGeneralSet;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method
