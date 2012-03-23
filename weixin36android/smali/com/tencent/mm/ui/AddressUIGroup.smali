.class public Lcom/tencent/mm/ui/AddressUIGroup;
.super Lcom/tencent/mm/ui/MMUIGroup;


# static fields
.field public static a:Lcom/tencent/mm/ui/AddressUIGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMUIGroup;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/AddressUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_group"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/AddressUIGroup;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMUIGroup;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/tencent/mm/ui/AddressUIGroup;->a:Lcom/tencent/mm/ui/AddressUIGroup;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMUIGroup;->onDestroy()V

    const-string v0, "MicroMsg.AddressUIGroup"

    const-string v1, "on destroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/AddressUIGroup;->a:Lcom/tencent/mm/ui/AddressUIGroup;

    return-void
.end method
