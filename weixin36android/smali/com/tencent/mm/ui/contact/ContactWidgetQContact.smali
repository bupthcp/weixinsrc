.class public Lcom/tencent/mm/ui/contact/ContactWidgetQContact;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;
.implements Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private d:Lcom/tencent/mm/storage/Contact;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/ContactWidgetQContact;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 6

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->D()Lcom/tencent/mm/modelqmsg/QContactStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->d:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelqmsg/QContactStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelqmsg/QContact;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/modelqmsg/QContact;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const-string v0, "MicroMsg.ContactWidgetQContact"

    const-string v1, "updateProfile : Qcontact is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/modelqmsg/QContact;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    const-string v1, "MicroMsg.ContactWidgetQContact"

    const-string v2, "updateProfile: QContact extInfo is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->c:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v2, "contact_info_qcontact_sex"

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->c:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v3, "contact_info_qcontact_age"

    invoke-interface {v2, v3}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->c:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v4, "contact_info_qcontact_birthday"

    invoke-interface {v3, v4}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->c:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v5, "contact_info_qcontact_address"

    invoke-interface {v4, v5}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetQContact;)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelqmsg/QContact;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    invoke-virtual {v5}, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v5}, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v5}, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v5}, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$QExtInfoContent;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->c:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 8

    const/16 v7, 0xbb8

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->a:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->a:Landroid/app/ProgressDialog;

    packed-switch p1, :pswitch_data_0

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    :cond_3
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->D()Lcom/tencent/mm/modelqmsg/QContactStorage;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->d:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelqmsg/QContactStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelqmsg/QContact;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/modelqmsg/QContact;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_6

    :cond_4
    const-string v0, "MicroMsg.ContactWidgetQContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetUpdateStatus: did not find this QContact, username = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->d:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->b()V

    goto :goto_0

    :pswitch_0
    sget-boolean v2, Lcom/tencent/mm/test/Test;->a:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->b:Landroid/content/Context;

    const v4, 0x7f0a0079

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_1
    sget-boolean v2, Lcom/tencent/mm/test/Test;->a:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->b:Landroid/content/Context;

    const v4, 0x7f0a007a

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_6
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelqmsg/QContact;->a(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelqmsg/QContact;->b(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->D()Lcom/tencent/mm/modelqmsg/QContactStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->d:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/modelqmsg/QContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/modelqmsg/QContact;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "MicroMsg.ContactWidgetQContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetUpdateStatus: update Qcontact failed, username = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->d:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(ILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->c:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_header_normal"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Lcom/tencent/mm/storage/Contact;ZI)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    if-eqz p2, :cond_6

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v3, 0x2a

    invoke-virtual {v0, v3, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->d:Lcom/tencent/mm/storage/Contact;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->c:Lcom/tencent/mm/ui/IPreferenceScreen;

    const v0, 0x7f05000c

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(I)V

    const-string v0, "contact_info_header_normal"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->a(Lcom/tencent/mm/storage/Contact;)V

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->b()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->D()Lcom/tencent/mm/modelqmsg/QContactStorage;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->d:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelqmsg/QContactStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelqmsg/QContact;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/modelqmsg/QContact;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_1
    const-string v0, "MicroMsg.ContactWidgetQContact"

    const-string v3, "getProfileOrNot: QContact is null, should not in this way"

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/modelqmsg/QContact;

    invoke-direct {v0}, Lcom/tencent/mm/modelqmsg/QContact;-><init>()V

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->d:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelqmsg/QContact;->a(Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelqmsg/QContact;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->D()Lcom/tencent/mm/modelqmsg/QContactStorage;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelqmsg/QContactStorage;->a(Lcom/tencent/mm/modelqmsg/QContact;)Z

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/modelqmsg/QContact;->d()I

    move-result v3

    if-ne v3, v1, :cond_4

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->d:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/modelqmsg/QContact;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_7

    move v0, v1

    :goto_2
    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    move v2, v1

    :cond_3
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;

    invoke-direct {v3, v2}, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;-><init>(Ljava/util/Set;)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$1;

    invoke-direct {v4, p0, v3}, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$1;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetQContact;Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->b:Landroid/content/Context;

    const v4, 0x7f0a0010

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->b:Landroid/content/Context;

    const v5, 0x7f0a0027

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$2;

    invoke-direct {v5, p0, v3}, Lcom/tencent/mm/ui/contact/ContactWidgetQContact$2;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetQContact;Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;)V

    invoke-static {v0, v2, v4, v1, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQContact;->a:Landroid/app/ProgressDialog;

    :cond_4
    return v1

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
