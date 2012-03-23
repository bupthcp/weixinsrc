.class public Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/io/FileInputStream;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->f:Ljava/io/FileInputStream;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->c:Ljava/lang/String;

    iput p1, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->e:I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->d:Ljava/lang/String;

    iput v3, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->g:I

    iput v3, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->h:I

    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/16 v2, 0x280

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.NetSceneUploadHDHeadImg"

    const-string v1, "decode file fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    if-nez v1, :cond_1

    const-string v0, "MicroMsg.NetSceneUploadHDHeadImg"

    const-string v1, "Scale file fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x28

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.NetSceneUploadHDHeadImg"

    const-string v2, "open FileOutputStream fail"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->f:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->f:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->f:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 4

    const/4 v0, -0x1

    iput-object p2, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "MicroMsg.NetSceneUploadHDHeadImg"

    const-string v2, "imgPath is null or length = 0"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MicroMsg.NetSceneUploadHDHeadImg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The img does not exist, imgPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->f:Ljava/io/FileInputStream;

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->g:I

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->f:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget v1, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->g:I

    iget v2, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->h:I

    sub-int/2addr v1, v2

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->c:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->h:I

    invoke-static {v2, v3, v1}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;II)[B

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "MicroMsg.NetSceneUploadHDHeadImg"

    const-string v2, "readFromFile error"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->g()V

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg$MMReqRespUploadHDHeadImg;

    invoke-direct {v2}, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg$MMReqRespUploadHDHeadImg;-><init>()V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Req;

    iget v3, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->g:I

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Req;->a(I)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Req;

    iget v3, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->h:I

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Req;->b(I)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Req;

    iget v3, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->e:I

    invoke-virtual {v0, v3}, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Req;->c(I)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Req;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Req;->a([B)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Req;

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Req;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, p0}, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0
.end method

.method protected final a()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;->a()V

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->g()V

    return-void
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;

    const-string v1, "MicroMsg.NetSceneUploadHDHeadImg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "errType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p2, v5, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "MicroMsg.NetSceneUploadHDHeadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->g()V

    :goto_0
    return-void

    :cond_0
    if-eq p2, v5, :cond_1

    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    const-string v0, "MicroMsg.NetSceneUploadHDHeadImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ErrType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->g()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;->b_()I

    move-result v1

    const/4 v3, -0x4

    if-ne v1, v3, :cond_3

    const-string v1, "MicroMsg.NetSceneUploadHDHeadImg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retcode == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;->b_()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    const-string v0, "MicroMsg.NetSceneUploadHDHeadImg"

    const-string v1, "handleCertainError"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->g()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;->d()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->h:I

    iget v1, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->h:I

    iget v3, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->g:I

    if-ge v1, v3, :cond_5

    const-string v0, "MicroMsg.NetSceneUploadHDHeadImg"

    const-string v1, "doScene again"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v3, 0x3009

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMUploadHDHeadImg$Resp;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->g()V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/NetSceneUploadHDHeadImg;->a:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x2d

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method
