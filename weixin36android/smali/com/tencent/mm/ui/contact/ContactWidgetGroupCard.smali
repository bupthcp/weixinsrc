.class public Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;
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

.field private g:I

.field private h:Lcom/tencent/mm/ui/RoomInfoContPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;)Lcom/tencent/mm/ui/RoomInfoContPreference;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->h:Lcom/tencent/mm/ui/RoomInfoContPreference;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_footer_normal"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Lcom/tencent/mm/storage/Contact;ZI)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    move v0, v9

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v9

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    if-eqz p1, :cond_3

    move v0, v9

    :goto_2
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->c:Lcom/tencent/mm/storage/Contact;

    iput-boolean p3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->d:Z

    iput p4, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->e:I

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "User_Verify"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->f:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Kdel_from"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->g:I

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a()V

    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    new-instance v0, Lcom/tencent/mm/ui/RoomInfoContPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/RoomInfoContPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->h:Lcom/tencent/mm/ui/RoomInfoContPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->h:Lcom/tencent/mm/ui/RoomInfoContPreference;

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/RoomInfoContPreference;->setTitle(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->h:Lcom/tencent/mm/ui/RoomInfoContPreference;

    const-string v1, "roominfo_contact"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/RoomInfoContPreference;->setKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->h:Lcom/tencent/mm/ui/RoomInfoContPreference;

    const v1, 0x7f0300cb

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/RoomInfoContPreference;->setLayoutResource(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->h:Lcom/tencent/mm/ui/RoomInfoContPreference;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->h:Lcom/tencent/mm/ui/RoomInfoContPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->c:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v9}, Lcom/tencent/mm/ui/RoomInfoContPreference;->a(Ljava/lang/String;ZI)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->h:Lcom/tencent/mm/ui/RoomInfoContPreference;

    new-instance v1, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard$1;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/RoomInfoContPreference;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    new-instance v0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;-><init>(Landroid/content/Context;)V

    const v1, 0x7f03003e

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->setLayoutResource(I)V

    const-string v1, "contact_info_footer_normal"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->c:Lcom/tencent/mm/storage/Contact;

    iget-boolean v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->d:Z

    iget-boolean v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->f:Z

    iget v5, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->e:I

    iget v6, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->g:I

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference;->a(Lcom/tencent/mm/storage/Contact;ZZZIIZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->b:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_0
    return v9

    :cond_1
    move v0, v4

    goto/16 :goto_0

    :cond_2
    move v0, v4

    goto/16 :goto_1

    :cond_3
    move v0, v4

    goto/16 :goto_2
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const-string v0, "MicroMsg.ContactWidgetGroupCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
