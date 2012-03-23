.class public Lcom/tencent/mm/ui/setting/GmailAccountUI;
.super Lcom/tencent/mm/ui/MMPreference;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:Ljava/util/Map;

.field private c:Landroid/app/ProgressDialog;

.field private d:Landroid/app/AlertDialog;

.field private e:Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->c:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/GmailAccountUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->c:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/GmailAccountUI;)Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->e:Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;

    return-object v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 4

    const v3, 0x7f0a040e

    const v2, 0x7f0a0010

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->c:Landroid/app/ProgressDialog;

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    invoke-static {p0, v3, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->d:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->f()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, v3, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->d:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/GmailAccountUI;->finish()V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "gmail_account_set_account"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/GmailAccountUI;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "gmail_account_delete_account"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->e:Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;

    if-eqz v1, :cond_0

    const v1, 0x7f0a040b

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/ui/setting/GmailAccountUI$2;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/setting/GmailAccountUI$2;-><init>(Lcom/tencent/mm/ui/setting/GmailAccountUI;)V

    invoke-static {p0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->d:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d_()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/GmailAccountUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const v1, 0x7f050019

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(I)V

    const v0, 0x7f0a0408

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/GmailAccountUI;->d(I)V

    new-instance v0, Lcom/tencent/mm/ui/setting/GmailAccountUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/GmailAccountUI$1;-><init>(Lcom/tencent/mm/ui/setting/GmailAccountUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "gmail_account_image"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v2, "gmail_account_image"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "gmail_account_tip"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v2, "gmail_account_tip"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "gmail_account_myaccount"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v2, "gmail_account_myaccount"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "gmail_account_cat"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v2, "gmail_account_cat"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "gmail_account_set_account"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v2, "gmail_account_set_account"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "gmail_account_delete_account"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v2, "gmail_account_delete_account"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onDestroy()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onPause()V

    const-string v0, "MicroMsg.GmailAccount"

    const-string v1, "on pause"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onResume()V

    const-string v0, "MicroMsg.GmailAccount"

    const-string v1, "on resume"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->e:Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->e:Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v2, "gmail_account_image"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v2, "gmail_account_image"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/ImagePreference;

    if-eqz v1, :cond_6

    const v2, 0x7f020126

    :goto_1
    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/ImagePreference;->a(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v2, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v2, "gmail_account_tip"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v3, "gmail_account_tip"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v2, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_1
    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v1, "gmail_account_myaccount"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v2, "gmail_account_myaccount"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v1, "gmail_account_cat"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v2, "gmail_account_cat"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v1, "gmail_account_delete_account"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v2, "gmail_account_delete_account"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    :cond_6
    const v2, 0x7f020127

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v1, "gmail_account_set_account"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI;->b:Ljava/util/Map;

    const-string v2, "gmail_account_set_account"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    goto :goto_2
.end method
