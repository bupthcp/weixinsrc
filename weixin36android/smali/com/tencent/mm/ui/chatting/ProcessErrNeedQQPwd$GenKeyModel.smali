.class Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$GenKeyModel;
.super Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$GenKeyModel;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-direct {p0}, Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneBindQQ;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->a()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$GenKeyModel;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->c(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$GenKeyModel;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->g(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/modelsimple/NetSceneBindQQ;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method

.method protected final b()V
    .locals 0

    return-void
.end method
