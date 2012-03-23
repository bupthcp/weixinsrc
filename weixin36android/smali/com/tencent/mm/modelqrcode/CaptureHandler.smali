.class public final Lcom/tencent/mm/modelqrcode/CaptureHandler;
.super Landroid/os/Handler;


# instance fields
.field private a:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

.field private b:Lcom/tencent/mm/modelqrcode/DecodeThread;

.field private c:Lcom/tencent/mm/modelqrcode/CaptureHandler$OnResetPreviewListener;

.field private d:Lcom/tencent/mm/modelqrcode/CaptureHandler$OnSuccessListener;

.field private e:Lcom/tencent/mm/modelqrcode/CameraManager;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/modelqrcode/CameraManager;Lcom/tencent/mm/modelqrcode/ScreenManager;Lcom/tencent/mm/modelqrcode/CaptureHandler$OnResetPreviewListener;Lcom/tencent/mm/modelqrcode/CaptureHandler$OnSuccessListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->b:Lcom/tencent/mm/modelqrcode/DecodeThread;

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->c:Lcom/tencent/mm/modelqrcode/CaptureHandler$OnResetPreviewListener;

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->d:Lcom/tencent/mm/modelqrcode/CaptureHandler$OnSuccessListener;

    sget-object v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->b:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->a:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    iput-object p3, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->c:Lcom/tencent/mm/modelqrcode/CaptureHandler$OnResetPreviewListener;

    iput-object p4, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->d:Lcom/tencent/mm/modelqrcode/CaptureHandler$OnSuccessListener;

    iput-object p1, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->e:Lcom/tencent/mm/modelqrcode/CameraManager;

    new-instance v0, Lcom/tencent/mm/modelqrcode/DecodeThread;

    invoke-direct {v0, p1, p2, p0}, Lcom/tencent/mm/modelqrcode/DecodeThread;-><init>(Lcom/tencent/mm/modelqrcode/CameraManager;Lcom/tencent/mm/modelqrcode/ScreenManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->b:Lcom/tencent/mm/modelqrcode/DecodeThread;

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->b:Lcom/tencent/mm/modelqrcode/DecodeThread;

    invoke-virtual {v0}, Lcom/tencent/mm/modelqrcode/DecodeThread;->start()V

    invoke-direct {p0}, Lcom/tencent/mm/modelqrcode/CaptureHandler;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->a:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    sget-object v1, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->b:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->a:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->a:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->e:Lcom/tencent/mm/modelqrcode/CameraManager;

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->b:Lcom/tencent/mm/modelqrcode/DecodeThread;

    invoke-virtual {v1}, Lcom/tencent/mm/modelqrcode/DecodeThread;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelqrcode/CameraManager;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->e:Lcom/tencent/mm/modelqrcode/CameraManager;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelqrcode/CameraManager;->b(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    sget-object v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->c:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->a:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->b:Lcom/tencent/mm/modelqrcode/DecodeThread;

    invoke-virtual {v0}, Lcom/tencent/mm/modelqrcode/DecodeThread;->a()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x12345006

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->b:Lcom/tencent/mm/modelqrcode/DecodeThread;

    invoke-virtual {v0}, Lcom/tencent/mm/modelqrcode/DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v0, 0x12345004

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelqrcode/CaptureHandler;->removeMessages(I)V

    const v0, 0x12345005

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelqrcode/CaptureHandler;->removeMessages(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->a:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    sget-object v1, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->a:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->e:Lcom/tencent/mm/modelqrcode/CameraManager;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelqrcode/CameraManager;->b(Landroid/os/Handler;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/mm/modelqrcode/CaptureHandler;->b()V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->b:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->a:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "barcode_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->d:Lcom/tencent/mm/modelqrcode/CaptureHandler$OnSuccessListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->d:Lcom/tencent/mm/modelqrcode/CaptureHandler$OnSuccessListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, La/h;

    invoke-virtual {v0}, La/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/tencent/mm/modelqrcode/CaptureHandler$OnSuccessListener;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/tencent/mm/modelqrcode/CaptureHandler$State;->a:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->a:Lcom/tencent/mm/modelqrcode/CaptureHandler$State;

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->e:Lcom/tencent/mm/modelqrcode/CameraManager;

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/CaptureHandler;->b:Lcom/tencent/mm/modelqrcode/DecodeThread;

    invoke-virtual {v1}, Lcom/tencent/mm/modelqrcode/DecodeThread;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelqrcode/CameraManager;->a(Landroid/os/Handler;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12345001
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
