.class public Lcom/tencent/mm/plugin/album/ui/AlbumphotoThumbList;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoThumbList;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/ui/MMHorList;

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoThumbList;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/AlbumphotoThumbList;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    new-instance v1, Lcom/tencent/mm/plugin/album/ui/AlbumphotoThumbList$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/album/ui/AlbumphotoThumbList$1;-><init>(Lcom/tencent/mm/plugin/album/ui/AlbumphotoThumbList;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
