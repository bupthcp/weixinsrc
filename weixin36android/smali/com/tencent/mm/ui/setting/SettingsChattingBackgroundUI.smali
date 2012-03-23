.class public Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;
.super Lcom/tencent/mm/ui/MMPreference;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    return-void
.end method

.method private c(Z)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "default"

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MicroMsg.SettingsChattingBackgroundUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item has been clicked!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "settings_chatting_bg_select_bg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "isApplyToAll"

    iget-boolean v3, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->b:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "username"

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "settings_chatting_bg_select_from_album"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v1, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    const-string v3, "settings_chatting_bg_take_photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Lcom/tencent/mm/storage/ConstantsStorage;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "microMsg."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/mm/platformtools/CameraUtil;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0a00c5

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-string v3, "settings_chatting_bg_apply_to_all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->c()Landroid/content/Context;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    const v4, 0x7f0a0221

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI$2;-><init>(Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;)V

    invoke-static {v2, v6, v3, v6, v1}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f05001e

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMPreference;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "MicroMsg.SettingsChattingBackgroundUI"

    const-string v1, "settings handle"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->setResult(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->finish()V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    if-eqz p3, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CropImage_bBackground"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CropImage_bg_vertical"

    invoke-direct {p0, v4}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->c(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CropImage_bg_horizontal"

    invoke-direct {p0, v5}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->c(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v6}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/tencent/mm/platformtools/CameraUtil;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CropImage_bBackground"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CropImage_bg_vertical"

    invoke-direct {p0, v4}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->c(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CropImage_bg_horizontal"

    invoke-direct {p0, v5}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->c(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v6}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :pswitch_2
    if-ne p2, v3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x10504

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->b:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x3017

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :goto_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->T()Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->a(I)Z

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->V()Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelpackage/ChattingBgInfo;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/tencent/mm/modelpackage/ChattingBgInfo;

    invoke-direct {v1}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->a(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;->a(Lcom/tencent/mm/modelpackage/ChattingBgInfo;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v3}, Lcom/tencent/mm/modelpackage/ChattingBgInfo;->a(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelpackage/ChattingBgInfoStorage;->b(Lcom/tencent/mm/modelpackage/ChattingBgInfo;)Z

    goto :goto_2

    :pswitch_3
    if-eq p2, v3, :cond_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0197

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isApplyToAll"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->b:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_chatting_bg_apply_to_all"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->c:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsChattingBackgroundUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onDestroy()V

    return-void
.end method
