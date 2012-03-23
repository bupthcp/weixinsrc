.class Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver$1;->a:Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const-string v0, "MicroMsg.RemoteControlReceiver"

    const-string v1, "got remote key event up"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->b()Lcom/tencent/mm/modelvoice/RemoteController$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->b()Lcom/tencent/mm/modelvoice/RemoteController$CallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/modelvoice/RemoteController$CallBack;->d()V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelvoice/RemoteController$RemoteControlReceiver;->c()Lcom/tencent/mm/platformtools/MTimerHandler;

    const/4 v0, 0x0

    return v0
.end method
