.class public Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;
.super Lcom/tencent/mm/ui/MMPreference;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->b:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->b:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->b:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;)V
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a03bb

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$4;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$4;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;)V

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "settings_district"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v1, Lcom/tencent/mm/ui/tools/CitySelectUI;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->a(Ljava/lang/Class;)V

    :goto_0
    return v0

    :cond_0
    const-string v2, "settings_signature"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/tencent/mm/ui/setting/EditSignatureUI;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->a(Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f05001c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a03b9

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_signature"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/KeyValuePreference;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/KeyValuePreference;->a(Z)V

    new-instance v0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$1;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$2;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_sex"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/ChoicePreference;

    new-instance v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$3;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/ChoicePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v2, "settings_sex"

    invoke-interface {v0, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/ChoicePreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0a01c9

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<font color=\'red\'>*</font>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/ChoicePreference;->setTitle(Ljava/lang/CharSequence;)V

    packed-switch v1, :pswitch_data_0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/ChoicePreference;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "male"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/ChoicePreference;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "female"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/ChoicePreference;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x3005

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x3004

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v3, "settings_district"

    invoke-interface {v2, v3}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0a01ca

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<font color=\'red\'>*</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_signature"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x3003

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    const v0, 0x7f0a0195

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v2, -0x2

    invoke-static {p0, v0, v2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onResume()V

    return-void
.end method
