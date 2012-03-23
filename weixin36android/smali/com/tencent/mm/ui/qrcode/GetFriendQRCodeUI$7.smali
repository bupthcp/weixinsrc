.class Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeFinCallback;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$7;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$7;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->d(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$7;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->e(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$7;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->f(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$7;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->g(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$7;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->g(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$7;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    const v1, 0x7f0a034c

    const v2, 0x7f0a0010

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$7;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-static {v0, p1}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;Ljava/lang/String;)V

    goto :goto_0
.end method
