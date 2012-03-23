.class public Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;
.super Lcom/tencent/mm/ui/MMPreference;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0300e6

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const v4, 0x7f0a0347

    const v3, 0x7f0a0010

    const/16 v2, 0x9

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "share_micromsg_qqwb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "show_to"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {p0, v4, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    const-string v1, "share_micromsg_qzone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "show_to"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-static {p0, v4, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    const-string v1, "share_micromsg_to_sina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "show_to"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v1, "share_micromsg_to_fuckbook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "show_to"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f05002c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a033a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    new-instance v0, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI$1;-><init>(Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "share_micromsg_to_sina"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    const v1, 0x7f020297

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v3, "share_micromsg_qqwb"

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v2, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v2, "share_micromsg_qzone"

    invoke-interface {v0, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "share_micromsg_to_fuckbook"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->l()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f020296

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_2
    const v2, 0x7f020294

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    const v1, 0x7f02026f

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/IconPreference;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    goto :goto_3
.end method
