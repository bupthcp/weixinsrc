.class public Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;
.super Lcom/tencent/mm/ui/MMPreference;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    return-void
.end method

.method private h(I)V
    .locals 7

    const/16 v2, 0x2008

    const/16 v6, 0x16

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput p1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->b:I

    iget v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->b:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->b:I

    if-nez v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->b:I

    if-ne v0, v4, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x2009

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x2010

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;

    invoke-direct {v1, v4, v6, v5}, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;-><init>(ZII)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->o()V

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x2009

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x2010

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;

    invoke-direct {v1, v4, v3, v3}, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;-><init>(ZII)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;

    invoke-direct {v1}, Lcom/tencent/mm/storage/OpLogStorage$OpModDisturbSetting;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    goto :goto_0
.end method

.method private o()V
    .locals 6

    const v5, 0x7f03008e

    const v4, 0x7f03008d

    const v3, 0x7f030076

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a()V

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a01df

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    const-string v1, "settings_plugings_disturb_on"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->b:I

    if-nez v1, :cond_0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a01e0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    const-string v1, "settings_plugings_disturb_on_night"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a01e1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    const-string v1, "settings_plugings_disturb_off"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    :goto_2
    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a01e2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    const v1, 0x7f030089

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings_plugings_disturb_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->h(I)V

    :cond_0
    const-string v1, "settings_plugings_disturb_on_night"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->h(I)V

    :cond_1
    const-string v1, "settings_plugings_disturb_off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->h(I)V

    :cond_2
    return v2
.end method

.method public final d_()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->o()I

    move-result v2

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->p()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->b:I

    :goto_1
    const-string v0, "ui.settings.SettingsPlugingsNotify"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "st "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->b:I

    iput v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->b:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const v0, 0x7f0a01de

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->d(I)V

    new-instance v0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->b:I

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onResume()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsPluginsNotifyUI;->o()V

    return-void
.end method
