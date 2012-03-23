.class public Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Req;
.super Lcom/tencent/mm/protocal/MMBase$Req;

# interfaces
.implements Lcom/tencent/mm/protocal/MMBase$ProtoBufRequest;


# instance fields
.field public a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protocal/MMBase$Req;-><init>()V

    new-instance v0, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x4d

    return v0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xb8

    return v0
.end method

.method public c()[B
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;

    invoke-static {p0}, Lcom/tencent/mm/protocal/MMBase;->a(Lcom/tencent/mm/protocal/MMBase$Req;)Lcom/tencent/mm/protocal/protobuf/BaseRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;->a(Lcom/tencent/mm/protocal/protobuf/BaseRequest;)Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Req;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPRequest;->b()[B

    move-result-object v0

    return-object v0
.end method
