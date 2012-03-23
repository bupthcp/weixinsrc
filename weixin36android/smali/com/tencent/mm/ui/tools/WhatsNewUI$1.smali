.class Lcom/tencent/mm/ui/tools/WhatsNewUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/tools/WhatsNewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/WhatsNewUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$1;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    add-int/lit8 v0, p3, 0x1

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$1;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->a(Lcom/tencent/mm/ui/tools/WhatsNewUI;)Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI$1;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->b(Lcom/tencent/mm/ui/tools/WhatsNewUI;)Lcom/tencent/mm/ui/MMGallery;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMGallery;->setSelection(I)V

    :cond_0
    return-void
.end method
