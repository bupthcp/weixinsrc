.class public Lcom/tencent/mm/ui/contact/ContactWidgetBottleContact;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/tencent/mm/ui/IPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetBottleContact;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetBottleContact;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_friend"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/FriendPreference;->c()Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetBottleContact;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_header_normal"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetBottleContact;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_footer_normal"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a()Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Lcom/tencent/mm/storage/Contact;ZI)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    move v0, v4

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v4

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    if-eqz p1, :cond_5

    move v0, v4

    :goto_2
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetBottleContact;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {p1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a()V

    const v0, 0x7f050002

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(I)V

    const-string v0, "contact_info_header_normal"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a(Lcom/tencent/mm/storage/Contact;)V

    :cond_0
    const-string v0, "contact_info_footer_normal"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetBottleContact;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Contact_FMessageCard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v0, :cond_1

    const/16 v5, 0x19

    move-object v1, p2

    move v2, p3

    move v6, v3

    move v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a(Lcom/tencent/mm/storage/Contact;ZZZIIZZ)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    :cond_1
    const-string v0, "contact_info_signature"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/KeyValuePreference;

    invoke-virtual {p2}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/KeyValuePreference;->a(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetBottleContact;->a:Landroid/content/Context;

    const v2, 0x7f0a0264

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetBottleContact;->a:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/KeyValuePreference;->a()V

    :cond_2
    :goto_3
    return v4

    :cond_3
    move v0, v3

    goto/16 :goto_0

    :cond_4
    move v0, v3

    goto/16 :goto_1

    :cond_5
    move v0, v3

    goto/16 :goto_2

    :cond_6
    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
