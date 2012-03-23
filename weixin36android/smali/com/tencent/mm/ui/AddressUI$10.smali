.class Lcom/tencent/mm/ui/AddressUI$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/AddressUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/AddressUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/AddressUI$10;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$10;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;)Lcom/tencent/mm/ui/AddressAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressAdapter;->e()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI$10;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/AddressUI;->g(Lcom/tencent/mm/ui/AddressUI;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI$10;->a:Lcom/tencent/mm/ui/AddressUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI$10;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/AddressUI;->h(Lcom/tencent/mm/ui/AddressUI;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI$10;->a:Lcom/tencent/mm/ui/AddressUI;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/AddressUI;->d(Lcom/tencent/mm/ui/AddressUI;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$10;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/AddressUI;->i(Lcom/tencent/mm/ui/AddressUI;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$10;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$10;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/AddressUI;->j(Lcom/tencent/mm/ui/AddressUI;)V

    goto :goto_0
.end method
