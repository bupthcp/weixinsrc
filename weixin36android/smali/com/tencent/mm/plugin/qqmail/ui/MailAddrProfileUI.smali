.class public Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;
.super Lcom/tencent/mm/ui/MMPreference;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mail_compose_btn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "composeType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "toList"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->finish()V

    :cond_0
    return v5
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f05001b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "can_compose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->d:Z

    const v0, 0x7f0a030a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "mail_receiver_info_name"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/KeyValuePreference;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "mail_receiver_info_addr"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/KeyValuePreference;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "addr"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "mail_compose_btn"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->d:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    :cond_0
    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI$1;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method
