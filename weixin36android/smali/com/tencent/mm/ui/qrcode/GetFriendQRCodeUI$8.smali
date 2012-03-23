.class Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    const v4, 0x7f0a034b

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8$1;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8$1;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
