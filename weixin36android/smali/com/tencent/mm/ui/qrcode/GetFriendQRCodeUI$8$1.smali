.class Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8$1;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8$1;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;

    iget-object v0, v0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->d(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8$1;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;

    iget-object v0, v0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8$1;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;

    iget-object v0, v0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->f(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    :cond_0
    return-void
.end method
