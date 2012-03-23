.class public Lcom/tencent/mm/modelmulti/NetSceneSync$MMReqRespSync;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private final a:Lcom/tencent/mm/protocal/MMSync$Req;

.field private final b:Lcom/tencent/mm/protocal/MMSync$Resp;

.field private final c:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/MMSync$Req;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMSync$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$MMReqRespSync;->a:Lcom/tencent/mm/protocal/MMSync$Req;

    new-instance v0, Lcom/tencent/mm/protocal/MMSync$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/MMSync$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$MMReqRespSync;->b:Lcom/tencent/mm/protocal/MMSync$Resp;

    iput-boolean p1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$MMReqRespSync;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$MMReqRespSync;->a:Lcom/tencent/mm/protocal/MMSync$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$MMReqRespSync;->b:Lcom/tencent/mm/protocal/MMSync$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x26

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/newsync"

    return-object v0
.end method
