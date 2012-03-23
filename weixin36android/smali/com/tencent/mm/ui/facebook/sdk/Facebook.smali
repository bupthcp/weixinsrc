.class public Lcom/tencent/mm/ui/facebook/sdk/Facebook;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Landroid/app/Activity;

.field private h:[Ljava/lang/String;

.field private i:I

.field private j:Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

.field private k:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://m.facebook.com/dialog/"

    sput-object v0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a:Ljava/lang/String;

    const-string v0, "https://graph.facebook.com/"

    sput-object v0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->b:Ljava/lang/String;

    const-string v0, "https://api.facebook.com/restserver.php"

    sput-object v0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->e:J

    iput-object v2, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->k:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify your application ID when instantiating a Facebook object. See README for details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/facebook/sdk/Facebook;)Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->j:Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    return-object v0
.end method

.method private a(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    array-length v1, p2

    if-lez v1, :cond_0

    const-string v1, "scope"

    const-string v2, ","

    invoke-static {v2, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    const-string v1, "oauth"

    new-instance v2, Lcom/tencent/mm/ui/facebook/sdk/Facebook$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$1;-><init>(Lcom/tencent/mm/ui/facebook/sdk/Facebook;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "display"

    const-string v5, "touch"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "redirect_uri"

    const-string v5, "fbconnect://success"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "oauth"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "type"

    const-string v4, "user_agent"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "client_id"

    iget-object v4, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "access_token"

    iget-object v4, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/Util;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Error"

    const-string v1, "Application requires permission to access the Internet"

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void

    :cond_2
    const-string v1, "app_id"

    iget-object v4, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-direct {v1, p1, v0, v2}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->k:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->k:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->show()V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/tencent/mm/ui/facebook/sdk/Util;->a(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "method"

    const-string v2, "auth.expireSession"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "method"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "GET"

    invoke-virtual {p0, v3, v0, v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v3, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->d:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->e:J

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "access_token"

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->d:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0, p3, p2}, Lcom/tencent/mm/ui/facebook/sdk/Util;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    iget v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->i:I

    if-ne p1, v0, :cond_2

    if-ne p2, v4, :cond_9

    const-string v0, "error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "error_type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_7

    const-string v1, "service_disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AndroidAuthKillSwitchException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->h:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v1, "access_denied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "OAuthAccessDeniedException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->j:Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    invoke-interface {v0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a()V

    goto :goto_0

    :cond_5
    const-string v1, "error_description"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Login failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->j:Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    new-instance v2, Lcom/tencent/mm/ui/facebook/sdk/FacebookError;

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/facebook/sdk/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a(Lcom/tencent/mm/ui/facebook/sdk/FacebookError;)V

    goto :goto_0

    :cond_7
    const-string v0, "access_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->d:Ljava/lang/String;

    const-string v0, "expires_in"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login Success! access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->j:Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->j:Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    new-instance v1, Lcom/tencent/mm/ui/facebook/sdk/FacebookError;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/facebook/sdk/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a(Lcom/tencent/mm/ui/facebook/sdk/FacebookError;)V

    goto/16 :goto_0

    :cond_9
    if-nez p2, :cond_2

    if-eqz p3, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->j:Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    new-instance v1, Lcom/tencent/mm/ui/facebook/sdk/DialogError;

    const-string v2, "error"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error_code"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "failing_url"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/mm/ui/facebook/sdk/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a(Lcom/tencent/mm/ui/facebook/sdk/DialogError;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->j:Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    invoke-interface {v0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a()V

    goto/16 :goto_0
.end method

.method public final a(Landroid/app/Activity;[Ljava/lang/String;Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;)V
    .locals 0

    iput-object p3, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->j:Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->d:Ljava/lang/String;

    return-void
.end method

.method public final a()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->e:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/tencent/mm/ui/facebook/sdk/Util;->a(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->d:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->e:J

    return-object v2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->e:J

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->e:J

    return-wide v0
.end method
