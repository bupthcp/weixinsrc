.class Lcom/tencent/mm/modelbase/NetSceneQueue$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelbase/NetSceneQueue;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelbase/NetSceneQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelbase/NetSceneQueue$2;->a:Lcom/tencent/mm/modelbase/NetSceneQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
