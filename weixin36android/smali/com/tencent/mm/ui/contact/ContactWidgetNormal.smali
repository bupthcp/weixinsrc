.class public Lcom/tencent/mm/ui/contact/ContactWidgetNormal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private c:Lcom/tencent/mm/storage/Contact;

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_friend"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/FriendPreference;->c()Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_facebook"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/FriendPreference;->c()Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_header_normal"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_footer_normal"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a()Z

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "clear_lbs_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->b()Z

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Lcom/tencent/mm/storage/Contact;ZI)Z
    .locals 9

    if-eqz p2, :cond_1b

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    iput-boolean p3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->d:Z

    iput p4, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->e:I

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "User_Verify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->f:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_IsLBSFriend"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->g:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Kdel_from"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->h:I

    const v0, 0x7f05000b

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(I)V

    const-string v0, "contact_info_header_normal"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_header_normal"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "contact_info_footer_normal"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_footer_normal"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/mm/storage/Contact;->Q()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_3
    const-string v0, "contact_info_district"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_district"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "contact_info_weibo"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_weibo"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "contact_info_facebook"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_facebook"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "contact_info_signature"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_signature"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "contact_info_verifyuser"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_verifyuser"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v0, "contact_info_source"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_source"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "contact_info_domainmail_cat"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_domainmail_cat"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "contact_info_friend_cat"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_friend_cat"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "contact_info_domainmail"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_domainmail"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v0, "contact_info_friend"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_friend"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "contact_info_header_normal"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a(Lcom/tencent/mm/storage/Contact;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_d
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->L()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->L()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_district"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/KeyValuePreference;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    const v2, 0x7f0a0262

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/KeyValuePreference;->a()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    const/4 v0, 0x1

    move v1, v0

    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_signature"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/KeyValuePreference;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->a(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    const v2, 0x7f0a0264

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/KeyValuePreference;->a()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    const/4 v1, 0x1

    :cond_f
    const-string v0, "MicroMsg.ContactWidgetNormal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact Widght Normal weiboFlag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->T()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " weibo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->S()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->g(Lcom/tencent/mm/storage/Contact;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_weibo"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/KeyValuePreference;

    if-eqz v0, :cond_10

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->S()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->S()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->U()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    const v3, 0x7f0a018e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v6}, Lcom/tencent/mm/storage/Contact;->S()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/mm/model/ContactStorageLogic;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/KeyValuePreference;->a()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    const/4 v1, 0x1

    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->R()I

    move-result v0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1f

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_source"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/KeyValuePreference;

    if-eqz v0, :cond_11

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->a(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    const v2, 0x7f0a0268

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    const v2, 0x7f0a0269

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/KeyValuePreference;->a()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    const/4 v1, 0x1

    :cond_11
    move v8, v1

    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->v()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "contact_info_facebook"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v6}, Lcom/tencent/mm/storage/Contact;->v()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mm/ui/contact/FriendPreference;->a(Lcom/tencent/mm/storage/Contact;Ljava/lang/String;JLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_12
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_Mobile_MD5"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_Uin"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_QQNick"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "contact_info_friend"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mm/ui/contact/FriendPreference;->a(Lcom/tencent/mm/storage/Contact;Ljava/lang/String;JLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "contact_info_friend_cat"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_13
    const/4 v0, 0x1

    :goto_5
    if-nez v0, :cond_15

    const-string v0, "MicroMsg.ContactWidgetNormal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDomainMail : domainmail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_24

    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_14

    const/4 v8, 0x1

    :cond_14
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/AddrUpload;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->h()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->b()Ljava/lang/String;

    move-result-object v2

    :goto_7
    if-eqz v2, :cond_27

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "contact_info_friend"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mm/ui/contact/FriendPreference;->a(Lcom/tencent/mm/storage/Contact;Ljava/lang/String;JLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "contact_info_friend_cat"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_15
    :goto_8
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "contact_info_verifyuser"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/KeyValuePreference;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->a(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    const v2, 0x7f0a0265

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->N()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/mm/modelgetvuserinfo/SceneGetVUserInfo;->a(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x3fc0

    invoke-static {v1, v2}, Lb/a/e;->a(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/KeyValuePreference;->b(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->O()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/KeyValuePreference;->a()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    const/4 v8, 0x1

    :cond_16
    if-eqz v8, :cond_17

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "contact_info_domainmail_cat"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_17
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "contact_info_footer_normal"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "User_From_Fmessage"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Contact_FMessageCard"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Contact_KHideExpose"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->d:Z

    iget-boolean v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->f:Z

    iget-boolean v4, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->g:Z

    iget v5, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->e:I

    iget v6, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->h:I

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a(Lcom/tencent/mm/storage/Contact;ZZZIIZZ)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_18
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "clear_lbs_info_cat"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_19
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "clear_lbs_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->a()Z

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_1a
    const/4 v0, 0x1

    return v0

    :cond_1b
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_2

    :pswitch_0
    const-string v0, "clear_lbs_info"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "clear_lbs_info"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    const-string v0, "clear_lbs_info_cat"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "clear_lbs_info_cat"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_1f
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->R()I

    move-result v0

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_21

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_source"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/KeyValuePreference;

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->a(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    const v2, 0x7f0a0268

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020253

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    const v2, 0x7f0a0350

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/KeyValuePreference;->a()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    const/4 v1, 0x1

    :cond_20
    move v8, v1

    goto/16 :goto_4

    :cond_21
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->R()I

    move-result v0

    const/16 v2, 0x15

    if-eq v0, v2, :cond_22

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->R()I

    move-result v0

    const/16 v2, 0x16

    if-eq v0, v2, :cond_22

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->R()I

    move-result v0

    const/16 v2, 0x17

    if-eq v0, v2, :cond_22

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->R()I

    move-result v0

    const/16 v2, 0x18

    if-eq v0, v2, :cond_22

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->R()I

    move-result v0

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_22

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->R()I

    move-result v0

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_22

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->R()I

    move-result v0

    const/16 v2, 0x1c

    if-eq v0, v2, :cond_22

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->R()I

    move-result v0

    const/16 v2, 0x1d

    if-ne v0, v2, :cond_29

    :cond_22
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v2, "contact_info_source"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/KeyValuePreference;

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->a(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    const v2, 0x7f0a0268

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    const v2, 0x7f0a026a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/KeyValuePreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/ui/KeyValuePreference;->a()V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    const/4 v1, 0x1

    move v8, v1

    goto/16 :goto_4

    :cond_23
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_24
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "contact_info_domainmail"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/DomainMailListPreference;

    if-nez v0, :cond_25

    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_25
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    const v2, 0x7f0a025d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/DomainMailListPreference;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    const/4 v0, 0x1

    goto/16 :goto_6

    :cond_26
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_27
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->q()Lcom/tencent/mm/modelfriend/QQListStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/QQListStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelfriend/QQList;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQList;->d()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    move-object v5, v0

    :goto_9
    if-eqz v5, :cond_15

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "contact_info_friend"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    const/4 v2, 0x0

    invoke-virtual {v5}, Lcom/tencent/mm/modelfriend/QQList;->c()J

    move-result-wide v3

    invoke-virtual {v5}, Lcom/tencent/mm/modelfriend/QQList;->i()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mm/ui/contact/FriendPreference;->a(Lcom/tencent/mm/storage/Contact;Ljava/lang/String;JLjava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "contact_info_friend_cat"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    goto/16 :goto_8

    :cond_28
    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_9

    :cond_29
    move v8, v1

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "contact_info_weibo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->S()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://t.qq.com/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://t.qq.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "title"

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    const v3, 0x7f0a0263

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "zoom"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "vertical_scroll"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return v4

    :cond_2
    const-string v0, "contact_info_friend"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->i:Ljava/util/Map;

    const-string v1, "contact_info_friend"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/FriendPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/FriendPreference;->a()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/FriendPreference;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetNormal;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
