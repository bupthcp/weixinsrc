.class Lcom/tencent/mm/ui/AddressUI$22;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/AddressUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/AddressUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/AddressUI$22;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$22;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressUI;->getParent()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/ui/AddressUI$22;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;)Lcom/tencent/mm/ui/AddressAdapter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/contact/ContactWidgetQMessage;->a(Landroid/content/Context;ZLcom/tencent/mm/ui/MListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$22;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;)Lcom/tencent/mm/ui/AddressAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/AddressAdapter;->a:Ljava/util/List;

    const-string v1, "qmessage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
