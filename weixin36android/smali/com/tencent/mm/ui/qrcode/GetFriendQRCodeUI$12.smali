.class Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelsimple/NetSceneSearchContact;

.field private synthetic b:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;Lcom/tencent/mm/modelsimple/NetSceneSearchContact;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$12;->b:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$12;->a:Lcom/tencent/mm/modelsimple/NetSceneSearchContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$12;->a:Lcom/tencent/mm/modelsimple/NetSceneSearchContact;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$12;->b:Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->i(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)Lcom/tencent/mm/platformtools/MTimerHandler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    return-void
.end method
