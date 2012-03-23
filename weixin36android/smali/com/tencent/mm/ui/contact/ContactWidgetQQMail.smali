.class public Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;
.implements Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;


# static fields
.field private static k:Z


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/tencent/mm/storage/Contact;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private final g:Ljava/util/Map;

.field private h:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

.field private i:Landroid/app/ProgressDialog;

.field private j:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    new-instance v0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->h:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->j:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a(Z)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;Z)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x11

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v1

    if-eqz p1, :cond_2

    and-int/lit8 v15, v1, -0x2

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x22

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v20

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;

    const/16 v2, 0x800

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const-string v16, ""

    const/16 v17, 0x0

    const-string v18, ""

    const/16 v19, 0x0

    invoke-direct/range {v1 .. v19}, Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    if-nez p1, :cond_1

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->b()V

    :cond_1
    return-void

    :cond_2
    or-int/lit8 v15, v1, 0x1

    goto :goto_0
.end method

.method private a(Z)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    const v1, 0x7f0a01a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v4, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->i:Landroid/app/ProgressDialog;

    sput-boolean v4, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->k:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->h:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    check-cast v0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$QQMailHelper;->a(Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    const v1, 0x7f0a01a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->j:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static b()V
    .locals 2

    const-string v0, "qqmail"

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->d(Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    const-string v1, "qqmail"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->i:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;)Landroid/app/ProgressDialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->i:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d()Z
    .locals 1

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic e()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->k:Z

    return v0
.end method

.method private static f()Z
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->d:Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->e:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_header_helper"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_header_helper"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->b:Lcom/tencent/mm/storage/Contact;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->h:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a(Lcom/tencent/mm/storage/Contact;Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_qqmailhelper_install"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v2, "contact_info_qqmailhelper_install"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->e:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_qqmailhelper_view"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v2, "contact_info_qqmailhelper_view"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_qqmailhelper_hide_cat4"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v2, "contact_info_qqmailhelper_hide_cat4"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_qqmailhelper_compose"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v2, "contact_info_qqmailhelper_compose"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_qqmailhelper_hide_cat"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v2, "contact_info_qqmailhelper_hide_cat"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_qqmailhelper_recv_remind"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_qqmailhelper_recv_remind"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->e:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_8
    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->e:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_qqmailhelper_set_files_view"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v2, "contact_info_qqmailhelper_set_files_view"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_qqmailhelper_hide_cat2"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v2, "contact_info_qqmailhelper_hide_cat2"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_qqmailhelper_clear_data"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v2, "contact_info_qqmailhelper_clear_data"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_qqmailhelper_hide_cat3"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v2, "contact_info_qqmailhelper_hide_cat3"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_c
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_qqmailhelper_uninstall"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v2, "contact_info_qqmailhelper_uninstall"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConfigStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v1, "contact_info_header_helper"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->i:Landroid/app/ProgressDialog;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->j:Landroid/app/ProgressDialog;

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Lcom/tencent/mm/storage/Contact;ZI)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    if-eqz p2, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->g(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConfigStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    iput-boolean p3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->c:Z

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->b:Lcom/tencent/mm/storage/Contact;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    const v0, 0x7f05000f

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(I)V

    const-string v0, "contact_info_header_helper"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v3, "contact_info_header_helper"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "contact_info_qqmailhelper_view"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v3, "contact_info_qqmailhelper_view"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "contact_info_qqmailhelper_hide_cat4"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v3, "contact_info_qqmailhelper_hide_cat4"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "contact_info_qqmailhelper_compose"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v3, "contact_info_qqmailhelper_compose"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "contact_info_qqmailhelper_set_files_view"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v3, "contact_info_qqmailhelper_set_files_view"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "contact_info_qqmailhelper_hide_cat"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v3, "contact_info_qqmailhelper_hide_cat"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "contact_info_qqmailhelper_recv_remind"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v3, "contact_info_qqmailhelper_recv_remind"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v0, "contact_info_qqmailhelper_hide_cat2"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v3, "contact_info_qqmailhelper_hide_cat2"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v0, "contact_info_qqmailhelper_clear_data"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v3, "contact_info_qqmailhelper_clear_data"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v0, "contact_info_qqmailhelper_hide_cat3"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_a

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v3, "contact_info_qqmailhelper_hide_cat3"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const-string v0, "contact_info_qqmailhelper_install"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v3, "contact_info_qqmailhelper_install"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const-string v0, "contact_info_qqmailhelper_uninstall"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g:Ljava/util/Map;

    const-string v3, "contact_info_qqmailhelper_uninstall"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g()V

    return v1

    :cond_d
    move v0, v2

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, -0x1

    const/high16 v5, 0x400

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "MicroMsg.ContactWidgetQQMail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEvent : key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    const-string v0, "contact_info_qqmailhelper_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "Chat_User"

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Chat_Mode"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string v0, "Chat_User"

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Chat_Mode"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const-string v0, "contact_info_qqmailhelper_compose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->c:Z

    if-eqz v0, :cond_3

    const-string v0, "Chat_User"

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Chat_Mode"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "Chat_User"

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->b:Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Chat_Mode"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    const-string v0, "contact_info_qqmailhelper_set_files_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v3, 0x1d

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "title"

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    const v5, 0x7f0a0252

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "zoom"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "vertical_scroll"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    const-class v1, Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_5
    const-string v0, "contact_info_qqmailhelper_recv_remind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->f:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0, p1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iget-object v4, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->h:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    invoke-interface {v4, v3}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;->a(Z)Z

    if-nez v3, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "contact_info_qqmailhelper_clear_data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a024e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    new-instance v5, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$1;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$1;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;)V

    invoke-static {v1, v3, v0, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_8
    const-string v0, "contact_info_qqmailhelper_install"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a(Z)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "contact_info_qqmailhelper_uninstall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->a:Landroid/content/Context;

    const v4, 0x7f0a01aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    new-instance v5, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$2;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail$2;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;)V

    invoke-static {v1, v3, v0, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_a
    const-string v0, "MicroMsg.ContactWidgetQQMail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent : unExpected key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_0
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 1

    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "34"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "17"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQMail;->g()V

    :cond_1
    return-void
.end method
