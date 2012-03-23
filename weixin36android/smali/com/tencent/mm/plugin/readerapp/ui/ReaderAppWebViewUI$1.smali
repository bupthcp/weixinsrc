.class Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$1;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$1;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0a033b

    invoke-virtual {v0, v3}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, ""

    const-string v3, ""

    new-instance v4, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$5;

    invoke-direct {v4, v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$5;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;[Ljava/lang/String;)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    return-void
.end method
