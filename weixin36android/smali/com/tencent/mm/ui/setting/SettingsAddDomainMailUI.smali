.class public Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;)V
    .locals 6

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneSendDomainEmail;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelsimple/NetSceneSendDomainEmail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0208

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI$3;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI$3;-><init>(Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;Lcom/tencent/mm/modelsimple/NetSceneSendDomainEmail;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->b:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300d9

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 6

    const v5, 0x7f0a0010

    const/4 v2, 0x1

    const/4 v0, 0x0

    const-string v1, "MicroMsg.SettingsAddEmailForJobUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSceneEnd: sceneType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errType = "

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

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->b:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->b:Landroid/app/ProgressDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->c()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2, v0}, Lcom/tencent/mm/ui/MMErrorProcessor$CertainError;->a(Landroid/content/Context;III)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    packed-switch p2, :pswitch_data_1

    :goto_2
    move v0, v2

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0a0213

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->c()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v0}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    goto :goto_2

    :pswitch_2
    const v1, 0x7f0a0210

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_3
    const v0, 0x7f0a020e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0211

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :pswitch_4
    const v1, 0x7f0a0212

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0209

    new-instance v2, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI$4;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI$4;-><init>(Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;)V

    invoke-static {v0, v1, v5, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a020c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->d(I)V

    const v0, 0x7f070242

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->a:Landroid/widget/EditText;

    const v0, 0x7f0a0017

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a0015

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI$2;-><init>(Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SettingsAddDomainMailUI;->b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method
