.class Lcom/tencent/mm/ui/facebook/sdk/Facebook$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/facebook/sdk/Facebook;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/facebook/sdk/Facebook;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook$1;->a:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook$1;->a:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a(Lcom/tencent/mm/ui/facebook/sdk/Facebook;)Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook$1;->a:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook$1;->a:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook$1;->a:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login Success! access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook$1;->a:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook$1;->a:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook$1;->a:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a(Lcom/tencent/mm/ui/facebook/sdk/Facebook;)Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook$1;->a:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a(Lcom/tencent/mm/ui/facebook/sdk/Facebook;)Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/facebook/sdk/FacebookError;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/tencent/mm/ui/facebook/sdk/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a(Lcom/tencent/mm/ui/facebook/sdk/FacebookError;)V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/facebook/sdk/DialogError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook$1;->a:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a(Lcom/tencent/mm/ui/facebook/sdk/Facebook;)Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a(Lcom/tencent/mm/ui/facebook/sdk/DialogError;)V

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/facebook/sdk/FacebookError;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/Facebook$1;->a:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a(Lcom/tencent/mm/ui/facebook/sdk/Facebook;)Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a(Lcom/tencent/mm/ui/facebook/sdk/FacebookError;)V

    return-void
.end method
