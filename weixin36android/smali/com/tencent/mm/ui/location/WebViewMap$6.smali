.class Lcom/tencent/mm/ui/location/WebViewMap$6;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/tencent/mm/ui/location/WebViewMap;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/location/WebViewMap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/location/WebViewMap$6;->b:Lcom/tencent/mm/ui/location/WebViewMap;

    iput-object p2, p0, Lcom/tencent/mm/ui/location/WebViewMap$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap$6;->b:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v0}, Lcom/tencent/mm/ui/location/WebViewMap;->f(Lcom/tencent/mm/ui/location/WebViewMap;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap$6;->b:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v0}, Lcom/tencent/mm/ui/location/WebViewMap;->k(Lcom/tencent/mm/ui/location/WebViewMap;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap$6;->b:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v0}, Lcom/tencent/mm/ui/location/WebViewMap;->k(Lcom/tencent/mm/ui/location/WebViewMap;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap$6;->b:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v0}, Lcom/tencent/mm/ui/location/WebViewMap;->l(Lcom/tencent/mm/ui/location/WebViewMap;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap$6;->b:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v0}, Lcom/tencent/mm/ui/location/WebViewMap;->m(Lcom/tencent/mm/ui/location/WebViewMap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedError errorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failingUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedHttpAuthRequest  host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " realm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method
