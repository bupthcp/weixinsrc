.class Lcom/tencent/mm/modelfake/NetSceneSendMsgFake$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake$1;->a:Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake$1;->a:Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;

    const/16 v1, 0x3e7

    const-string v4, ""

    const/4 v5, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/modelfake/NetSceneSendMsgFake;->a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V

    return-void
.end method
