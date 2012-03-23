.class Lcom/tencent/mm/ui/tools/CitySelectUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/tools/CitySelectUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/CitySelectUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$1;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x3005

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$1;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/CitySelectUI;->a(Lcom/tencent/mm/ui/tools/CitySelectUI;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x3004

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$1;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/CitySelectUI;->b(Lcom/tencent/mm/ui/tools/CitySelectUI;)[[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    aget-object v2, v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "Contact_Province"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$1;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/CitySelectUI;->a(Lcom/tencent/mm/ui/tools/CitySelectUI;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_City"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$1;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/CitySelectUI;->b(Lcom/tencent/mm/ui/tools/CitySelectUI;)[[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p3

    aget-object v2, v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$1;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/ui/tools/CitySelectUI;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CitySelectUI$1;->a:Lcom/tencent/mm/ui/tools/CitySelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/CitySelectUI;->finish()V

    const/4 v0, 0x0

    return v0
.end method
