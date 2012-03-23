.class public Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/ProgressBar;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->c:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030105

    return v0
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07018c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->b:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->c()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0702ca

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    invoke-static {v0}, Lb/a/ae;->b(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI$1;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    invoke-static {v0}, Lb/a/ae;->a(Landroid/webkit/WebView;)V

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI$2;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "uri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "params"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    aget-object v5, v3, v0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    aget-object v6, v3, v0

    invoke-virtual {v6, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aget-object v7, v3, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "baseurl"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "method"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "get"

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    const-string v0, "MicroMsg.QQMail.WebViewUI"

    const-string v1, "doSend invalid argument."

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->d(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI$3;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;)V

    new-instance v3, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

    invoke-direct {v3}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;-><init>()V

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->c()V

    const-string v5, "get"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->b(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)J

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v3, v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)J

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
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

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailWebViewUI;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onStop()V

    return-void
.end method
