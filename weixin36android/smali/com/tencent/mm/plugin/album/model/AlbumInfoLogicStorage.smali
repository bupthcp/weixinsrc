.class public final Lcom/tencent/mm/plugin/album/model/AlbumInfoLogicStorage;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Resp;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListFPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListFPResponse;->e()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListFPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListFPResponse;->f()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->c()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListFPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListFPResponse;->f()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->c()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->f()I

    move-result v3

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListFP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListFPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListFPResponse;->f()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v0

    invoke-static {v3}, Lcom/tencent/mm/plugin/album/model/AlbumInfoLogicStorage;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->a([B)Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2, v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfoLogicStorage;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Resp;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListNPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListNPResponse;->d()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListNPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListNPResponse;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->c()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListNPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListNPResponse;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->c()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->f()I

    move-result v3

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/protocal/MMGetTLPhotoListNP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListNPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetTLPhotoListNPResponse;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v0

    invoke-static {v3}, Lcom/tencent/mm/plugin/album/model/AlbumInfoLogicStorage;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->a([B)Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2, v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfoLogicStorage;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;)Z
    .locals 4

    const-string v0, "MicroMsg.AlbumInfoLogicStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertPhotoList userName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p1, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;->e()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p1, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;->f()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->c()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v2

    iget-object v0, p1, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;->f()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->c()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->f()I

    move-result v3

    iget-object v0, p1, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListFP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListFPResponse;->f()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v0

    invoke-static {v3}, Lcom/tencent/mm/plugin/album/model/AlbumInfoLogicStorage;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->a([B)Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0, v2, v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfoLogicStorage;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListNP$Resp;)Z
    .locals 4

    const-string v0, "MicroMsg.AlbumInfoLogicStorage"

    const-string v1, "insertPhotoList"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p1, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListNP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListNPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListNPResponse;->d()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p1, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListNP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListNPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListNPResponse;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->c()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v2

    iget-object v0, p1, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListNP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListNPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListNPResponse;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->c()Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->f()I

    move-result v3

    iget-object v0, p1, Lcom/tencent/mm/plugin/album/protocal/MMGetAlbumPhotoListNP$Resp;->a:Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListNPResponse;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/GetAlbumPhotoListNPResponse;->e()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoData;->d()Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    move-result-object v0

    invoke-static {v3}, Lcom/tencent/mm/plugin/album/model/AlbumInfoLogicStorage;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->d()Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/protobuf/ByteString;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->a([B)Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0, v2, v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfoLogicStorage;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;)Z
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->J()Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/album/model/AlbumInfo;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/plugin/album/model/AlbumInfo;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;-><init>()V

    invoke-virtual {p2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->a(J)V

    invoke-virtual {p2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->a(I)V

    invoke-virtual {p3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->c(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->e(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->d()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->b(F)V

    invoke-virtual {p3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->c()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->a(F)V

    invoke-virtual {p3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->c(I)V

    invoke-virtual {p3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->b(I)V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;->a(Lcom/tencent/mm/plugin/album/model/AlbumInfo;)Z

    :goto_0
    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->j()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->a(J)V

    invoke-virtual {p2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoId;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->a(I)V

    invoke-virtual {p3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->c(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->e(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->d()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->b(F)V

    invoke-virtual {p3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->c()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->a(F)V

    invoke-virtual {p3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->c(I)V

    invoke-virtual {p3}, Lcom/tencent/mm/protocal/protobuf/AlbumPhotoAttr;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->b(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/plugin/album/model/AlbumInfoStorage;->a(Ljava/lang/String;Lcom/tencent/mm/plugin/album/model/AlbumInfo;)Z

    goto :goto_0
.end method
