.class Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:[Ljava/lang/String;

.field private synthetic b:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$5;->b:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    iput-object p2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$5;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$5;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$5;->b:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    const v2, 0x7f0a033b

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$5;->b:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;->q()V

    goto :goto_0
.end method
