.class Lcom/tencent/mm/ui/AddressUI$30;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/tencent/mm/ui/AddressUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/AddressUI;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/AddressUI$30;->b:Lcom/tencent/mm/ui/AddressUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/AddressUI$30;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI$30;->b:Lcom/tencent/mm/ui/AddressUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/AddressUI$30;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/tencent/mm/ui/SendVerifyRequest;

    new-instance v4, Lcom/tencent/mm/ui/AddressUI$31;

    invoke-direct {v4, v2}, Lcom/tencent/mm/ui/AddressUI$31;-><init>(Lcom/tencent/mm/ui/AddressUI;)V

    invoke-direct {v1, v2, v4}, Lcom/tencent/mm/ui/SendVerifyRequest;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/SendVerifyRequest$IOnSendVerifyRequest;)V

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/ui/SendVerifyRequest;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
