.class Lcom/tencent/mm/modelmulti/SyncRespHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelmulti/SyncRespHandler;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelmulti/SyncRespHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-static {v1}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->a(Lcom/tencent/mm/modelmulti/SyncRespHandler;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-static {v1}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->b(Lcom/tencent/mm/modelmulti/SyncRespHandler;)Lcom/tencent/mm/modelmulti/NetSceneSync;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modelmulti/NetSceneSync;->g()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-static {v1}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->c(Lcom/tencent/mm/modelmulti/SyncRespHandler;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->d(Lcom/tencent/mm/modelmulti/SyncRespHandler;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    iget-object v1, v1, Lcom/tencent/mm/modelmulti/SyncRespHandler;->a:Lcom/tencent/mm/protocal/MMSync$Resp;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/MMSync$Resp;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->e(Lcom/tencent/mm/modelmulti/SyncRespHandler;)Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    iget-object v0, v0, Lcom/tencent/mm/modelmulti/SyncRespHandler;->a:Lcom/tencent/mm/protocal/MMSync$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSync$Resp;->b()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-static {v2}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->d(Lcom/tencent/mm/modelmulti/SyncRespHandler;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSync$CmdItem;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->a(Lcom/tencent/mm/protocal/MMSync$CmdItem;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->f(Lcom/tencent/mm/modelmulti/SyncRespHandler;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->g(Lcom/tencent/mm/modelmulti/SyncRespHandler;)I

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->h(Lcom/tencent/mm/modelmulti/SyncRespHandler;)I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-static {v1}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->b(Lcom/tencent/mm/modelmulti/SyncRespHandler;)Lcom/tencent/mm/modelmulti/NetSceneSync;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    iget-object v2, v2, Lcom/tencent/mm/modelmulti/SyncRespHandler;->a:Lcom/tencent/mm/protocal/MMSync$Resp;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;->a(Lcom/tencent/mm/protocal/MMSync$Resp;)V

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-static {v1}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->e(Lcom/tencent/mm/modelmulti/SyncRespHandler;)Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->a()V

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/SyncRespHandler$1;->a:Lcom/tencent/mm/modelmulti/SyncRespHandler;

    invoke-static {v1}, Lcom/tencent/mm/modelmulti/SyncRespHandler;->i(Lcom/tencent/mm/modelmulti/SyncRespHandler;)V

    const-string v1, "MicroMsg.SyncRespHandler"

    const-string v2, "sync resp list process done"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
