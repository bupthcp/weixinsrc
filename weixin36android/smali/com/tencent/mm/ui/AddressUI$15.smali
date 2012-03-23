.class Lcom/tencent/mm/ui/AddressUI$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/AddressUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/AddressUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/AddressUI$15;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$15;->a:Lcom/tencent/mm/ui/AddressUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI$15;->a:Lcom/tencent/mm/ui/AddressUI;

    const v2, 0x7f0a0232

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/AddressUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/AddressUI$15$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/AddressUI$15$1;-><init>(Lcom/tencent/mm/ui/AddressUI$15;)V

    invoke-static {v0, v3, v3, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;)Landroid/app/Dialog;

    return-void
.end method
