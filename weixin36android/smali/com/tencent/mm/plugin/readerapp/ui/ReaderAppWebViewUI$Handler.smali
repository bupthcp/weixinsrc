.class Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$Handler;
.super Ljava/lang/Object;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$Handler;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keep_show(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MicroMsg.ReaderAppWebViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reader data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$Handler;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    invoke-static {v0, p1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;->a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI$Handler;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI;->p()V

    return-void
.end method
