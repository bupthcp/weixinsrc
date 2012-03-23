.class Lcom/tencent/mm/ui/shake/ShakeReportUI$19;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:F

.field private synthetic b:Lcom/tencent/mm/ui/shake/ShakeReportUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$19;->b:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$19;->a:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$19;->b:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->J(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/ui/shake/DraggerButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/shake/DraggerButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$19;->a:F

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$19;->b:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->K(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$19;->b:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->w(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$19;->b:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->w(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$19;->b:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$19;->a:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c(Lcom/tencent/mm/ui/shake/ShakeReportUI;F)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$19;->a:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
