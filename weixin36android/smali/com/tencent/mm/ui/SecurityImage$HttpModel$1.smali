.class Lcom/tencent/mm/ui/SecurityImage$HttpModel$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/SecurityImage$HttpModel;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/SecurityImage$HttpModel;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel$1;->a:Lcom/tencent/mm/ui/SecurityImage$HttpModel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage$HttpModel$1;->a:Lcom/tencent/mm/ui/SecurityImage$HttpModel;

    invoke-static {v0}, Lcom/tencent/mm/ui/SecurityImage$HttpModel;->a(Lcom/tencent/mm/ui/SecurityImage$HttpModel;)V

    return-void
.end method
