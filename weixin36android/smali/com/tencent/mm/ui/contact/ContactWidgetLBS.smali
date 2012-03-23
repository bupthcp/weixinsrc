.class public Lcom/tencent/mm/ui/contact/ContactWidgetLBS;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;
.implements Lcom/tencent/mm/ui/contact/ContactInfoUI$IBodyWidget;


# static fields
.field private static h:Z


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/mm/storage/Contact;

.field private d:Landroid/app/ProgressDialog;

.field private e:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/CheckBox;

.field private i:Ljava/util/Map;

.field private j:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

.field private k:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->h:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->k:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    new-instance v0, Lcom/tencent/mm/ui/contact/LBSHelper;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/contact/LBSHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->j:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    const v0, 0x7f03005a

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->f:Landroid/view/View;

    const v1, 0x7f070137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->g:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->g:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->d:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;Lcom/tencent/mm/modelsimple/NetSceneLbsFind;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->e:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    return-object p1
.end method

.method public static a(Landroid/content/Context;ZLcom/tencent/mm/ui/MListAdapter;)V
    .locals 4

    if-eqz p1, :cond_0

    const v0, 0x7f0a01a8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-boolean p1, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->h:Z

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$6;

    invoke-direct {v1, p1, p2}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$6;-><init>(ZLcom/tencent/mm/ui/MListAdapter;)V

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$7;

    invoke-direct {v3, v0, v1}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$7;-><init>(Landroid/app/ProgressDialog;Landroid/os/Handler;)V

    const-wide/16 v0, 0x5dc

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :cond_0
    const v0, 0x7f0a01a9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->g:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public static b()V
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v8

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    const/4 v1, 0x2

    const-string v6, ""

    const-string v7, ""

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;-><init>(IFFIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->e:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v2, "contact_info_header_helper"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v2, "contact_info_header_helper"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->c:Lcom/tencent/mm/storage/Contact;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->j:Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a(Lcom/tencent/mm/storage/Contact;Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v2, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_0
    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v1, "contact_info_lbs_install"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v2, "contact_info_lbs_install"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v1, "contact_info_lbs_go_lbs"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v2, "contact_info_lbs_go_lbs"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v1, "contact_info_lbs_hide_cat"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v2, "contact_info_lbs_hide_cat"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v1, "contact_info_lbs_clear_info"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v2, "contact_info_lbs_clear_info"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v1, "contact_info_lbs_hide_cat2"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v2, "contact_info_lbs_hide_cat2"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v1, "contact_info_lbs_uninstall"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v2, "contact_info_lbs_uninstall"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->e:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    if-nez v0, :cond_1

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->f()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "MicroMsg.ContactWidgetLBS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneEnd: errType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v4, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->d:Landroid/app/ProgressDialog;

    :cond_2
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    const v0, 0x7f0a03c8

    :goto_1
    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;->f()I

    move-result v1

    if-ne v1, v3, :cond_0

    sget-boolean v1, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$8;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$8;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)V

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    iput-object v4, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->e:Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    goto :goto_0

    :cond_3
    const v0, 0x7f0a03c9

    goto :goto_1
.end method

.method public final a(ILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConfigStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    const-string v0, "MicroMsg.ContactWidgetLBS"

    const-string v1, "listener removed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v1, "contact_info_header_helper"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Lcom/tencent/mm/storage/Contact;ZI)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    if-eqz p2, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->w(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConfigStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    const-string v0, "MicroMsg.ContactWidgetLBS"

    const-string v2, "listener added"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->c:Lcom/tencent/mm/storage/Contact;

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    sput-boolean v1, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->h:Z

    const v0, 0x7f050008

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(I)V

    const-string v0, "contact_info_header_helper"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v3, "contact_info_header_helper"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "contact_info_lbs_go_lbs"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v3, "contact_info_lbs_go_lbs"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "contact_info_lbs_hide_cat"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v3, "contact_info_lbs_hide_cat"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "contact_info_lbs_clear_info"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v3, "contact_info_lbs_clear_info"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "contact_info_lbs_hide_cat2"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v3, "contact_info_lbs_hide_cat2"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "contact_info_lbs_install"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v3, "contact_info_lbs_install"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "contact_info_lbs_uninstall"

    invoke-interface {p1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->i:Ljava/util/Map;

    const-string v3, "contact_info_lbs_uninstall"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->c()V

    return v1

    :cond_8
    move v0, v2

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "MicroMsg.ContactWidgetLBS"

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
    const-string v2, "contact_info_lbs_go_lbs"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x1007

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    const-class v4, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/SelfPersonCard;->b()Lcom/tencent/mm/model/SelfPersonCard;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    const-class v4, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/mm/model/SelfPersonCard;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/model/SelfPersonCard;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/model/SelfPersonCard;->d()I

    move-result v0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    const-class v4, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v2, 0x1008

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    const-class v4, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->k:Landroid/app/AlertDialog;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->f:Landroid/view/View;

    new-instance v4, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$2;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$2;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)V

    new-instance v5, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$3;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$3;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)V

    invoke-static {v0, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->k:Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->k:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_9
    const-string v2, "contact_info_lbs_install"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->a(Landroid/content/Context;ZLcom/tencent/mm/ui/MListAdapter;)V

    move v0, v1

    goto/16 :goto_0

    :cond_a
    const-string v2, "contact_info_lbs_clear_info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    const v2, 0x7f0a03c7

    const v3, 0x7f0a03c6

    new-instance v4, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$4;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$4;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)V

    new-instance v5, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$5;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$5;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)V

    invoke-static {v0, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move v0, v1

    goto/16 :goto_0

    :cond_b
    const-string v2, "contact_info_lbs_uninstall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->b:Landroid/content/Context;

    const v4, 0x7f0a01aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    new-instance v5, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$1;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS$1;-><init>(Lcom/tencent/mm/ui/contact/ContactWidgetLBS;)V

    invoke-static {v2, v3, v0, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    move v0, v1

    goto/16 :goto_0

    :cond_c
    const-string v1, "MicroMsg.ContactWidgetLBS"

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

    const-string v0, "7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "34"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/contact/ContactWidgetLBS;->c()V

    :cond_1
    return-void
.end method
