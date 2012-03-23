.class Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

.field private b:Z


# direct methods
.method synthetic constructor <init>(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;-><init>(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;B)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->b:Z

    return v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->b:Z

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->b(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->c(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->d(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->e(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Webview loading URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->b(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->b(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient$1;-><init>(Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->b:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->a(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/facebook/sdk/DialogError;

    invoke-direct {v1, p3, p2, p4}, Lcom/tencent/mm/ui/facebook/sdk/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a(Lcom/tencent/mm/ui/facebook/sdk/DialogError;)V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->dismiss()V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->b(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v1, "fbconnect://success"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p2}, Lcom/tencent/mm/ui/facebook/sdk/Util;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v1, "error"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "error_type"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-static {v1}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->a(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a(Landroid/os/Bundle;)V

    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->dismiss()V

    :goto_1
    return v0

    :cond_1
    const-string v2, "access_denied"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "OAuthAccessDeniedException"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-static {v1}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->a(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-static {v2}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->a(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/facebook/sdk/FacebookError;

    invoke-direct {v3, v1}, Lcom/tencent/mm/ui/facebook/sdk/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a(Lcom/tencent/mm/ui/facebook/sdk/FacebookError;)V

    goto :goto_0

    :cond_4
    const-string v1, "fbconnect://cancel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-static {v1}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->a(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;->a()V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_5
    const-string v1, "touch"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
