.class public Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field private c:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

.field private d:Lcom/tencent/mm/modelbottle/NetScenePickBottle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->c:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    const/16 v0, -0x2711

    iput v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->b:I

    new-instance v0, Lcom/tencent/mm/modelbottle/NetScenePickBottle;

    invoke-direct {v0}, Lcom/tencent/mm/modelbottle/NetScenePickBottle;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->d:Lcom/tencent/mm/modelbottle/NetScenePickBottle;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->d:Lcom/tencent/mm/modelbottle/NetScenePickBottle;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x31

    const/16 v3, 0x30

    const-string v0, "MicroMsg.PickBottle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    if-ne v0, v4, :cond_3

    check-cast p4, Lcom/tencent/mm/modelbottle/NetScenePickBottle;

    invoke-virtual {p4}, Lcom/tencent/mm/modelbottle/NetScenePickBottle;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->c:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->c:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;->a(II)V

    :cond_0
    iput-object v5, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->c:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v4, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p4}, Lcom/tencent/mm/modelbottle/NetScenePickBottle;->g()Lcom/tencent/mm/protocal/MMPickBottle$Resp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->a:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/tencent/mm/modelbottle/NetScenePickBottle;->g()Lcom/tencent/mm/protocal/MMPickBottle$Resp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMPickBottle$Resp;->b()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->b:I

    new-instance v0, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;

    iget-object v1, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->a:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->b:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/modelbottle/NetSceneOpenBottle;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->c:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    if-eqz p2, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->c:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;->a(II)V

    :cond_5
    :goto_1
    iput-object v5, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->c:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->c:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;->a(II)V

    goto :goto_1
.end method

.method public final a(Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "MicroMsg.PickBottle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bottle pick:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/modelbottle/BottleLogic;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " throw:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/modelbottle/BottleLogic;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "renew this class"

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->c:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v3, "must call back onFin"

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/mm/modelbottle/BottleLogic;->b()I

    move-result v0

    if-gtz v0, :cond_3

    if-eqz p1, :cond_0

    const/16 v0, 0x10

    invoke-interface {p1, v1, v0}, Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;->a(II)V

    :cond_0
    :goto_2
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iput-object p1, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->c:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->d:Lcom/tencent/mm/modelbottle/NetScenePickBottle;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    move-result v2

    goto :goto_2
.end method
