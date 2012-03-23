.class Lcom/tencent/mm/booter/CoreServiceHelper$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/RDispatcher$IDeadObjectFixer;


# instance fields
.field private synthetic a:Lcom/tencent/mm/booter/CoreServiceHelper$1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/booter/CoreServiceHelper$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/booter/CoreServiceHelper$1$1;->a:Lcom/tencent/mm/booter/CoreServiceHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->b()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/CoreServiceHelper;->b(Landroid/content/Context;)V

    return-void
.end method
