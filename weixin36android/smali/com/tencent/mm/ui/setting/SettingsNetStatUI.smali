.class public Lcom/tencent/mm/ui/setting/SettingsNetStatUI;
.super Lcom/tencent/mm/ui/MMPreference;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->o()V

    return-void
.end method

.method private o()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->G()Lcom/tencent/mm/modelstat/NetStatStorage;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->b:J

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/NetStatStorage;->c(I)Lcom/tencent/mm/modelstat/NetStatInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/modelstat/NetStatInfo;

    invoke-direct {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;-><init>()V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->G()Lcom/tencent/mm/modelstat/NetStatStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modelstat/NetStatStorage;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->b:J

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v2, "settings_netstat_info"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0a0081

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->b:J

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a01eb

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v2, "settings_netstat_mobile"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->z()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->n()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v2, "settings_netstat_wifi"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->A()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatInfo;->o()I

    move-result v0

    add-int/2addr v0, v2

    int-to-long v2, v0

    invoke-static {p0, v2, v3}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_netstat_mobile_detail"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/setting/NetStatPreference;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/setting/NetStatPreference;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_netstat_wifi_detail"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/setting/NetStatPreference;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/ui/setting/NetStatPreference;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f050025

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a01ee

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->G()Lcom/tencent/mm/modelstat/NetStatStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatStorage;->a()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->G()Lcom/tencent/mm/modelstat/NetStatStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelstat/NetStatStorage;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->b:J

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_netstat_info"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0a0081

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->b:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a01eb

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a01ef

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/setting/SettingsNetStatUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI$2;-><init>(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onResume()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->o()V

    return-void
.end method
