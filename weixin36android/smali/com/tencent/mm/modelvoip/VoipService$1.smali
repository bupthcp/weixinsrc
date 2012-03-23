.class Lcom/tencent/mm/modelvoip/VoipService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoip/VoipService;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoip/VoipService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoip/VoipService$1;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService$1;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-static {v0}, Lcom/tencent/mm/modelvoip/VoipService;->a(Lcom/tencent/mm/modelvoip/VoipService;)Lcom/tencent/mm/modelvoip/v2protocal;

    move-result-object v0

    iget v0, v0, Lcom/tencent/mm/modelvoip/v2protocal;->c:I

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " roomId == 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Lcom/tencent/mm/modelvoip/NetSceneVoipHeartBeat;

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/VoipService$1;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-static {v1}, Lcom/tencent/mm/modelvoip/VoipService;->a(Lcom/tencent/mm/modelvoip/VoipService;)Lcom/tencent/mm/modelvoip/v2protocal;

    move-result-object v1

    iget v1, v1, Lcom/tencent/mm/modelvoip/v2protocal;->c:I

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelvoip/NetSceneVoipHeartBeat;-><init>(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_0
.end method
