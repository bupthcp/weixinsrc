.class Lcom/tencent/mm/ui/AddressUI$15$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/AddressUI$15;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/AddressUI$15;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/AddressUI$15$1;->a:Lcom/tencent/mm/ui/AddressUI$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$15$1;->a:Lcom/tencent/mm/ui/AddressUI$15;

    iget-object v0, v0, Lcom/tencent/mm/ui/AddressUI$15;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;)Lcom/tencent/mm/ui/AddressAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressAdapter;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;

    iget-object v5, p0, Lcom/tencent/mm/ui/AddressUI$15$1;->a:Lcom/tencent/mm/ui/AddressUI$15;

    iget-object v5, v5, Lcom/tencent/mm/ui/AddressUI$15;->a:Lcom/tencent/mm/ui/AddressUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/AddressAdapter$SelectedContact;->a:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/tencent/mm/ui/AddressUI;->c(Lcom/tencent/mm/ui/AddressUI;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$15$1;->a:Lcom/tencent/mm/ui/AddressUI$15;

    iget-object v5, v0, Lcom/tencent/mm/ui/AddressUI$15;->a:Lcom/tencent/mm/ui/AddressUI;

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-static {v5, v1}, Lcom/tencent/mm/ui/AddressUI;->b(Lcom/tencent/mm/ui/AddressUI;Z)V

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$15$1;->a:Lcom/tencent/mm/ui/AddressUI$15;

    iget-object v0, v0, Lcom/tencent/mm/ui/AddressUI$15;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressUI;->finish()V

    :cond_2
    return-void
.end method
