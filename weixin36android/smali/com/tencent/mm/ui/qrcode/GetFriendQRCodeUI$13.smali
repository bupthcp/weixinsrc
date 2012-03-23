.class Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$13;->b:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$13;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$13;->b:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$13;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$13;->b:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    const v1, 0x7f0a0332

    const v2, 0x7f0a0010

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto :goto_0
.end method
