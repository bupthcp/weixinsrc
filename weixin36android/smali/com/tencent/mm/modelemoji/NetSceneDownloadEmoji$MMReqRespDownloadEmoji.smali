.class public Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji$MMReqRespDownloadEmoji;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private final a:Lcom/tencent/mm/protocal/MMDownloadEmoji$Req;

.field private final b:Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji$MMReqRespDownloadEmoji;->a:Lcom/tencent/mm/protocal/MMDownloadEmoji$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji$MMReqRespDownloadEmoji;->b:Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji$MMReqRespDownloadEmoji;->a:Lcom/tencent/mm/protocal/MMDownloadEmoji$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji$MMReqRespDownloadEmoji;->b:Lcom/tencent/mm/protocal/MMDownloadEmoji$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x3f

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/receiveemoji"

    return-object v0
.end method
