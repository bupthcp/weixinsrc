.class public Lcom/tencent/mm/ui/setting/SettingsNotificationUI;
.super Lcom/tencent/mm/ui/MMPreference;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    return-void
.end method

.method private c(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_sound"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_shake"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MicroMsg.SettingsNotificationUI"

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

    const-string v3, "settings_new_msg_notification"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->c(Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "settings_sound"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "settings_shake"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->b:Landroid/content/SharedPreferences;

    const-string v3, "settings_shake"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    const-string v3, "settings_fully_exit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "settings_active_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string v0, "settings_plugings_notify"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a(Landroid/content/Intent;)V

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f050026

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a01d7

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v0, "com.tencent.mm_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_new_msg_notification"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->b:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->c(Z)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_sound"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->b:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_shake"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->b:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    new-instance v0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsNotificationUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onResume()V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->b:Landroid/content/SharedPreferences;

    const-string v1, "settings_active_begin_time_hour"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->b:Landroid/content/SharedPreferences;

    const-string v2, "settings_active_begin_time_min"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->b:Landroid/content/SharedPreferences;

    const-string v3, "settings_active_end_time_hour"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->b:Landroid/content/SharedPreferences;

    const-string v4, "settings_active_end_time_min"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v0, v2, :cond_0

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings_active_time_full"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNotificationUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->notifyDataSetChanged()V

    return-void
.end method
