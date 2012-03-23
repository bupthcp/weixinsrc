.class Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard$1;->a:Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard$1;->a:Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->a(Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;)Lcom/tencent/mm/ui/RoomInfoContPreference;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/RoomInfoContPreference;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard$1;->a:Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->a(Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;)Lcom/tencent/mm/ui/RoomInfoContPreference;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/RoomInfoContPreference;->e(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard$1;->a:Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->b(Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "Contact_User"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard$1;->a:Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;->b(Lcom/tencent/mm/ui/contact/ContactWidgetGroupCard;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
