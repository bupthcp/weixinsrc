.class public Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;
.super Lcom/tencent/mm/ui/MMPreference;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;)Lcom/tencent/mm/ui/IPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 3

    const-string v0, "com.tencent.mm_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "language_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "language_key"

    invoke-static {v0, p1}, Lcom/tencent/mm/platformtools/SystemProperty;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MicroMsg.LocaleUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save application lang as:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p0, p2}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    sget-object v0, Lcom/tencent/mm/ui/AddressUIGroup;->a:Lcom/tencent/mm/ui/AddressUIGroup;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/ui/AddressUIGroup;->a:Lcom/tencent/mm/ui/AddressUIGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressUIGroup;->finish()V

    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->finish()V

    :cond_1
    sget-object v0, Lcom/tencent/mm/ui/FindFriendUIGroup;->a:Lcom/tencent/mm/ui/FindFriendUIGroup;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/mm/ui/FindFriendUIGroup;->a:Lcom/tencent/mm/ui/FindFriendUIGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/FindFriendUIGroup;->finish()V

    :cond_2
    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MainTabUI;->finish()V

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->o()Lcom/tencent/mm/modelbase/LocalAccInfo;

    move-result-object v0

    const-string v1, ""

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->o()Lcom/tencent/mm/modelbase/LocalAccInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/modelbase/LocalAccInfo;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelbase/LocalAccInfo;->a(Ljava/lang/String;I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/MainTabUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_4
    const-string v0, "MicroMsg.LocaleUtil"

    const-string v1, "saving application lang failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "settings_notification_preference"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "settings_landscape_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->r()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "settings_landscape_mode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_3
    const-string v3, "settings_voicerecorder_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->r()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "settings_voicerecorder_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->getParent()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a01ea

    const v3, 0x7f0a0010

    new-instance v4, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$3;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$3;-><init>(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;)V

    new-instance v5, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$4;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$4;-><init>(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    const-string v3, "settings_voice_play_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->r()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "settings_voice_play_mode"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string v3, "settings_language"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->getParent()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a01e6

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    new-instance v5, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$2;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$2;-><init>(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;)V

    invoke-static {v2, v3, v1, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f05002a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a01b6

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    new-instance v0, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onResume()V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_voice_play_mode"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
