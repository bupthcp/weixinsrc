.class public Lcom/tencent/mm/modelbottle/SceneBottle$ThrowText;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowText;->a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    iput v2, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowText;->b:I

    const-string v3, "emtpy input text"

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v0, "must call back onFin"

    if-eqz p2, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v0, v2}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/mm/modelbottle/BottleLogic;->a()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iput-object p2, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowText;->a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    new-instance v0, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;

    invoke-direct {v0, p1}, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_1

    const/16 v0, 0x10

    invoke-interface {p2, v1, v0}, Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;->a(II)V

    goto :goto_1
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 2

    const/16 v1, 0x32

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowText;->a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    if-eqz v0, :cond_1

    check-cast p4, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;

    invoke-virtual {p4}, Lcom/tencent/mm/modelbottle/NetSceneThrowBottle;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowText;->b:I

    iget-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowText;->a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;->a(II)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowText;->a:Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    goto :goto_0
.end method
