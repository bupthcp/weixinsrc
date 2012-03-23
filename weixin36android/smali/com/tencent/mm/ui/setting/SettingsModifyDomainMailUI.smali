.class public Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/EditText;

.field private d:Lcom/tencent/mm/storage/GroupInfo;

.field private e:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;)V
    .locals 6

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneSendDomainEmail;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->d:Lcom/tencent/mm/storage/GroupInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/GroupInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelsimple/NetSceneSendDomainEmail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0208

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$4;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$4;-><init>(Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;Lcom/tencent/mm/modelsimple/NetSceneSendDomainEmail;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->e:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;)Lcom/tencent/mm/storage/GroupInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->d:Lcom/tencent/mm/storage/GroupInfo;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300db

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 4

    const-string v0, "MicroMsg.SettingsModifyDomainMailUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneEnd: sceneType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errType = "

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

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/tencent/mm/ui/MMErrorProcessor$CertainError;->a(Landroid/content/Context;III)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0209

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$5;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$5;-><init>(Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Settings_DomainMail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->b()V

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void

    :cond_1
    const v1, 0x7f0a0047

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/model/GroupInfoLogic;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/storage/GroupInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->d:Lcom/tencent/mm/storage/GroupInfo;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->d:Lcom/tencent/mm/storage/GroupInfo;

    if-nez v0, :cond_2

    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->d:Lcom/tencent/mm/storage/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->d(Ljava/lang/String;)V

    const v0, 0x7f07024a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->a:Landroid/widget/Button;

    const v0, 0x7f070249

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->b:Landroid/widget/Button;

    const v0, 0x7f070247

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->d:Lcom/tencent/mm/storage/GroupInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/GroupInfo;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f070248

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->d:Lcom/tencent/mm/storage/GroupInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/GroupInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->b:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->a:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$2;-><init>(Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$3;-><init>(Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    goto/16 :goto_0
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
