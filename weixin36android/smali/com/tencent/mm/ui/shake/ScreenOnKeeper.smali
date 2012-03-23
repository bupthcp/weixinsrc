.class Lcom/tencent/mm/ui/shake/ScreenOnKeeper;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/shake/ScreenOnKeeper$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/shake/ScreenOnKeeper$1;-><init>(Lcom/tencent/mm/ui/shake/ScreenOnKeeper;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ScreenOnKeeper;->b:Lcom/tencent/mm/platformtools/MTimerHandler;

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ScreenOnKeeper;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ScreenOnKeeper;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ScreenOnKeeper;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ScreenOnKeeper;->b:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ScreenOnKeeper;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method
