.class Lcom/tencent/mm/ui/MMProgressBar$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MMProgressBar;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMProgressBar;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMProgressBar$1;->a:Lcom/tencent/mm/ui/MMProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar$1;->a:Lcom/tencent/mm/ui/MMProgressBar;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMProgressBar;->a(Lcom/tencent/mm/ui/MMProgressBar;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MMProgressBar$1;->a:Lcom/tencent/mm/ui/MMProgressBar;

    invoke-static {v1}, Lcom/tencent/mm/ui/MMProgressBar;->b(Lcom/tencent/mm/ui/MMProgressBar;)I

    move-result v1

    sub-int v1, v0, v1

    if-lez v1, :cond_0

    int-to-double v2, v1

    const-wide v4, 0x3fe3333333333333L

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v2, p0, Lcom/tencent/mm/ui/MMProgressBar$1;->a:Lcom/tencent/mm/ui/MMProgressBar;

    if-lez v0, :cond_1

    :goto_0
    invoke-static {v2, v0}, Lcom/tencent/mm/ui/MMProgressBar;->a(Lcom/tencent/mm/ui/MMProgressBar;I)I

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar$1;->a:Lcom/tencent/mm/ui/MMProgressBar;

    iget-object v2, p0, Lcom/tencent/mm/ui/MMProgressBar$1;->a:Lcom/tencent/mm/ui/MMProgressBar;

    invoke-static {v2}, Lcom/tencent/mm/ui/MMProgressBar;->b(Lcom/tencent/mm/ui/MMProgressBar;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/MMProgressBar;->b(Lcom/tencent/mm/ui/MMProgressBar;I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMProgressBar$1;->a:Lcom/tencent/mm/ui/MMProgressBar;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMProgressBar;->d(Lcom/tencent/mm/ui/MMProgressBar;)Lcom/tencent/mm/platformtools/MTimerHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/MMProgressBar$1;->a:Lcom/tencent/mm/ui/MMProgressBar;

    invoke-static {v2}, Lcom/tencent/mm/ui/MMProgressBar;->c(Lcom/tencent/mm/ui/MMProgressBar;)I

    move-result v2

    sub-int v1, v2, v1

    mul-int/lit8 v1, v1, 0x28

    iget-object v2, p0, Lcom/tencent/mm/ui/MMProgressBar$1;->a:Lcom/tencent/mm/ui/MMProgressBar;

    invoke-static {v2}, Lcom/tencent/mm/ui/MMProgressBar;->c(Lcom/tencent/mm/ui/MMProgressBar;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
