.class Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$6;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$6;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    const v1, 0x7f070121

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$6;->a:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->c(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
