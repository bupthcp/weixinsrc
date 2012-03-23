.class Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$2;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$2;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "MicroMsg.ReaderAppWebViewUI"

    const-string v1, "readerapp onPageFinished"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "javascript:window.handler.keep_show(\'<head>\'+document.getElementsByTagName(\'html\')[0].innerHTML+\'</head>\');"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string v0, "weixin://viewimage/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$2;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$2;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;->a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$2;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    invoke-static {v0, p2}, Lcom/tencent/mm/platformtools/Util;->b(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "weixin://viewimage/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$2;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$2;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;->a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$2;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    invoke-static {v0, p2}, Lcom/tencent/mm/platformtools/Util;->b(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
