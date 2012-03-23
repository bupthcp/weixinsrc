.class Lcom/tencent/mm/plugin/album/ui/MMHorList$2;
.super Landroid/database/DataSetObserver;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/album/ui/MMHorList;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/album/ui/MMHorList;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$2;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$2;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a(Lcom/tencent/mm/plugin/album/ui/MMHorList;)Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$2;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->invalidate()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$2;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$2;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b(Lcom/tencent/mm/plugin/album/ui/MMHorList;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$2;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->invalidate()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$2;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->requestLayout()V

    return-void
.end method
