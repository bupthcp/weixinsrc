.class public Lcom/tencent/mm/ui/facebook/FacebookAuthUI;
.super Lcom/tencent/mm/ui/MMPreference;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# static fields
.field private static a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

.field private c:Landroid/app/ProgressDialog;

.field private d:Landroid/content/DialogInterface$OnCancelListener;

.field private e:Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;

.field private f:Z

.field private g:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private final h:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "offline_access"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "publish_stream"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->c:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->e:Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;)Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->e:Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->d:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->c:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)Lcom/tencent/mm/ui/facebook/sdk/Facebook;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->b:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    return-object v0
.end method

.method private o()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a()V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->f:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v2, "facebook_auth_tip"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v2, "facebook_auth_tip"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    if-eqz v1, :cond_4

    const v2, 0x7f0a048f

    :goto_1
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v2, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v2, "facebook_auth_cat"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v2, "facebook_auth_cat"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v2, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_1
    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v1, "facebook_auth_bind_btn"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v1, "facebook_auth_bind_btn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->m()Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_4
    const v2, 0x7f0a048e

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v1, "facebook_auth_account"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v1, "facebook_auth_account"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0490

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const v3, 0x10122

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v1, "facebook_auth_cat2"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v1, "facebook_auth_cat2"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v1, "facebook_auth_unbind_btn"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v1, "facebook_auth_unbind_btn"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v1, v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Landroid/preference/Preference;)V

    goto :goto_2
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x54

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, v3}, Lcom/tencent/mm/ui/MMErrorProcessor$CertainError;->a(Landroid/content/Context;III)Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneFaceBookAuth;->f()I

    move-result v1

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    if-nez v1, :cond_3

    const v0, 0x7f0a0482

    :goto_1
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput-boolean v3, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->f:Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->o()V

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    const-string v1, "facebookapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    const-string v1, "facebookapp"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->f(Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const v0, 0x7f0a0480

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/16 v0, -0x43

    if-ne p2, v0, :cond_5

    const v0, 0x7f0a0493

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    const v0, 0x7f0a0483

    :goto_2
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_6
    const v0, 0x7f0a0481

    goto :goto_2
.end method

.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "MicroMsg.FacebookAuthUI"

    const-string v2, "onPreferenceTreeClick, key is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v2, "facebook_auth_bind_btn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->b:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    invoke-virtual {v1, p0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    const-string v2, "290293790992170"

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->b:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->b:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    sget-object v2, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->a:[Ljava/lang/String;

    new-instance v3, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$LoginDialogListener;-><init>(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;)V

    goto :goto_0

    :cond_1
    const-string v2, "facebook_auth_unbind_btn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0a048a

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$3;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$3;-><init>(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)V

    new-instance v4, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$4;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$4;-><init>(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)V

    invoke-static {p0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f050017

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->b:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_force_unbind"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->f:Z

    new-instance v0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    const-string v1, "290293790992170"

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->b:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    new-instance v0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$1;-><init>(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->d:Landroid/content/DialogInterface$OnCancelListener;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    const v1, 0x7f050017

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "facebook_auth_tip"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v2, "facebook_auth_tip"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "facebook_auth_cat"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v2, "facebook_auth_cat"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "facebook_auth_bind_btn"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v2, "facebook_auth_bind_btn"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "facebook_auth_account"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v2, "facebook_auth_account"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "facebook_auth_cat2"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v2, "facebook_auth_cat2"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->g:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "facebook_auth_unbind_btn"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->h:Ljava/util/Map;

    const-string v2, "facebook_auth_unbind_btn"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$2;-><init>(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onPause()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMPreference;->onResume()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x54

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->o()V

    return-void
.end method
