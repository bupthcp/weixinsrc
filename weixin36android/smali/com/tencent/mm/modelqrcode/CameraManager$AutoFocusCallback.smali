.class final Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;->a:Landroid/os/Handler;

    const v0, 0x12345001

    iput v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;->b:I

    return-void
.end method

.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;->a:Landroid/os/Handler;

    iget v1, p0, Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;->b:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CameraManager$AutoFocusCallback;->a:Landroid/os/Handler;

    :goto_0
    return-void

    :cond_0
    const-string v0, "CameraManager"

    const-string v1, "Got auto-focus callback, but no handler for it"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
