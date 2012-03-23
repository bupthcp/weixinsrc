.class public Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/network/IReqResp;

.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const-string v0, "MicroMsg.NetSceneGetAlbumPhotoListFP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->d:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP$MMReqRespAlbumPhotoListFP;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP$MMReqRespAlbumPhotoListFP;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->a:Lcom/tencent/mm/network/IReqResp;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-interface {v0}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Req;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->K()Lcom/tencent/mm/plugin/album/model/AlbumExtStorage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/mm/plugin/album/model/AlbumExtStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->e:Ljava/lang/String;

    const-string v1, "MicroMsg.NetSceneGetAlbumPhotoListFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " md5 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;

    invoke-virtual {v1, p1}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;->a(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;

    iget-object v1, v0, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;->b(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;

    iget-object v0, v0, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;->c()Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 1

    iput-object p2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->a:Lcom/tencent/mm/network/IReqResp;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->b(I)V

    const-string v0, "MicroMsg.NetSceneGetAlbumPhotoListFP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "netId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;->b_()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "MicroMsg.NetSceneGetAlbumPhotoListFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photo md5 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->K()Lcom/tencent/mm/plugin/album/model/AlbumExtStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/plugin/album/model/AlbumExtStorage;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v1, "MicroMsg.NetSceneGetAlbumPhotoListFP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photo count :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->J()Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;->a()Z

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfoLogicStorage;->a(Ljava/lang/String;Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;)Z

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/model/NetSceneGetAlbumPhotoListFP;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x4c

    return v0
.end method
