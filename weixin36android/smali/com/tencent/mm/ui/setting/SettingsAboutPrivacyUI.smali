.class public Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;
.super Lcom/tencent/mm/ui/MMPreference;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:Landroid/content/SharedPreferences;

.field private c:I

.field private d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->d:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;II)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a(ZII)Z

    move-result v0

    return v0
.end method

.method private a(ZII)Z
    .locals 4

    const/4 v1, 0x1

    const-string v0, "MicroMsg.SettingsAboutPrivacyUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch change : open = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " item value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " functionId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->c:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->c:I

    :goto_0
    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->d:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->c:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->c:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private h(I)Z
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->c:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static o()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9

    const/16 v8, 0x2000

    const/16 v7, 0xc

    const/16 v6, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MicroMsg.SettingsAboutPrivacyUI"

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

    const-string v3, "settings_need_verify"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->b:Landroid/content/SharedPreferences;

    const-string v2, "settings_need_verify"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a(ZII)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v3, "settings_recommend_to_QQfriends"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->b:Landroid/content/SharedPreferences;

    const-string v3, "settings_recommend_to_QQfriends"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    const/16 v1, 0x10

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a(ZII)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    const-string v3, "settings_find_me_by_QQ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->b:Landroid/content/SharedPreferences;

    const-string v3, "settings_find_me_by_QQ"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    const/4 v1, 0x2

    invoke-direct {p0, v0, v6, v1}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a(ZII)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    const-string v3, "settings_find_me_by_mobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->b:Landroid/content/SharedPreferences;

    const-string v3, "settings_find_me_by_mobile"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_3
    const/16 v1, 0x200

    invoke-direct {p0, v0, v1, v6}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a(ZII)Z

    move-result v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_3

    :cond_6
    const-string v3, "settings_add_friend_by_reply"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->b:Landroid/content/SharedPreferences;

    const-string v3, "settings_add_friend_by_reply"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_4
    const/16 v1, 0x400

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a(ZII)Z

    move-result v0

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    const-string v3, "settings_weixin_qq_online"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->h(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0, v0, v8, v7}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a(ZII)Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0277

    const v3, 0x7f0a0010

    new-instance v4, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$2;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$2;-><init>(Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;)V

    new-instance v5, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$3;

    invoke-direct {v5, p0, p2}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$3;-><init>(Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;Landroid/preference/CheckBoxPreference;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v1, v8, v7}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a(ZII)Z

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f050022

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a01ae

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v0, "com.tencent.mm_preferences"

    invoke-virtual {p0, v0, v5}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->b:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->c:I

    const-string v0, "MicroMsg.SettingsAboutPrivacyUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init function status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_need_verify"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->h(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v2, "settings_recommend_to_QQfriends"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v3, "settings_find_me_by_QQ"

    invoke-interface {v2, v3}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v6, "settings_weixin_qq_online"

    invoke-interface {v3, v6}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->h(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v4

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->h(I)Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v2, "settings_find_me_by_mobile"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->h(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    :goto_3
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_add_friend_by_reply"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->h(I)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_5
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0, v3}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_3
    move v0, v5

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_5
    move v4, v5

    goto :goto_5
.end method

.method public onDestroy()V
    .locals 0

    invoke-static {}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->o()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 6

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onPause()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v1, 0x7

    iget v2, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/storage/OpLogStorage$OpFunctionSwitch;

    invoke-direct {v4, v1, v0}, Lcom/tencent/mm/storage/OpLogStorage$OpFunctionSwitch;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    const-string v3, "MicroMsg.SettingsAboutPrivacyUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switch  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->o()V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
