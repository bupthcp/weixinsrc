.class public Lcom/tencent/mm/ui/login/LoginHistoryUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/app/ProgressDialog;

.field private final g:Landroid/app/AlertDialog;

.field private h:Lcom/tencent/mm/ui/SecurityImage;

.field private i:Lcom/tencent/mm/ui/login/LoginQQModel;

.field private j:Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->f:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->g:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->h:Lcom/tencent/mm/ui/SecurityImage;

    new-instance v0, Lcom/tencent/mm/ui/login/LoginQQModel;

    invoke-direct {v0}, Lcom/tencent/mm/ui/login/LoginQQModel;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->i:Lcom/tencent/mm/ui/login/LoginQQModel;

    new-instance v0, Lcom/tencent/mm/ui/login/LoginHistoryUI$5;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/login/LoginHistoryUI$5;-><init>(Lcom/tencent/mm/ui/login/LoginHistoryUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->j:Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/LoginHistoryUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->f:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/LoginHistoryUI;)Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->j:Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/login/LoginHistoryUI;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->a(Ljava/lang/Class;)V

    return-void
.end method

.method private a(II)Z
    .locals 8

    const v2, 0x7f0a011c

    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2, v0}, Lcom/tencent/mm/ui/MMErrorProcessor$CertainError;->a(Landroid/content/Context;III)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v7

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const v0, 0x7f0a011d

    invoke-static {p0, v0, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move v0, v7

    goto :goto_0

    :pswitch_2
    :try_start_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/network/IDispatcher;->g()Lcom/tencent/mm/network/INetworkEvent_AIDL;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/network/INetworkEvent_AIDL;->a()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const v0, 0x7f0a0139

    const v1, 0x7f0a0138

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    :pswitch_3
    const v0, 0x7f0a010e

    invoke-static {p0, v0, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move v0, v7

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->h:Lcom/tencent/mm/ui/SecurityImage;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00f6

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->i:Lcom/tencent/mm/ui/login/LoginQQModel;

    iget-object v2, v2, Lcom/tencent/mm/ui/login/LoginQQModel;->d:[B

    iget-object v3, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->i:Lcom/tencent/mm/ui/login/LoginQQModel;

    iget-object v3, v3, Lcom/tencent/mm/ui/login/LoginQQModel;->c:Ljava/lang/String;

    new-instance v4, Lcom/tencent/mm/ui/login/LoginHistoryUI$6;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/login/LoginHistoryUI$6;-><init>(Lcom/tencent/mm/ui/login/LoginHistoryUI;)V

    new-instance v5, Lcom/tencent/mm/ui/login/LoginHistoryUI$7;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/login/LoginHistoryUI$7;-><init>(Lcom/tencent/mm/ui/login/LoginHistoryUI;)V

    iget-object v6, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->i:Lcom/tencent/mm/ui/login/LoginQQModel;

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/SecurityImage$Builder;->a(Landroid/content/Context;I[BLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;)Lcom/tencent/mm/ui/SecurityImage;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->h:Lcom/tencent/mm/ui/SecurityImage;

    :goto_1
    move v0, v7

    goto :goto_0

    :cond_3
    const-string v0, "MicroMsg.LoginHistoryUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imgSid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->i:Lcom/tencent/mm/ui/login/LoginQQModel;

    iget-object v2, v2, Lcom/tencent/mm/ui/login/LoginQQModel;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " img len"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->i:Lcom/tencent/mm/ui/login/LoginQQModel;

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

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->h:Lcom/tencent/mm/ui/SecurityImage;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->i:Lcom/tencent/mm/ui/login/LoginQQModel;

    iget-object v1, v1, Lcom/tencent/mm/ui/login/LoginQQModel;->d:[B

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->i:Lcom/tencent/mm/ui/login/LoginQQModel;

    iget-object v2, v2, Lcom/tencent/mm/ui/login/LoginQQModel;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/SecurityImage;->b([BLjava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/tencent/mm/ui/login/LoginHistoryUI;)Lcom/tencent/mm/ui/login/LoginQQModel;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->i:Lcom/tencent/mm/ui/login/LoginQQModel;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/login/LoginHistoryUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/login/LoginHistoryUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/login/LoginHistoryUI;)Lcom/tencent/mm/ui/SecurityImage;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->h:Lcom/tencent/mm/ui/SecurityImage;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/login/LoginHistoryUI;)Lcom/tencent/mm/ui/SecurityImage;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->h:Lcom/tencent/mm/ui/SecurityImage;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f03005f

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "MicroMsg.LoginHistoryUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSceneEnd: errType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errMsg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.LoginHistoryUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scene Type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->f:Landroid/app/ProgressDialog;

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

    if-ne v0, v2, :cond_6

    iget-object v3, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->i:Lcom/tencent/mm/ui/login/LoginQQModel;

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneAuth;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneAuth;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/mm/ui/login/LoginQQModel;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->i:Lcom/tencent/mm/ui/login/LoginQQModel;

    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneAuth;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneAuth;->d()[B

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/ui/login/LoginQQModel;->d:[B

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    const/16 v0, -0x10

    if-eq p2, v0, :cond_3

    const/16 v0, -0x11

    if-ne p2, v0, :cond_6

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->o()Lcom/tencent/mm/modelbase/LocalAccInfo;

    move-result-object v0

    const-string v3, ""

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->a()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modelbase/LocalAccInfo;->a(Ljava/lang/String;I)V

    move v0, v2

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

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {p0}, Lcom/tencent/mm/ui/login/PostLoginUtil;->a(Landroid/app/Activity;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->finish()V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->a(II)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0a007b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->e()V

    const v0, 0x7f0a0117

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->d(I)V

    const-string v0, "com.tencent.mm_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "login_user_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f070141

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->a:Landroid/widget/TextView;

    const v0, 0x7f070142

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->b:Landroid/widget/EditText;

    const v0, 0x7f070143

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->c:Landroid/widget/Button;

    const v0, 0x7f070145

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->d:Landroid/widget/Button;

    const v0, 0x7f070144

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->a:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0110

    new-instance v1, Lcom/tencent/mm/ui/login/LoginHistoryUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/login/LoginHistoryUI$1;-><init>(Lcom/tencent/mm/ui/login/LoginHistoryUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->e:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/login/LoginHistoryUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/login/LoginHistoryUI$2;-><init>(Lcom/tencent/mm/ui/login/LoginHistoryUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->c:Landroid/widget/Button;

    new-instance v2, Lcom/tencent/mm/ui/login/LoginHistoryUI$3;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/login/LoginHistoryUI$3;-><init>(Lcom/tencent/mm/ui/login/LoginHistoryUI;Lcom/tencent/mm/ui/login/ForgetPassMenuSelector;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->d:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/login/LoginHistoryUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/login/LoginHistoryUI$4;-><init>(Lcom/tencent/mm/ui/login/LoginHistoryUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->g:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/LauncherUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "can_finish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
