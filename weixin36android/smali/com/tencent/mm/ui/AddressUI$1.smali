.class Lcom/tencent/mm/ui/AddressUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MListAdapter$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/AddressUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/AddressUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/AddressUI$1;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/AddressUI$1;->a:Lcom/tencent/mm/ui/AddressUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/AddressUI$1;->a:Lcom/tencent/mm/ui/AddressUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;)Lcom/tencent/mm/ui/AddressAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/AddressAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/AddressUI;->a(Lcom/tencent/mm/ui/AddressUI;I)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
