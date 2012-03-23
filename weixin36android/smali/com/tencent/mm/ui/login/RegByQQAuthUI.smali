.class public Lcom/tencent/mm/ui/login/RegByQQAuthUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/widget/EditText;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->a:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->b:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/RegByQQAuthUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->a:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/RegByQQAuthUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/RegByQQAuthUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->d:Ljava/lang/String;

    return-object p1
.end method

.method private a(II)Z
    .locals 4

    const/4 v1, 0x0

    const v3, 0x7f0a00ec

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2, v1}, Lcom/tencent/mm/ui/MMErrorProcessor$CertainError;->a(Landroid/content/Context;III)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    sparse-switch p2, :sswitch_data_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_0
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/network/IDispatcher;->g()Lcom/tencent/mm/network/INetworkEvent_AIDL;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/network/INetworkEvent_AIDL;->a()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    const v1, 0x7f0a0139

    const v2, 0x7f0a0138

    invoke-static {p0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_2
    :sswitch_1
    const v1, 0x7f0a00aa

    invoke-static {p0, v1, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :sswitch_2
    const v1, 0x7f0a00ab

    invoke-static {p0, v1, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :sswitch_3
    const v1, 0x7f0a00ed

    invoke-static {p0, v1, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :sswitch_4
    const v1, 0x7f0a00ee

    invoke-static {p0, v1, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a00ef

    const v3, 0x7f0a0010

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x48 -> :sswitch_5
        -0xc -> :sswitch_3
        -0xb -> :sswitch_4
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic b(Lcom/tencent/mm/ui/login/RegByQQAuthUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/login/RegByQQAuthUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->c:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/login/RegByQQAuthUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/login/RegByQQAuthUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300c4

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 11

    const-string v0, "MicroMsg.RegByQQAuthUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneEnd: errType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->a:Landroid/app/ProgressDialog;

    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/platformtools/Util;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.tencent.mm_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "login_user_name"

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v0}, Lcom/tencent/mm/ui/MMWizardActivity;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    const-string v1, "MicroMsg.RegByQQAuthUI"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regbyqq userName :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneReg;

    move-object v1, p4

    check-cast v1, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;

    invoke-virtual {v1}, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->d:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->c:I

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneGetUserName;->f()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/tencent/mm/modelsimple/NetSceneReg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a00f5

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/login/RegByQQAuthUI$3;

    invoke-direct {v4, p0, v0}, Lcom/tencent/mm/ui/login/RegByQQAuthUI$3;-><init>(Lcom/tencent/mm/ui/login/RegByQQAuthUI;Lcom/tencent/mm/modelsimple/NetSceneReg;)V

    invoke-static {p0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->a:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->a(II)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0a007c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RegByQQ_BindUin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->c:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RegByQQ_RawPsw"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RegByQQ_Account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RegByQQ_Ticket"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RegByQQ_Nick"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->d:Ljava/lang/String;

    const-string v0, "MicroMsg.RegByQQAuthUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "values : bindUin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  pass:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ticket:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f07021a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f0a00ea

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->d(I)V

    const v0, 0x7f0a001a

    new-instance v1, Lcom/tencent/mm/ui/login/RegByQQAuthUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/login/RegByQQAuthUI$1;-><init>(Lcom/tencent/mm/ui/login/RegByQQAuthUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/login/RegByQQAuthUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/login/RegByQQAuthUI$2;-><init>(Lcom/tencent/mm/ui/login/RegByQQAuthUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/RegByQQAuthUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method
