.class Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$4;->a:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$4;->a:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->r()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings_voicerecorder_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$4;->a:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;)Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    const-string v1, "settings_voicerecorder_mode"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$4;->a:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;)Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->notifyDataSetChanged()V

    return-void
.end method
