.class public Lcom/tencent/mm/modelpmsg/PushMessageExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IMessageExtension;
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Ljava/util/Queue;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a:Ljava/util/Queue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->b:Z

    return-void
.end method

.method private a()V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelpmsg/PushMessageExtension$DoSceneStruct;

    iget-object v1, v0, Lcom/tencent/mm/modelpmsg/PushMessageExtension$DoSceneStruct;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x2001

    iget-object v0, v0, Lcom/tencent/mm/modelpmsg/PushMessageExtension$DoSceneStruct;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x2101

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/tencent/mm/modelpmsg/PushMessageExtension$DoSceneStruct;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->b:Z

    new-instance v1, Lcom/tencent/mm/modelpmsg/NetSceneGetPSMImg;

    invoke-direct {v1, v0}, Lcom/tencent/mm/modelpmsg/NetSceneGetPSMImg;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;)Lcom/tencent/mm/storage/MsgInfo;
    .locals 3

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a:Ljava/util/Queue;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a:Ljava/util/Queue;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    :cond_0
    new-instance v1, Lcom/tencent/mm/modelpmsg/PushMessageExtension$DoSceneStruct;

    invoke-direct {v1, v0}, Lcom/tencent/mm/modelpmsg/PushMessageExtension$DoSceneStruct;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/tencent/mm/modelpmsg/PushMessageExtension$DoSceneStruct;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a()V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    iput-boolean v4, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->b:Z

    :goto_0
    return-void

    :cond_0
    check-cast p4, Lcom/tencent/mm/modelpmsg/NetSceneGetPSMImg;

    invoke-virtual {p4}, Lcom/tencent/mm/modelpmsg/NetSceneGetPSMImg;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelpmsg/PushMessageExtension$DoSceneStruct;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/tencent/mm/modelpmsg/PushMessageExtension$DoSceneStruct;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v0, "MicroMsg.PushMessageExtension"

    const-string v1, "getDoSceneQueue failed ! reset queue!"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a:Ljava/util/Queue;

    iput-boolean v4, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->b:Z

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/tencent/mm/modelpmsg/PushMessageExtension$DoSceneStruct;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-nez v1, :cond_3

    const-string v0, "MicroMsg.PushMessageExtension"

    const-string v1, "get imgQueue failed ! ignore this message"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->b:Z

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/tencent/mm/modelpmsg/PushMessageExtension$DoSceneStruct;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "MicroMsg.PushMessageExtension"

    const-string v1, "check img url failed ! ignore this message"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->b:Z

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    if-eqz p2, :cond_6

    :cond_5
    const-string v0, "MicroMsg.PushMessageExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "down failed ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] ignore this message : img:["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->b:Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, v0, Lcom/tencent/mm/modelpmsg/PushMessageExtension$DoSceneStruct;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->b:Z

    invoke-direct {p0}, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a()V

    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelpmsg/PushMessageExtension;->a:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
