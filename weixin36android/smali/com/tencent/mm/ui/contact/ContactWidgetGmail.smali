.class public Lcom/tencent/mm/ui/contact/ContactWidgetGmail;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;
.implements Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/mm/storage/Contact;

.field private d:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->b:Landroid/content/Context;

    new-instance v0, Lcom/tencent/mm/ui/contact/GmailHelper;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/contact/GmailHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->d:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/ContactWidgetGmail;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;ZLcom/tencent/mm/ui/MListAdapter;)V
    .locals 4

    if-eqz p1, :cond_0

    const v0, 0x7f0a01a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/contact/ContactWidgetGmail$2;

    invoke-direct {v1, p1, p2}, Lcom/tencent/mm/ui/contact/ContactWidgetGmail$2;-><init>(ZLcom/tencent/mm/ui/MListAdapter;)V

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/tencent/mm/ui/contact/ContactWidgetGmail$3;

    invoke-direct {v3, v0, v1}, Lcom/tencent/mm/ui/contact/ContactWidgetGmail$3;-><init>(Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    const-wide/16 v0, 0x5dc

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_0
    const v0, 0x7f0a01a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const v2, 0x7f050007

    invoke-interface {v0, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v2, "contact_info_header_helper"

    invoke-interface {v0, v2}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->c:Lcom/tencent/mm/storage/Contact;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->d:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a(Lcom/tencent/mm/storage/Contact;Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;)V

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_gmail_view"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_gmail_account"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_gmail_recv_mail"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_gmail_uninstall"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Ljava/lang/String;)Z

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_gmail_install"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_gmail_view"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_gmail_account"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_gmail_recv_mail"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->b(Ljava/lang/String;)Z

    goto :goto_1
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConfigStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "contact_info_header_helper"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a()V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Lcom/tencent/mm/storage/Contact;ZI)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->B(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    if-eqz p1, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConfigStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->c:Lcom/tencent/mm/storage/Contact;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->b()V

    return v1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "MicroMsg.ContactWidgetGmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEvent : key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v2, "contact_info_gmail_view"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "Chat_User"

    const-string v3, "gmailapp"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->b:Landroid/content/Context;

    const-class v3, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v2, "contact_info_gmail_account"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->b:Landroid/content/Context;

    const-class v3, Lcom/tencent/mm/ui/setting/GmailAccountUI;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "contact_info_gmail_recv_mail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0, p1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->d:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    invoke-interface {v2, v0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;->a(Z)Z

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v2, "contact_info_gmail_install"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->a(Landroid/content/Context;ZLcom/tencent/mm/ui/MListAdapter;)V

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v2, "contact_info_gmail_uninstall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->b:Landroid/content/Context;

    const v4, 0x7f0a01aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    new-instance v5, Lcom/tencent/mm/ui/contact/ContactWidgetGmail$1;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/ContactWidgetGmail$1;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetGmail;)V

    invoke-static {v2, v3, v0, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    move v0, v1

    goto/16 :goto_0

    :cond_5
    const-string v1, "MicroMsg.ContactWidgetGmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent : unExpected key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 1

    const-string v0, "34"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/ContactWidgetGmail;->b()V

    :cond_0
    return-void
.end method
