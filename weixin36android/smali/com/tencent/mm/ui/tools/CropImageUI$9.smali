.class Lcom/tencent/mm/ui/tools/CropImageUI$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private synthetic b:Lcom/tencent/mm/ui/tools/CropImageUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/CropImageUI;Lcom/tencent/mm/platformtools/MTimerHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/CropImageUI$9;->b:Lcom/tencent/mm/ui/tools/CropImageUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/CropImageUI$9;->a:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$9;->a:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CropImageUI$9;->a:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
