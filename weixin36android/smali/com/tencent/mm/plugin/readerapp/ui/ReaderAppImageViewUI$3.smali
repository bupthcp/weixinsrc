.class Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$3;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$3;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    invoke-static {v0, p3}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;I)I

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$3;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$3;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->b(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$3;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->d(Ljava/lang/String;)V

    const-string v0, "MicroMsg.ReaderAppImageViewUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$3;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->h()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$3;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI$3;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;

    invoke-static {v3}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->d(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;)I

    move-result v3

    invoke-virtual {v2, v0, v3, p3}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;->a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppImageViewUI;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method
