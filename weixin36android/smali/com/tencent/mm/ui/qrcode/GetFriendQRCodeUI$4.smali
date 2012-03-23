.class Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$4;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$4;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    const-class v2, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$4;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
