.class public Lcom/tencent/mm/ui/setting/SettingsPluginsUI;
.super Lcom/tencent/mm/ui/MMPreference;

# interfaces
.implements Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->b:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->c:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->d:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->e:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "display_in_addr_book"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const/16 v3, 0x23

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p2, Lcom/tencent/mm/ui/PluginPreference;

    if-eqz v2, :cond_0

    check-cast p2, Lcom/tencent/mm/ui/PluginPreference;

    invoke-virtual {p2}, Lcom/tencent/mm/ui/PluginPreference;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "qqmail"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->b:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    const v4, -0x7a0013a0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_2
    const-string v3, "readerapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->c:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    const v4, -0x7a00139f

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_3
    const-string v3, "blogapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->d:Z

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    const v4, -0x7a00139e

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_4
    const-string v3, "masssendapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->e:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    const v4, -0x7a00139d

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_5
    const-string v3, "facebookapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->f:Z

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v3

    const v4, -0x7a00139c

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->c()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "Contact_User"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "settings_plugins_list_#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/PluginPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/PluginPreference;->c()V

    :cond_0
    return-void
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f050029

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const v0, 0x7f0a019b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->d(I)V

    new-instance v0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsPluginsUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onPause()V

    const-string v0, "MicroMsg.SettingsPluginsUI"

    const-string v1, "on pause"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 10

    const v9, 0x7f0202c1

    const/16 v8, 0x8

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onResume()V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/tencent/mm/ui/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "qqmail"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Lcom/tencent/mm/ui/PluginPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_f

    move v0, v1

    :goto_0
    if-eqz v0, :cond_10

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v6, -0x7a0013a0

    invoke-virtual {v0, v6}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->b:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->b:Z

    if-eqz v0, :cond_11

    invoke-virtual {v5, v2}, Lcom/tencent/mm/ui/PluginPreference;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v6, 0x7f0a0029

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v9}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;I)V

    :cond_0
    :goto_2
    new-instance v0, Lcom/tencent/mm/ui/PluginPreference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v5, "fmessage"

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/ui/PluginPreference;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/ContactStorageLogic;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v5, Lcom/tencent/mm/ui/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "tmessage"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Lcom/tencent/mm/ui/PluginPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_12

    move v0, v1

    :goto_3
    if-eqz v0, :cond_13

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_4
    new-instance v5, Lcom/tencent/mm/ui/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "qmessage"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/tencent/mm/ui/PluginPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_14

    move v0, v1

    :goto_5
    if-eqz v0, :cond_15

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_6
    new-instance v0, Lcom/tencent/mm/ui/PluginPreference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v5, "qqsync"

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/ui/PluginPreference;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->j()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_7
    new-instance v5, Lcom/tencent/mm/ui/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "floatbottle"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Lcom/tencent/mm/ui/PluginPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_17

    move v0, v1

    :goto_8
    if-eqz v0, :cond_18

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_9
    new-instance v5, Lcom/tencent/mm/ui/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "lbsapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Lcom/tencent/mm/ui/PluginPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_19

    move v0, v1

    :goto_a
    if-eqz v0, :cond_1a

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_b
    new-instance v5, Lcom/tencent/mm/ui/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "shakeapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v5}, Lcom/tencent/mm/ui/PluginPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_1b

    move v0, v1

    :goto_c
    if-eqz v0, :cond_1c

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_d
    new-instance v5, Lcom/tencent/mm/ui/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "medianote"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v5}, Lcom/tencent/mm/ui/PluginPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1d

    move v0, v1

    :goto_e
    if-eqz v0, :cond_1e

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_f
    new-instance v5, Lcom/tencent/mm/ui/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "readerapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v5}, Lcom/tencent/mm/ui/PluginPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_1f

    move v0, v1

    :goto_10
    if-eqz v0, :cond_20

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v6, -0x7a00139f

    invoke-virtual {v0, v6}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->c:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->c:Z

    if-eqz v0, :cond_21

    invoke-virtual {v5, v2}, Lcom/tencent/mm/ui/PluginPreference;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v6, 0x7f0a0029

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v9}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;I)V

    :cond_9
    :goto_12
    new-instance v5, Lcom/tencent/mm/ui/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "blogapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v5}, Lcom/tencent/mm/ui/PluginPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    const/high16 v6, 0x4

    and-int/2addr v0, v6

    if-nez v0, :cond_22

    invoke-static {}, Lcom/tencent/mm/model/ContactStorageLogic;->d()Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v1

    :goto_13
    if-eqz v0, :cond_23

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_14
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v6, -0x7a00139e

    invoke-virtual {v0, v6}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->d:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->d:Z

    if-eqz v0, :cond_24

    invoke-virtual {v5, v2}, Lcom/tencent/mm/ui/PluginPreference;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v6, 0x7f0a0029

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v9}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;I)V

    :cond_a
    :goto_15
    new-instance v5, Lcom/tencent/mm/ui/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "facebookapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v5}, Lcom/tencent/mm/ui/PluginPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_25

    move v0, v1

    :goto_16
    if-eqz v0, :cond_26

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_17
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v6, -0x7a00139c

    invoke-virtual {v0, v6}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->f:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->f:Z

    if-eqz v0, :cond_27

    invoke-virtual {v5, v2}, Lcom/tencent/mm/ui/PluginPreference;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v6, 0x7f0a0029

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v9}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;I)V

    :cond_b
    :goto_18
    new-instance v5, Lcom/tencent/mm/ui/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "qqfriend"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v5}, Lcom/tencent/mm/ui/PluginPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_28

    move v0, v1

    :goto_19
    if-eqz v0, :cond_29

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_1a
    new-instance v5, Lcom/tencent/mm/ui/PluginPreference;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;)V

    const-string v0, "masssendapp"

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v5}, Lcom/tencent/mm/ui/PluginPreference;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    const/high16 v6, 0x1

    and-int/2addr v0, v6

    if-nez v0, :cond_2a

    move v0, v1

    :goto_1b
    if-eqz v0, :cond_2b

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1c
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, -0x7a00139d

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->e:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->e:Z

    if-eqz v0, :cond_2c

    invoke-virtual {v5, v2}, Lcom/tencent/mm/ui/PluginPreference;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v9}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;I)V

    :cond_d
    :goto_1d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/tencent/mm/ui/PluginTextPreference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/PluginTextPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020278

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/PluginTextPreference;->a(I)V

    const v1, 0x7f0a01a2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/PluginTextPreference;->b(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/PluginPreference;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/PluginPreference;->a(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v2, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    goto :goto_1e

    :cond_f
    move v0, v2

    goto/16 :goto_0

    :cond_10
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v5, v8}, Lcom/tencent/mm/ui/PluginPreference;->b(I)V

    const-string v0, ""

    invoke-virtual {v5, v0, v7}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_12
    move v0, v2

    goto/16 :goto_3

    :cond_13
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_14
    move v0, v2

    goto/16 :goto_5

    :cond_15
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_16
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_17
    move v0, v2

    goto/16 :goto_8

    :cond_18
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_19
    move v0, v2

    goto/16 :goto_a

    :cond_1a
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_1b
    move v0, v2

    goto/16 :goto_c

    :cond_1c
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_1d
    move v0, v2

    goto/16 :goto_e

    :cond_1e
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_1f
    move v0, v2

    goto/16 :goto_10

    :cond_20
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_21
    invoke-virtual {v5, v8}, Lcom/tencent/mm/ui/PluginPreference;->b(I)V

    const-string v0, ""

    invoke-virtual {v5, v0, v7}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;I)V

    goto/16 :goto_12

    :cond_22
    move v0, v2

    goto/16 :goto_13

    :cond_23
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_24
    invoke-virtual {v5, v8}, Lcom/tencent/mm/ui/PluginPreference;->b(I)V

    const-string v0, ""

    invoke-virtual {v5, v0, v7}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;I)V

    goto/16 :goto_15

    :cond_25
    move v0, v2

    goto/16 :goto_16

    :cond_26
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :cond_27
    invoke-virtual {v5, v8}, Lcom/tencent/mm/ui/PluginPreference;->b(I)V

    const-string v0, ""

    invoke-virtual {v5, v0, v7}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;I)V

    goto/16 :goto_18

    :cond_28
    move v0, v2

    goto/16 :goto_19

    :cond_29
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_2a
    move v0, v2

    goto/16 :goto_1b

    :cond_2b
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c

    :cond_2c
    invoke-virtual {v5, v8}, Lcom/tencent/mm/ui/PluginPreference;->b(I)V

    const-string v0, ""

    invoke-virtual {v5, v0, v7}, Lcom/tencent/mm/ui/PluginPreference;->a(Ljava/lang/String;I)V

    goto/16 :goto_1d

    :cond_2d
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Lcom/tencent/mm/ui/PluginTextPreference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/PluginTextPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020279

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/PluginTextPreference;->a(I)V

    const v1, 0x7f0a01a3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/PluginTextPreference;->b(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_2e
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/PluginPreference;

    const/16 v2, 0x88

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/PluginPreference;->a(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v2, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    goto :goto_1f

    :cond_2f
    new-instance v0, Lcom/tencent/mm/ui/PluginTextPreference;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/PluginTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/PluginTextPreference;->a()V

    const v1, 0x7f0a01a4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/PluginTextPreference;->b(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f030076

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setLayoutResource(I)V

    const v0, 0x7f0a025a

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    const-string v0, "display_in_addr_book"

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsPluginsUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    const-string v0, "MicroMsg.SettingsPluginsUI"

    const-string v1, "on resume"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
