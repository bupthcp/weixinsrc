.class public Lcom/tencent/mm/platformtools/MTimerHandler;
.super Landroid/os/Handler;


# static fields
.field private static a:I


# instance fields
.field private final b:I

.field private final c:Z

.field private d:J

.field private final e:Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/platformtools/MTimerHandler;->d:J

    iput-object p1, p0, Lcom/tencent/mm/platformtools/MTimerHandler;->e:Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;

    sget v0, Lcom/tencent/mm/platformtools/MTimerHandler;->a:I

    const/16 v1, 0x2000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/platformtools/MTimerHandler;->a:I

    :cond_0
    sget v0, Lcom/tencent/mm/platformtools/MTimerHandler;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mm/platformtools/MTimerHandler;->a:I

    iput v0, p0, Lcom/tencent/mm/platformtools/MTimerHandler;->b:I

    iput-boolean p2, p0, Lcom/tencent/mm/platformtools/MTimerHandler;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lcom/tencent/mm/platformtools/MTimerHandler;->b:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->removeMessages(I)V

    return-void
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/tencent/mm/platformtools/MTimerHandler;->d:J

    invoke-virtual {p0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    iget v0, p0, Lcom/tencent/mm/platformtools/MTimerHandler;->b:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/mm/platformtools/MTimerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Lcom/tencent/mm/platformtools/MTimerHandler;->b:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/tencent/mm/platformtools/MTimerHandler;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/platformtools/MTimerHandler;->e:Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/platformtools/MTimerHandler;->e:Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;

    invoke-interface {v0}, Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/platformtools/MTimerHandler;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/platformtools/MTimerHandler;->b:I

    iget-wide v1, p0, Lcom/tencent/mm/platformtools/MTimerHandler;->d:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
