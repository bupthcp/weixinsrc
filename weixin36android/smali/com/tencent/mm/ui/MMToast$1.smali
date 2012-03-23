.class Lcom/tencent/mm/ui/MMToast$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MMToast;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMToast;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMToast$1;->a:Lcom/tencent/mm/ui/MMToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/ui/MMToast$1;->a:Lcom/tencent/mm/ui/MMToast;

    invoke-static {v1}, Lcom/tencent/mm/ui/MMToast;->a(Lcom/tencent/mm/ui/MMToast;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/MMToast$1;->a:Lcom/tencent/mm/ui/MMToast;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMToast;->show()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/MMToast$1;->a:Lcom/tencent/mm/ui/MMToast;

    invoke-static {v1}, Lcom/tencent/mm/ui/MMToast;->b(Lcom/tencent/mm/ui/MMToast;)I

    iget-object v1, p0, Lcom/tencent/mm/ui/MMToast$1;->a:Lcom/tencent/mm/ui/MMToast;

    invoke-static {v1}, Lcom/tencent/mm/ui/MMToast;->c(Lcom/tencent/mm/ui/MMToast;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/MMToast$1;->a:Lcom/tencent/mm/ui/MMToast;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMToast;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMToast$1;->a:Lcom/tencent/mm/ui/MMToast;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMToast;->cancel()V

    const/4 v0, 0x0

    goto :goto_0
.end method
