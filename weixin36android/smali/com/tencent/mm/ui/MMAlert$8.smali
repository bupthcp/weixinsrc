.class final Lcom/tencent/mm/ui/MMAlert$8;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private synthetic a:Landroid/app/AlertDialog;

.field private synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMAlert$8;->a:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/tencent/mm/ui/MMAlert$8;->b:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "weixin://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMAlert$8;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMAlert$8;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMAlert$8;->b:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
