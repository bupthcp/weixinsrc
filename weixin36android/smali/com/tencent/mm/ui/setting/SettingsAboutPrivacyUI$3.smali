.class Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/preference/CheckBoxPreference;

.field private synthetic b:Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$3;->b:Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$3;->a:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$3;->a:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$3;->b:Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->notifyDataSetChanged()V

    return-void
.end method
