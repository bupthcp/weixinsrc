.class public Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;
.super Lcom/tencent/mm/ui/MMPreference;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->b:Z

    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_update"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/IconPreference;

    const/high16 v1, 0x4234

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/IconPreference;->c(I)V

    iget-boolean v1, p0, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/IconPreference;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0029

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0202c1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/IconPreference;->a(Ljava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->notifyDataSetChanged()V

    return-void

    :cond_0
    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/IconPreference;->a(Ljava/lang/String;I)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/IconPreference;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/high16 v0, 0x7f03

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/high16 v5, 0x1000

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.SettingsAboutMicroMsgUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " item has been clicked!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settings_update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/tencent/mm/ui/Updater;->a(I)V

    sget v0, Lcom/tencent/mm/platformtools/ChannelUtil;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const-string v0, "MicroMsg.SettingsAboutMicroMsgUI"

    const-string v1, "package has set external update mode"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "market://details?id=com.tencent.mm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "MicroMsg.SettingsAboutMicroMsgUI"

    const-string v1, "parse market uri failed, jump to weixin.qq.com"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v3, "http://weixin.qq.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->startActivity(Landroid/content/Intent;)V

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_1
    const-string v0, "MicroMsg.SettingsAboutMicroMsgUI"

    const-string v3, "parse market uri ok"

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI$2;-><init>(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)V

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/Updater;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/mm/ui/Updater;

    move-result-object v0

    const/4 v1, 0x3

    new-instance v3, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI$3;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI$3;-><init>(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)V

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/ui/Updater;->a(ILcom/tencent/mm/ui/Updater$IOnUpdateEnd;)V

    move v0, v2

    goto :goto_1

    :cond_3
    const-string v1, "settings_report"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v3, 0x16

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "weixin"

    :cond_4
    if-nez v1, :cond_5

    const v1, 0x7f0a0049

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    const-wide/16 v4, -0x2

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/storage/Contact;->a(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "Chat_User"

    if-nez v0, :cond_7

    const-string v0, "weixin"

    :cond_7
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f050021

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->b:Z

    const v0, 0x7f0a01b8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_about_version"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    sget v1, Lcom/tencent/mm/protocal/ConstantsProtocal;->b:I

    invoke-static {p0, v1}, Lcom/tencent/mm/platformtools/Util;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->o()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onResume()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/setting/SettingsAboutMicroMsgUI;->o()V

    return-void
.end method
