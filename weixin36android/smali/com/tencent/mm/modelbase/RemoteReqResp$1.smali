.class Lcom/tencent/mm/modelbase/RemoteReqResp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelbase/RemoteReqResp;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelbase/RemoteReqResp;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelbase/RemoteReqResp$1;->a:Lcom/tencent/mm/modelbase/RemoteReqResp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/modelbase/RemoteReqResp$1;->a:Lcom/tencent/mm/modelbase/RemoteReqResp;

    invoke-static {v0}, Lcom/tencent/mm/modelbase/RemoteReqResp;->a(Lcom/tencent/mm/modelbase/RemoteReqResp;)Lcom/tencent/mm/network/IReqResp;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMAuth$Resp;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/model/AccountStorage;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/model/AccountStorage;->a(Lcom/tencent/mm/protocal/MMProfile$Resp;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->j()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/algorithm/UIN;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->j()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/tencent/mm/algorithm/UIN;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@qqim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;I)V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->s()I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    const/4 v4, 0x2

    invoke-virtual {v2, v3, v1, v4}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;ZI)V

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->a(Lcom/tencent/mm/protocal/MMProfile$Resp;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const v2, -0x5b88a1de

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMAuth$Resp;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
