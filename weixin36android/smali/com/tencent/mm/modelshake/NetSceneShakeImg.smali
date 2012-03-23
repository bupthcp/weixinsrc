.class public Lcom/tencent/mm/modelshake/NetSceneShakeImg;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# static fields
.field private static a:Z


# instance fields
.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->a:Z

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    const-string v0, "MicroMsg.NetSceneShakeImg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetSceneShakeImg : imgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", totalLen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->e:I

    iput p2, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->f:I

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "default_shake_img_filename.jpg.tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/io/File;)V

    return-void
.end method

.method private a([B)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->g:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "default_shake_img_filename.jpg.tmp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->g:Ljava/io/FileOutputStream;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v0, p1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static e_()Z
    .locals 1

    sget-boolean v0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->a:Z

    return v0
.end method

.method private g()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->g:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->g:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->g:Ljava/io/FileOutputStream;
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
    .locals 3

    iput-object p2, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->a:Z

    new-instance v1, Lcom/tencent/mm/modelshake/NetSceneShakeImg$MMReqRespShakeImg;

    invoke-direct {v1}, Lcom/tencent/mm/modelshake/NetSceneShakeImg$MMReqRespShakeImg;-><init>()V

    invoke-interface {v1}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMShakeImg$Req;

    iget v2, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->d:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMShakeImg$Req;->a(I)V

    invoke-interface {v1}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMShakeImg$Req;

    iget v2, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->e:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMShakeImg$Req;->b(I)V

    invoke-interface {v1}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMShakeImg$Req;

    iget v2, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->f:I

    invoke-virtual {v0, v2}, Lcom/tencent/mm/protocal/MMShakeImg$Req;->c(I)V

    invoke-virtual {p0, p1, v1, p0}, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    return v0
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 2

    iget v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->e:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->f:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->e:I

    iget v1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->f:I

    if-le v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->c:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    goto :goto_0
.end method

.method protected final a()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;->a()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->a:Z

    invoke-direct {p0}, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->g()V

    return-void
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMShakeImg$Resp;

    const-string v1, "MicroMsg.NetSceneShakeImg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p2, v5, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "MicroMsg.NetSceneShakeImg"

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

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    sput-boolean v4, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->a:Z

    invoke-direct {p0}, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->g()V

    :goto_0
    return-void

    :cond_0
    if-eq p2, v5, :cond_1

    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    const-string v0, "MicroMsg.NetSceneShakeImg"

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

    sput-boolean v4, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->a:Z

    invoke-direct {p0}, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->g()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->f()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->a([B)I

    move-result v1

    if-gez v1, :cond_3

    const-string v0, "MicroMsg.NetSceneShakeImg"

    const-string v1, "appendBuf fail"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    sput-boolean v4, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->a:Z

    invoke-direct {p0}, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->g()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->e()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->e:I

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMShakeImg$Resp;->d()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->f:I

    iget v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->e:I

    iget v1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->f:I

    if-ge v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default_shake_img_filename.jpg.tmp"

    const-string v2, "default_shake_img_filename.jpg"

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->a:Z

    invoke-direct {p0}, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->g()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x100b

    iget v2, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x100d

    iget v2, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/modelshake/NetSceneShakeImg;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto/16 :goto_0
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x38

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method
