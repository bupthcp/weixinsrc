.class Lcom/tencent/mm/ui/facebook/sdk/AsyncFacebookRunner$2;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Landroid/os/Bundle;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/tencent/mm/ui/facebook/sdk/AsyncFacebookRunner;


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/AsyncFacebookRunner$2;->d:Lcom/tencent/mm/ui/facebook/sdk/AsyncFacebookRunner;

    iget-object v0, v0, Lcom/tencent/mm/ui/facebook/sdk/AsyncFacebookRunner;->a:Lcom/tencent/mm/ui/facebook/sdk/Facebook;

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/AsyncFacebookRunner$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/sdk/AsyncFacebookRunner$2;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/tencent/mm/ui/facebook/sdk/AsyncFacebookRunner$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/ui/facebook/sdk/Facebook;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

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
