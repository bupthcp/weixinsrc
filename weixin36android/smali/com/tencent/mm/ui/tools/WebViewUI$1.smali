.class Lcom/tencent/mm/ui/tools/WebViewUI$1;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/tools/WebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WebViewUI$1;->a:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    if-gtz p2, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$1;->a:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x64

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WebViewUI$1;->a:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WebViewUI;->a(Lcom/tencent/mm/ui/tools/WebViewUI;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
