.class public Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;
.super Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    iput v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->b:I

    const-string v1, "must call back onFin"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iput-object p1, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 2

    const/16 v1, 0x32

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    if-eqz v0, :cond_1

    check-cast p4, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;

    invoke-virtual {p4}, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->b:I

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;->a(II)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    goto :goto_0
.end method

.method public final c()Z
    .locals 5

    const/16 v4, 0x32

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->b()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->c()Z

    move-result v3

    invoke-super {p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->e()V

    if-nez v3, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v4, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelbottle/BottleLogic;->a()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;

    invoke-super {p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->f()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v2

    invoke-virtual {v2, v4, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v2, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    const/16 v3, 0x10

    invoke-interface {v2, v1, v3}, Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;->a(II)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Recorder;->i()Z

    move-result v0

    return v0
.end method
