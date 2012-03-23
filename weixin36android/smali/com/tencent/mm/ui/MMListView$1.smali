.class Lcom/tencent/mm/ui/MMListView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MMListView;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMListView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMListView$1;->a:Lcom/tencent/mm/ui/MMListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMListView$1;->a:Lcom/tencent/mm/ui/MMListView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMListView;->invalidate()V

    const/4 v0, 0x0

    return v0
.end method
