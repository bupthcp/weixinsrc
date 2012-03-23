.class public Lcom/tencent/mm/ui/contact/ContactWidgetVerify;
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


# virtual methods
.method public final a(ILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_header_vertfy"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_footer_normal"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a()Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->i:Ljava/util/Map;

    const-string v1, "clear_lbs_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->b()Z

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Lcom/tencent/mm/storage/Contact;ZI)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz p2, :cond_7

    move v0, v9

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    move v0, v9

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    if-eqz p1, :cond_9

    move v0, v9

    :goto_2
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->c:Lcom/tencent/mm/storage/Contact;

    iput-boolean p3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->d:Z

    iput p4, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->e:I

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "User_Verify"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->f:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_IsLBSFriend"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->g:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Kdel_from"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->h:I

    const v0, 0x7f050016

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(I)V

    const-string v0, "contact_info_header_vertfy"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->i:Ljava/util/Map;

    const-string v2, "contact_info_header_vertfy"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "contact_info_footer_normal"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->i:Ljava/util/Map;

    const-string v2, "contact_info_footer_normal"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/mm/storage/Contact;->Q()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_from_msgType"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_Uin"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_Mobile_MD5"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Contact_full_Mobile_MD5"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->i:Ljava/util/Map;

    const-string v1, "contact_info_header_vertfy"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->c:Lcom/tencent/mm/storage/Contact;

    iget v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->e:I

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/mm/ui/contact/VerifyUserHeaderPreference;->a(Lcom/tencent/mm/storage/Contact;IIJLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->i:Ljava/util/Map;

    const-string v1, "contact_info_footer_normal"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "User_From_Fmessage"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Contact_FMessageCard"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->a:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Contact_KHideExpose"

    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->c:Lcom/tencent/mm/storage/Contact;

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->d:Z

    iget-boolean v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->f:Z

    iget-boolean v4, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->g:Z

    iget v5, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->e:I

    iget v6, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->h:I

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a(Lcom/tencent/mm/storage/Contact;ZZZIIZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->i:Ljava/util/Map;

    const-string v1, "clear_lbs_info_cat"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->i:Ljava/util/Map;

    const-string v1, "clear_lbs_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;->a()Z

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_6
    return v9

    :cond_7
    move v0, v10

    goto/16 :goto_0

    :cond_8
    move v0, v10

    goto/16 :goto_1

    :cond_9
    move v0, v10

    goto/16 :goto_2

    :pswitch_0
    const-string v0, "clear_lbs_info"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/LbsUserFooterInfoPreference;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->i:Ljava/util/Map;

    const-string v2, "clear_lbs_info"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "clear_lbs_info_cat"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->i:Ljava/util/Map;

    const-string v2, "clear_lbs_info_cat"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

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

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->c:Lcom/tencent/mm/storage/Contact;

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

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->a:Landroid/content/Context;

    const v3, 0x7f0a0263

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "zoom"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "vertical_scroll"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetVerify;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return v4
.end method
