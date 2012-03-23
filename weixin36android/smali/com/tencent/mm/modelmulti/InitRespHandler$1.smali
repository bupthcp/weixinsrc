.class Lcom/tencent/mm/modelmulti/InitRespHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelmulti/InitRespHandler;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelmulti/InitRespHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->a(Lcom/tencent/mm/modelmulti/InitRespHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->b(Lcom/tencent/mm/modelmulti/InitRespHandler;)Lcom/tencent/mm/modelmulti/NetSceneSync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync;->i()V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->c(Lcom/tencent/mm/modelmulti/InitRespHandler;)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    iget-object v2, v2, Lcom/tencent/mm/modelmulti/InitRespHandler;->a:Lcom/tencent/mm/protocal/MMInit$Resp;

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/MMInit$Resp;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->d(Lcom/tencent/mm/modelmulti/InitRespHandler;)Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    iget-object v0, v0, Lcom/tencent/mm/modelmulti/InitRespHandler;->a:Lcom/tencent/mm/protocal/MMInit$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMInit$Resp;->e()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-static {v3}, Lcom/tencent/mm/modelmulti/InitRespHandler;->c(Lcom/tencent/mm/modelmulti/InitRespHandler;)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSync$CmdItem;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->a(Lcom/tencent/mm/protocal/MMSync$CmdItem;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->b(Lcom/tencent/mm/modelmulti/InitRespHandler;)Lcom/tencent/mm/modelmulti/NetSceneSync;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    iget-object v2, v2, Lcom/tencent/mm/modelmulti/InitRespHandler;->a:Lcom/tencent/mm/protocal/MMInit$Resp;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(Lcom/tencent/mm/protocal/MMInit$Resp;)V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->d(Lcom/tencent/mm/modelmulti/InitRespHandler;)Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->a()V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->e(Lcom/tencent/mm/modelmulti/InitRespHandler;)Ljava/util/Queue;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    iget-object v2, v2, Lcom/tencent/mm/modelmulti/InitRespHandler;->a:Lcom/tencent/mm/protocal/MMInit$Resp;

    invoke-interface {v0, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->f(Lcom/tencent/mm/modelmulti/InitRespHandler;)V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->e(Lcom/tencent/mm/modelmulti/InitRespHandler;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->e(Lcom/tencent/mm/modelmulti/InitRespHandler;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMInit$Resp;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->b(Lcom/tencent/mm/protocal/MMInit$Resp;)Z

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "MicroMsg.InitRespHandler"

    const-string v2, "init resp list process done"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/InitRespHandler$1;->a:Lcom/tencent/mm/modelmulti/InitRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/InitRespHandler;->g(Lcom/tencent/mm/modelmulti/InitRespHandler;)I

    const/4 v0, 0x1

    goto/16 :goto_0
.end method
