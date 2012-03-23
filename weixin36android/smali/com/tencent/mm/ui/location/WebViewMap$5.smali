.class Lcom/tencent/mm/ui/location/WebViewMap$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/location/WebViewMap;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/location/WebViewMap;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/location/WebViewMap$5;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap$5;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/location/WebViewMap;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/ui/location/WebViewMap$5;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/location/WebViewMap;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0182

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lcom/tencent/mm/ui/location/WebViewMap$5$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/location/WebViewMap$5$1;-><init>(Lcom/tencent/mm/ui/location/WebViewMap$5;)V

    invoke-static {v0, v5, v1, v5, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    return-void
.end method
