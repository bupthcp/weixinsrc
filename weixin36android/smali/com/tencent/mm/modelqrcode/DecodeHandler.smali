.class final Lcom/tencent/mm/modelqrcode/DecodeHandler;
.super Landroid/os/Handler;


# instance fields
.field private final a:La/j;

.field private final b:Ljava/util/Hashtable;

.field private c:Landroid/os/Handler;

.field private d:Landroid/graphics/Rect;

.field private e:Lcom/tencent/mm/modelqrcode/CameraManager;

.field private f:Lcom/tencent/mm/modelqrcode/ScreenManager;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelqrcode/CameraManager;Lcom/tencent/mm/modelqrcode/ScreenManager;La/b;Landroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->d:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->e:Lcom/tencent/mm/modelqrcode/CameraManager;

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->f:Lcom/tencent/mm/modelqrcode/ScreenManager;

    iput-object p4, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->c:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->e:Lcom/tencent/mm/modelqrcode/CameraManager;

    iput-object p2, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->f:Lcom/tencent/mm/modelqrcode/ScreenManager;

    new-instance v0, La/j;

    invoke-direct {v0}, La/j;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->a:La/j;

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sget-object v1, La/a;->a:La/a;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->b:Ljava/util/Hashtable;

    sget-object v2, La/l;->b:La/l;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->b:Ljava/util/Hashtable;

    sget-object v1, La/l;->e:La/l;

    invoke-virtual {v0, v1, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->a:La/j;

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, La/j;->a(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->e:Lcom/tencent/mm/modelqrcode/CameraManager;

    invoke-virtual {v1}, Lcom/tencent/mm/modelqrcode/CameraManager;->c()Landroid/graphics/Point;

    move-result-object v1

    iget v5, v1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->e:Lcom/tencent/mm/modelqrcode/CameraManager;

    invoke-virtual {v1}, Lcom/tencent/mm/modelqrcode/CameraManager;->c()Landroid/graphics/Point;

    move-result-object v1

    iget v6, v1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->d:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->d:Landroid/graphics/Rect;

    :goto_1
    new-instance v7, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;

    invoke-direct {v7, v0, v5, v6, v1}, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;-><init>([BIILandroid/graphics/Rect;)V

    new-instance v0, La/k;

    new-instance v1, La/b/f;

    const/4 v5, 0x0

    invoke-direct {v1, v7, v5}, La/b/f;-><init>(La/o;B)V

    invoke-direct {v0, v1}, La/k;-><init>(La/e;)V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->a:La/j;

    invoke-virtual {v1, v0}, La/j;->a(La/k;)La/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->a:La/j;

    invoke-virtual {v1}, La/j;->a()V

    :goto_2
    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v5, "DecodeHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found barcode ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long/2addr v1, v3

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, La/h;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  TEXT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, La/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->c:Landroid/os/Handler;

    const v2, 0x12345004

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "barcode_bitmap"

    invoke-virtual {v7}, Lcom/tencent/mm/modelqrcode/PlanarYUVLuminanceSource;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->f:Lcom/tencent/mm/modelqrcode/ScreenManager;

    invoke-virtual {v1}, Lcom/tencent/mm/modelqrcode/ScreenManager;->a()Landroid/graphics/Point;

    move-result-object v1

    new-instance v7, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->f:Lcom/tencent/mm/modelqrcode/ScreenManager;

    invoke-virtual {v8}, Lcom/tencent/mm/modelqrcode/ScreenManager;->b()Landroid/graphics/Rect;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iget-object v9, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->e:Lcom/tencent/mm/modelqrcode/CameraManager;

    invoke-virtual {v9}, Lcom/tencent/mm/modelqrcode/CameraManager;->b()Z

    move-result v9

    if-eqz v9, :cond_1

    iget v9, v7, Landroid/graphics/Rect;->left:I

    mul-int/2addr v9, v6

    iget v10, v1, Landroid/graphics/Point;->x:I

    div-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->top:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    mul-int/2addr v9, v6

    iget v10, v1, Landroid/graphics/Point;->x:I

    div-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, v7, Landroid/graphics/Rect;->top:I

    mul-int/2addr v9, v5

    iget v10, v1, Landroid/graphics/Point;->y:I

    div-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->left:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v7, v5

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int v1, v7, v1

    iput v1, v8, Landroid/graphics/Rect;->right:I

    :goto_3
    iput-object v8, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->d:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->d:Landroid/graphics/Rect;

    goto/16 :goto_1

    :cond_1
    iget v9, v7, Landroid/graphics/Rect;->left:I

    mul-int/2addr v9, v5

    iget v10, v1, Landroid/graphics/Point;->x:I

    div-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->left:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    mul-int/2addr v9, v5

    iget v10, v1, Landroid/graphics/Point;->x:I

    div-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    iget v9, v7, Landroid/graphics/Rect;->top:I

    mul-int/2addr v9, v6

    iget v10, v1, Landroid/graphics/Point;->y:I

    div-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->top:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v7, v6

    iget v1, v1, Landroid/graphics/Point;->y:I

    div-int v1, v7, v1

    iput v1, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->a:La/j;

    invoke-virtual {v0}, La/j;->a()V

    move-object v0, v2

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->a:La/j;

    invoke-virtual {v1}, La/j;->a()V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/modelqrcode/DecodeHandler;->c:Landroid/os/Handler;

    const v1, 0x12345005

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x12345003
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
