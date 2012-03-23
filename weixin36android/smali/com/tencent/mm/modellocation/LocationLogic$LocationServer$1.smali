.class Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$1;->a:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;

    iget-object v1, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$1;->a:Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
