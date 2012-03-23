.class public Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;
.super Lcom/tencent/mm/ui/MMPreference;

# interfaces
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_email_addr"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const v0, 0x7f0a01d2

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0a01d1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private t()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_username"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private u()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_facebook"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "MicroMsg.SettingsAccountInfoUI"

    const-string v1, "updateFacebook Preference null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->m()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0a01cd

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v2, 0x10122

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private v()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_mobile"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "MicroMsg.SettingsAccountInfoUI"

    const-string v1, "updateMobile Preference null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "MicroMsg.SettingsAccountInfoUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_1
    const v0, 0x7f0a01cd

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private w()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_uin"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "MicroMsg.SettingsAccountInfoUI"

    const-string v1, "updateUin Preference null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0a01cd

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/algorithm/UIN;

    invoke-direct {v3, v0}, Lcom/tencent/mm/algorithm/UIN;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MicroMsg.SettingsAccountInfoUI"

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

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "settings_facebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-class v3, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a(Ljava/lang/Class;)V

    :cond_2
    const-string v3, "settings_username"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-class v3, Lcom/tencent/mm/ui/setting/SettingsAliasUI;

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a(Ljava/lang/Class;)V

    :cond_3
    const-string v3, "settings_email_addr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/setting/SettingsModifyEmailAddrUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v3, "settings_mobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/bindmobile/BindMContactIntroUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/MMWizardActivity;->a(Landroid/content/Context;Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v3, "settings_uin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/tencent/mm/ui/bindqq/BindQQUI;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/MMWizardActivity;->a(Landroid/content/Context;Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_6
    const-string v3, "settings_about_vuser_about"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "http://weixin.qq.com/cgi-bin/readtemplate?check=false&t=weixin_faq_verifyaccount&platform=android&lang=%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/platformtools/LocaleUtil;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Util;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->t()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->o()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->v()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->w()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->u()V

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f050023

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0188

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    new-instance v0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConfigStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConfigStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->t()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->v()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->w()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->o()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->u()V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_about_vusertitle"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/PluginTextPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v2, "settings_about_vuserinfo"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/setting/SelfVuserPreference;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v3, "settings_about_vuser_about"

    invoke-interface {v2, v3}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const v4, 0x10201

    invoke-virtual {v2, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/ui/PluginTextPreference;->a()V

    const v3, 0x7f0a0265

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/PluginTextPreference;->b(I)V

    invoke-static {v2}, Lcom/tencent/mm/modelgetvuserinfo/SceneGetVUserInfo;->a(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x3fc0

    invoke-static {v0, v2}, Lb/a/e;->a(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/setting/SelfVuserPreference;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v2, 0x10202

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/setting/SelfVuserPreference;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_about_domainmail"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_username"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f03008f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onResume()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v2, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAccountInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
