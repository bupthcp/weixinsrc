.class Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelsimple/NetSceneGetQRCode;

.field private synthetic b:Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;Lcom/tencent/mm/modelsimple/NetSceneGetQRCode;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$4;->b:Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$4;->a:Lcom/tencent/mm/modelsimple/NetSceneGetQRCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/SelfQRCodeUI$4;->a:Lcom/tencent/mm/modelsimple/NetSceneGetQRCode;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method
