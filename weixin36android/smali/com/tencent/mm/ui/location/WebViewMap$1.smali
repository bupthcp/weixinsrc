.class Lcom/tencent/mm/ui/location/WebViewMap$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/location/WebViewMap;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/location/WebViewMap;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/location/WebViewMap$1;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap$1;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/location/WebViewMap;->a(Lcom/tencent/mm/ui/location/WebViewMap;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap$1;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v1}, Lcom/tencent/mm/ui/location/WebViewMap;->a(Lcom/tencent/mm/ui/location/WebViewMap;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap$1;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v1}, Lcom/tencent/mm/ui/location/WebViewMap;->b(Lcom/tencent/mm/ui/location/WebViewMap;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap$1;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v1}, Lcom/tencent/mm/ui/location/WebViewMap;->a(Lcom/tencent/mm/ui/location/WebViewMap;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap$1;->a:Lcom/tencent/mm/ui/location/WebViewMap;

    invoke-static {v0}, Lcom/tencent/mm/ui/location/WebViewMap;->c(Lcom/tencent/mm/ui/location/WebViewMap;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
