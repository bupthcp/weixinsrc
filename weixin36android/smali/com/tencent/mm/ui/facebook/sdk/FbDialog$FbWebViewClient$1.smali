.class Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient$1;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient$1;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;

    invoke-static {v0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a(Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient$1;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;

    iget-object v0, v0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient$1;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;

    iget-object v0, v0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;->a:Lcom/tencent/mm/ui/facebook/sdk/FbDialog;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->dismiss()V

    :cond_0
    return-void
.end method
