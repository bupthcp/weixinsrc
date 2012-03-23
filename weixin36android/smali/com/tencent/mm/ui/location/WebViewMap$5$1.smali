.class Lcom/tencent/mm/ui/location/WebViewMap$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/location/WebViewMap$5;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/location/WebViewMap$5;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/location/WebViewMap$5$1;->a:Lcom/tencent/mm/ui/location/WebViewMap$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 7

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "geo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap$5$1;->a:Lcom/tencent/mm/ui/location/WebViewMap$5;

    iget-object v1, v1, Lcom/tencent/mm/ui/location/WebViewMap$5;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v1}, Lcom/tencent/mm/ui/location/WebViewMap;->g(Lcom/tencent/mm/ui/location/WebViewMap;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap$5$1;->a:Lcom/tencent/mm/ui/location/WebViewMap$5;

    iget-object v1, v1, Lcom/tencent/mm/ui/location/WebViewMap$5;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v1}, Lcom/tencent/mm/ui/location/WebViewMap;->h(Lcom/tencent/mm/ui/location/WebViewMap;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap$5$1;->a:Lcom/tencent/mm/ui/location/WebViewMap$5;

    iget-object v1, v1, Lcom/tencent/mm/ui/location/WebViewMap$5;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v1}, Lcom/tencent/mm/ui/location/WebViewMap;->i(Lcom/tencent/mm/ui/location/WebViewMap;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap$5$1;->a:Lcom/tencent/mm/ui/location/WebViewMap$5;

    iget-object v0, v0, Lcom/tencent/mm/ui/location/WebViewMap$5;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap$5$1;->a:Lcom/tencent/mm/ui/location/WebViewMap$5;

    iget-object v0, v0, Lcom/tencent/mm/ui/location/WebViewMap$5;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/location/WebViewMap;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/tencent/mm/ui/location/WebViewMap$5$1;->a:Lcom/tencent/mm/ui/location/WebViewMap$5;

    iget-object v2, v2, Lcom/tencent/mm/ui/location/WebViewMap$5;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v2}, Lcom/tencent/mm/ui/location/WebViewMap;->j(Lcom/tencent/mm/ui/location/WebViewMap;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/location/WebViewMap$5$1;->a:Lcom/tencent/mm/ui/location/WebViewMap$5;

    iget-object v3, v3, Lcom/tencent/mm/ui/location/WebViewMap$5;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v3}, Lcom/tencent/mm/ui/location/WebViewMap;->g(Lcom/tencent/mm/ui/location/WebViewMap;)D

    move-result-wide v3

    iget-object v5, p0, Lcom/tencent/mm/ui/location/WebViewMap$5$1;->a:Lcom/tencent/mm/ui/location/WebViewMap$5;

    iget-object v5, v5, Lcom/tencent/mm/ui/location/WebViewMap$5;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v5}, Lcom/tencent/mm/ui/location/WebViewMap;->h(Lcom/tencent/mm/ui/location/WebViewMap;)D

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mm/ui/location/MapUtil;->a(Ljava/lang/String;DD)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap$5$1;->a:Lcom/tencent/mm/ui/location/WebViewMap$5;

    iget-object v1, v1, Lcom/tencent/mm/ui/location/WebViewMap$5;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/location/WebViewMap;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
