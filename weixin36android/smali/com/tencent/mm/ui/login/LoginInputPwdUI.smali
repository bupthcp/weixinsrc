.class public Lcom/tencent/mm/ui/login/LoginInputPwdUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private final b:Landroid/app/AlertDialog;

.field private c:Lcom/tencent/mm/ui/SecurityImage;

.field private d:Lcom/tencent/mm/ui/login/LoginQQModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->a:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->b:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->c:Lcom/tencent/mm/ui/SecurityImage;

    new-instance v0, Lcom/tencent/mm/ui/login/LoginQQModel;

    invoke-direct {v0}, Lcom/tencent/mm/ui/login/LoginQQModel;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->d:Lcom/tencent/mm/ui/login/LoginQQModel;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/LoginInputPwdUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->a:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/LoginInputPwdUI;)Lcom/tencent/mm/ui/login/LoginQQModel;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->d:Lcom/tencent/mm/ui/login/LoginQQModel;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/login/LoginInputPwdUI;)Lcom/tencent/mm/ui/SecurityImage;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->c:Lcom/tencent/mm/ui/SecurityImage;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/login/LoginInputPwdUI;)Lcom/tencent/mm/ui/SecurityImage;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->c:Lcom/tencent/mm/ui/SecurityImage;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030060

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 9

    const v3, 0x7f0a011c

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v0, "MicroMsg.LoginInputPwdUI"

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

    const-string v0, "MicroMsg.LoginInputPwdUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scene Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->a:Landroid/app/ProgressDialog;

    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/platformtools/Util;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    if-ne v0, v7, :cond_c

    iget-object v1, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->d:Lcom/tencent/mm/ui/login/LoginQQModel;

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneAuth;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneAuth;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/ui/login/LoginQQModel;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->d:Lcom/tencent/mm/ui/login/LoginQQModel;

    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneAuth;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneAuth;->d()[B

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/login/LoginQQModel;->d:[B

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    const/16 v0, -0x10

    if-eq p2, v0, :cond_3

    const/16 v0, -0x11

    if-ne p2, v0, :cond_c

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->o()Lcom/tencent/mm/modelbase/LocalAccInfo;

    move-result-object v0

    const-string v1, ""

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelbase/LocalAccInfo;->a(Ljava/lang/String;I)V

    move v0, v7

    :goto_1
    if-nez v0, :cond_4

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x1012

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/tencent/mm/ui/login/PostLoginUtil;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->d:Lcom/tencent/mm/ui/login/LoginQQModel;

    iget-object v0, v0, Lcom/tencent/mm/ui/login/LoginQQModel;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/login/PostLoginUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->finish()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, v8}, Lcom/tencent/mm/ui/MMErrorProcessor$CertainError;->a(Landroid/content/Context;III)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v7

    :goto_2
    if-nez v0, :cond_1

    const v0, 0x7f0a007b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    packed-switch p1, :pswitch_data_0

    :cond_7
    move v0, v8

    goto :goto_2

    :pswitch_0
    const/4 v0, -0x3

    if-eq p2, v0, :cond_8

    const/4 v0, -0x4

    if-ne p2, v0, :cond_9

    :cond_8
    const v0, 0x7f0a010e

    invoke-static {p0, v0, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move v0, v7

    goto :goto_2

    :cond_9
    const/16 v0, -0x9

    if-ne p2, v0, :cond_a

    const v0, 0x7f0a011d

    invoke-static {p0, v0, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move v0, v7

    goto :goto_2

    :cond_a
    const/4 v0, -0x6

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->c:Lcom/tencent/mm/ui/SecurityImage;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00f6

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->d:Lcom/tencent/mm/ui/login/LoginQQModel;

    iget-object v2, v2, Lcom/tencent/mm/ui/login/LoginQQModel;->d:[B

    iget-object v3, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->d:Lcom/tencent/mm/ui/login/LoginQQModel;

    iget-object v3, v3, Lcom/tencent/mm/ui/login/LoginQQModel;->c:Ljava/lang/String;

    new-instance v4, Lcom/tencent/mm/ui/login/LoginInputPwdUI$4;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI$4;-><init>(Lcom/tencent/mm/ui/login/LoginInputPwdUI;)V

    new-instance v5, Lcom/tencent/mm/ui/login/LoginInputPwdUI$5;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI$5;-><init>(Lcom/tencent/mm/ui/login/LoginInputPwdUI;)V

    iget-object v6, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->d:Lcom/tencent/mm/ui/login/LoginQQModel;

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/SecurityImage$Builder;->a(Landroid/content/Context;I[BLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;)Lcom/tencent/mm/ui/SecurityImage;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->c:Lcom/tencent/mm/ui/SecurityImage;

    :goto_3
    move v0, v7

    goto :goto_2

    :cond_b
    const-string v0, "MicroMsg.LoginInputPwdUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imgSid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->d:Lcom/tencent/mm/ui/login/LoginQQModel;

    iget-object v2, v2, Lcom/tencent/mm/ui/login/LoginQQModel;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " img len"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->d:Lcom/tencent/mm/ui/login/LoginQQModel;

    iget-object v2, v2, Lcom/tencent/mm/ui/login/LoginQQModel;->d:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->c:Lcom/tencent/mm/ui/SecurityImage;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->d:Lcom/tencent/mm/ui/login/LoginQQModel;

    iget-object v1, v1, Lcom/tencent/mm/ui/login/LoginQQModel;->d:[B

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->d:Lcom/tencent/mm/ui/login/LoginQQModel;

    iget-object v2, v2, Lcom/tencent/mm/ui/login/LoginQQModel;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/SecurityImage;->b([BLjava/lang/String;)V

    goto :goto_3

    :cond_c
    move v0, v8

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->d:Lcom/tencent/mm/ui/login/LoginQQModel;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "login_mobilephone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/login/LoginQQModel;->a:Ljava/lang/String;

    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->d(I)V

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->e()V

    const v0, 0x7f070146

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f070144

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI$1;-><init>(Lcom/tencent/mm/ui/login/LoginInputPwdUI;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070143

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/tencent/mm/ui/login/LoginInputPwdUI$2;

    invoke-direct {v2, p0, v1}, Lcom/tencent/mm/ui/login/LoginInputPwdUI$2;-><init>(Lcom/tencent/mm/ui/login/LoginInputPwdUI;Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/mm/ui/login/LoginInputPwdUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI$3;-><init>(Lcom/tencent/mm/ui/login/LoginInputPwdUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginInputPwdUI;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method
