.class public Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$MMReqRespNewSyncAlbum;
.super Lcom/tencent/mm/modelbase/MMReqRespBase;


# instance fields
.field private a:Lcom/tencent/mm/plugin/album/protocal/MMNewSyncAlbum$Req;

.field private b:Lcom/tencent/mm/plugin/album/protocal/MMNewSyncAlbum$Resp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/MMReqRespBase;-><init>()V

    new-instance v0, Lcom/tencent/mm/plugin/album/protocal/MMNewSyncAlbum$Req;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/protocal/MMNewSyncAlbum$Req;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$MMReqRespNewSyncAlbum;->a:Lcom/tencent/mm/plugin/album/protocal/MMNewSyncAlbum$Req;

    new-instance v0, Lcom/tencent/mm/plugin/album/protocal/MMNewSyncAlbum$Resp;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/protocal/MMNewSyncAlbum$Resp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$MMReqRespNewSyncAlbum;->b:Lcom/tencent/mm/plugin/album/protocal/MMNewSyncAlbum$Resp;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/tencent/mm/protocal/MMBase$Req;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$MMReqRespNewSyncAlbum;->a:Lcom/tencent/mm/plugin/album/protocal/MMNewSyncAlbum$Req;

    return-object v0
.end method

.method public final b()Lcom/tencent/mm/protocal/MMBase$Resp;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneNewSyncAlbum$MMReqRespNewSyncAlbum;->b:Lcom/tencent/mm/plugin/album/protocal/MMNewSyncAlbum$Resp;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x59

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "/cgi-bin/micromsg-bin/NewSyncAlbum"

    return-object v0
.end method
