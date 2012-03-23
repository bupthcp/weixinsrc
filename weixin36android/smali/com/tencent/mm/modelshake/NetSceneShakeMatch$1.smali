.class Lcom/tencent/mm/modelshake/NetSceneShakeMatch$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelshake/NetSceneShakeMatch;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelshake/NetSceneShakeMatch;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch$1;->a:Lcom/tencent/mm/modelshake/NetSceneShakeMatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "MicroMsg.NetSceneShakeMatch"

    const-string v1, "onGYNetEnd retry to ShakeMatch"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch$1;->a:Lcom/tencent/mm/modelshake/NetSceneShakeMatch;

    iget-object v1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch$1;->a:Lcom/tencent/mm/modelshake/NetSceneShakeMatch;

    invoke-static {v1}, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->a(Lcom/tencent/mm/modelshake/NetSceneShakeMatch;)Lcom/tencent/mm/network/IDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelshake/NetSceneShakeMatch$1;->a:Lcom/tencent/mm/modelshake/NetSceneShakeMatch;

    invoke-static {v2}, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->b(Lcom/tencent/mm/modelshake/NetSceneShakeMatch;)Lcom/tencent/mm/modelbase/IOnSceneEnd;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelshake/NetSceneShakeMatch;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    return-void
.end method
