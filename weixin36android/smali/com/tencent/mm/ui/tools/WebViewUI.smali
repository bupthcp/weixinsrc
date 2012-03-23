.class public Lcom/tencent/mm/ui/tools/WebViewUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field protected a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030105

    return v0
.end method

.method protected final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->e:Z

    return-void
.end method

.method public final c(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->c(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    move-result-object v0

    return-object v0
.end method

.method protected final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final j()I
    .locals 1

    const v0, 0x7f030095

    return v0
.end method

.method protected final o()V
    .locals 6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "baseurl"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "rawUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->d:Ljava/lang/String;

    const-string v0, "MicroMsg.WebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "zoom"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "vertical_scroll"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "useJs"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->d(Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f07018c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->b:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->c()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    const v3, 0x7f08000c

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0702ca

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    :cond_1
    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/mm/ui/tools/WebViewUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/WebViewUI$1;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/tencent/mm/ui/tools/WebViewUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/WebViewUI$2;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    invoke-static {v0}, Lb/a/ae;->a(Landroid/webkit/WebView;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->e:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "baseurl"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    new-instance v0, Lcom/tencent/mm/ui/tools/WebViewUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/WebViewUI$3;-><init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onStop()V

    return-void
.end method
