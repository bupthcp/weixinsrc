.class Lcom/tencent/mm/ui/facebook/sdk/AsyncFacebookRunner$1;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/tencent/mm/ui/facebook/sdk/AsyncFacebookRunner;


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/AsyncFacebookRunner$1;->b:Lcom/tencent/mm/ui/facebook/sdk/AsyncFacebookRunner;

    iget-object v0, v0, Lcom/tencent/mm/ui/facebook/sdk/AsyncFacebookRunner;->a:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/AsyncFacebookRunner$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/facebook/sdk/FacebookError;

    const-string v1, "auth.expireSession failed"

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/facebook/sdk/FacebookError;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
