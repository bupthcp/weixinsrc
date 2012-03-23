.class Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:[Ljava/lang/String;

.field private synthetic b:Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$6;->b:Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$6;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$6;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$6;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$6;->b:Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;

    const v3, 0x7f0a033b

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_1
    if-lez v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$6;->b:Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;

    const-class v3, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "show_to"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$6;->b:Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$6;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$6;->b:Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;

    const v3, 0x7f0a033c

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$6;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$6;->b:Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;

    const v3, 0x7f0a033d

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$6;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$6;->b:Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;

    const v3, 0x7f0a033e

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1
.end method
