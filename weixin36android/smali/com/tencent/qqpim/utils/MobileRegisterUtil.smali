.class public Lcom/tencent/qqpim/utils/MobileRegisterUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/interfaces/ITimerHandler;
.implements Lcom/tencent/qqpim/utils/net/INetEngineObserver;


# static fields
.field private static final EXPIRED_TIMES:I = 0x1e

.field private static final MAXNetRetryTime:I = 0x3

.field private static final STATUS_GET_REG_STATUS:I = 0x1

.field private static final STATUS_GET_REG_STATUS_GETNO:I = 0x3

.field private static final STATUS_GET_SUPPORT_MODE:I = 0x2

.field private static final STATUS_REGISTER:I = 0x0

.field private static final STATUS_STOP:I = -0x1

.field private static final TIME_INTERVAL:I = 0x3e8


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentOperationStatus:I

.field private mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

.field private mMode:B

.field private mNetRetryTime:I

.field private mPWD:Ljava/lang/String;

.field private mTimer:Lcom/tencent/qqpim/UI/utils/SimpleTimer;

.field private mWaitingTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

    iput-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCallbackHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCurrentOperationStatus:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mAccount:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mPWD:Ljava/lang/String;

    iput-byte v2, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mMode:B

    iput-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mTimer:Lcom/tencent/qqpim/UI/utils/SimpleTimer;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mWaitingTime:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mNetRetryTime:I

    iput-object p1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCallbackHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructGetStatusData(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/tencent/qqpim/utils/MobileUtil;->getHeader(Ljava/lang/String;Landroid/content/Context;)LQQPIM/ReqHeader;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, LQQPIM/StatusReq;

    invoke-direct {v2}, LQQPIM/StatusReq;-><init>()V

    invoke-virtual {v2, v1}, LQQPIM/StatusReq;->setHeader(LQQPIM/ReqHeader;)V

    new-instance v1, Lcom/a/b/a/e;

    invoke-direct {v1}, Lcom/a/b/a/e;-><init>()V

    invoke-virtual {v1}, Lcom/a/b/a/e;->b()V

    const-string v3, "mobile"

    invoke-virtual {v1, v3}, Lcom/a/b/a/e;->c(Ljava/lang/String;)V

    const-string v3, "getRegStatus"

    invoke-virtual {v1, v3}, Lcom/a/b/a/e;->d(Ljava/lang/String;)V

    const-string v3, "cinfo"

    invoke-virtual {v1, v3, v2}, Lcom/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lcom/a/b/a/e;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/a/b/a/e;->a()[B

    move-result-object v1

    :try_start_0
    const-string v2, "DFG#$%^#%$RGHR(&*M<><"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/XxteaCryptor;->encrypt([B[B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private constructGetSupportModeData()[B
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->getQuerySupportModeRequest()LQQPIM/RegReq;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/a/b/a/e;

    invoke-direct {v2}, Lcom/a/b/a/e;-><init>()V

    invoke-virtual {v2}, Lcom/a/b/a/e;->b()V

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Lcom/a/b/a/e;->c(Ljava/lang/String;)V

    const-string v3, "validateMobile"

    invoke-virtual {v2, v3}, Lcom/a/b/a/e;->d(Ljava/lang/String;)V

    const-string v3, "cinfo"

    invoke-virtual {v2, v3, v1}, Lcom/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "UTF-8"

    invoke-virtual {v2, v1}, Lcom/a/b/a/e;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/a/b/a/e;->a()[B

    move-result-object v1

    :try_start_0
    const-string v2, "DFG#$%^#%$RGHR(&*M<><"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/XxteaCryptor;->encrypt([B[B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private constructRegisterData(Ljava/lang/String;Ljava/lang/String;B)[B
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->getRegisterRequest(Ljava/lang/String;Ljava/lang/String;B)LQQPIM/RegReq;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/a/b/a/e;

    invoke-direct {v2}, Lcom/a/b/a/e;-><init>()V

    invoke-virtual {v2}, Lcom/a/b/a/e;->b()V

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Lcom/a/b/a/e;->c(Ljava/lang/String;)V

    const-string v3, "validateMobile"

    invoke-virtual {v2, v3}, Lcom/a/b/a/e;->d(Ljava/lang/String;)V

    const-string v3, "cinfo"

    invoke-virtual {v2, v3, v1}, Lcom/a/b/a/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "UTF-8"

    invoke-virtual {v2, v1}, Lcom/a/b/a/e;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/a/b/a/e;->a()[B

    move-result-object v1

    :try_start_0
    const-string v2, "DFG#$%^#%$RGHR(&*M<><"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/XxteaCryptor;->encrypt([B[B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private doRetry()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mNetRetryTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mNetRetryTime:I

    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mNetRetryTime:I

    if-gt v1, v2, :cond_0

    iput v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mNetRetryTime:I

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCurrentOperationStatus:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mPWD:Ljava/lang/String;

    iget-byte v2, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mMode:B

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->register(Ljava/lang/String;Ljava/lang/String;B)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->startQueryIsSuccess()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->getSupportMode()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getQuerySupportModeRequest()LQQPIM/RegReq;
    .locals 2

    new-instance v0, LQQPIM/RegReq;

    invoke-direct {v0}, LQQPIM/RegReq;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/qqpim/utils/MobileUtil;->getHeader(Landroid/content/Context;)LQQPIM/ReqHeader;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, LQQPIM/RegReq;->setHeader(LQQPIM/ReqHeader;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, LQQPIM/RegReq;->setMd5pwd(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LQQPIM/RegReq;->setRegMethod(B)V

    goto :goto_0
.end method

.method private getRegisterRequest(Ljava/lang/String;Ljava/lang/String;B)LQQPIM/RegReq;
    .locals 2

    new-instance v0, LQQPIM/RegReq;

    invoke-direct {v0}, LQQPIM/RegReq;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/tencent/qqpim/utils/MobileUtil;->getHeader(Ljava/lang/String;Landroid/content/Context;)LQQPIM/ReqHeader;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, LQQPIM/RegReq;->setHeader(LQQPIM/ReqHeader;)V

    invoke-static {p2}, Lcom/tencent/qqpim/utils/QQPimUtils;->getMD5(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qqpim/utils/MD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/RegReq;->setMd5pwd(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, LQQPIM/RegReq;->setRegMethod(B)V

    goto :goto_0
.end method

.method private handleRegisterSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mTimer:Lcom/tencent/qqpim/UI/utils/SimpleTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mTimer:Lcom/tencent/qqpim/UI/utils/SimpleTimer;

    invoke-virtual {v0}, Lcom/tencent/qqpim/UI/utils/SimpleTimer;->stopTimer()Z

    :cond_0
    const/16 v0, 0x1d

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    return-void
.end method

.method private handleRegisterTimeOut()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCurrentOperationStatus:I

    const/16 v0, 0x1d

    const/16 v1, 0x66

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mAccount:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(IIILjava/lang/String;)V

    return-void
.end method

.method private initData()V
    .locals 2

    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCurrentOperationStatus:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mAccount:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mPWD:Ljava/lang/String;

    iput-byte v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mMode:B

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mTimer:Lcom/tencent/qqpim/UI/utils/SimpleTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mTimer:Lcom/tencent/qqpim/UI/utils/SimpleTimer;

    invoke-virtual {v0}, Lcom/tencent/qqpim/UI/utils/SimpleTimer;->stopTimer()Z

    :cond_0
    const/16 v0, 0x1e

    iput v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mWaitingTime:I

    return-void
.end method

.method private initHttpEngine()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/utils/net/HttpDown;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/utils/net/HttpDown;-><init>(Lcom/tencent/qqpim/utils/net/INetEngineObserver;)V

    iput-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

    iget-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/utils/net/HttpDown;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method private processGetStatusResponse(LQQPIM/StatusResp;)V
    .locals 3

    if-nez p1, :cond_0

    const/16 v0, 0x1d

    const/16 v1, 0x69

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, LQQPIM/StatusResp;->getHeader()LQQPIM/RespHeader;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/RespHeader;->getResult()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, -0x1

    iget v2, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCurrentOperationStatus:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->startQueryIsSuccess()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    invoke-direct {p0, v1, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    iget v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCurrentOperationStatus:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, LQQPIM/StatusResp;->getMobileno()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mAccount:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mAccount:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mAccount:Ljava/lang/String;

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "+86"

    invoke-static {v0}, Lcom/tencent/qqpim/utils/MobileUtil;->setAreaCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mAccount:Ljava/lang/String;

    const-string v1, "+86"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/utils/MobileUtil;->setAccount(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->handleRegisterSuccess()V

    goto :goto_0
.end method

.method private processGetSupportModeResponse(LQQPIM/RegResp;)V
    .locals 3

    const/16 v1, 0x1d

    const/16 v2, 0x1a

    if-nez p1, :cond_0

    const/16 v0, 0x67

    invoke-direct {p0, v1, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, LQQPIM/RegResp;->getHeader()LQQPIM/RespHeader;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/RespHeader;->getResult()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x6d

    invoke-direct {p0, v1, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LQQPIM/RegResp;->getRegMethod()B

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    const/16 v0, 0x6b

    invoke-direct {p0, v2, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x6c

    invoke-direct {p0, v2, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    goto :goto_0
.end method

.method private processInputStream(Ljava/io/InputStream;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/tencent/qqpim/utils/MobileUtil;->getUniPacketFromInputStream(Ljava/io/InputStream;)Lcom/a/b/a/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    const/16 v1, 0x67

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCurrentOperationStatus:I

    if-nez v2, :cond_2

    const-string v2, "sinfo"

    invoke-virtual {v0, v2}, Lcom/a/b/a/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/RegResp;

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->processRegisterResponse(LQQPIM/RegResp;)V

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCurrentOperationStatus:I

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    iget v3, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCurrentOperationStatus:I

    if-ne v2, v3, :cond_4

    :cond_3
    const-string v2, "sinfo"

    invoke-virtual {v0, v2}, Lcom/a/b/a/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/StatusResp;

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->processGetStatusResponse(LQQPIM/StatusResp;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x2

    iget v3, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCurrentOperationStatus:I

    if-ne v2, v3, :cond_1

    const-string v2, "sinfo"

    invoke-virtual {v0, v2}, Lcom/a/b/a/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/RegResp;

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->processGetSupportModeResponse(LQQPIM/RegResp;)V

    goto :goto_1
.end method

.method private processRegisterResponse(LQQPIM/RegResp;)V
    .locals 5

    const/16 v4, 0x1d

    if-nez p1, :cond_1

    const/16 v0, 0x67

    invoke-direct {p0, v4, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, LQQPIM/RegResp;->getHeader()LQQPIM/RespHeader;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/RespHeader;->getResult()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x1e

    invoke-direct {p0, v1, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LQQPIM/RegResp;->getAccessNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LQQPIM/RegResp;->getVerifyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LQQPIM/RegResp;->getRegMethod()B

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendSms(Ljava/lang/String;Ljava/lang/String;)Z

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->startTimer(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne v0, v2, :cond_0

    const/16 v0, 0x6a

    invoke-direct {p0, v4, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    goto :goto_0
.end method

.method private sendMsg(II)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendMsg(III)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendMsg(IIILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendSms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.qqpim.action_register_sms_sended"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-static {v2, v0, v1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {}, Lcom/tencent/a/b/f;->a()Lcom/tencent/a/b/f;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/tencent/a/b/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v0

    goto :goto_0
.end method

.method private startTimer(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mTimer:Lcom/tencent/qqpim/UI/utils/SimpleTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/UI/utils/SimpleTimer;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/UI/utils/SimpleTimer;-><init>(Lcom/tencent/qqpim/interfaces/ITimerHandler;)V

    iput-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mTimer:Lcom/tencent/qqpim/UI/utils/SimpleTimer;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mTimer:Lcom/tencent/qqpim/UI/utils/SimpleTimer;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpim/UI/utils/SimpleTimer;->startTimer(I)Z

    return-void
.end method


# virtual methods
.method public binaryPostResponse(ILorg/apache/http/HttpEntity;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x67

    const/16 v2, 0x1d

    const/4 v0, -0x1

    iget v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCurrentOperationStatus:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc8

    if-ne v0, p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->doRetry()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->initData()V

    const/16 v0, 0x1c

    invoke-direct {p0, v0, p1}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mNetRetryTime:I

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->processInputStream(Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v2, v3}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0, v2, v3}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-direct {p0, v2, v3}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getPWD()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mPWD:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportMode()V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->initHttpEngine()V

    invoke-direct {p0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->constructGetSupportModeData()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    const/16 v1, 0x67

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCurrentOperationStatus:I

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mAccount:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mPWD:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getMobileServerURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/utils/net/HttpDown;->binaryRequest(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public onTimeOut(I)V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mWaitingTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mWaitingTime:I

    iget v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mWaitingTime:I

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->handleRegisterTimeOut()V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1d

    const/16 v1, 0x6e

    iget v2, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mWaitingTime:I

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(III)V

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->startTimer(I)V

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 3

    invoke-direct {p0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->initHttpEngine()V

    invoke-direct {p0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->initData()V

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->constructRegisterData(Ljava/lang/String;Ljava/lang/String;B)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    const/16 v1, 0x67

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCurrentOperationStatus:I

    iput-object p1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mAccount:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mPWD:Ljava/lang/String;

    iput-byte p3, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mMode:B

    iget-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getMobileServerURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/utils/net/HttpDown;->binaryRequest(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public startQueryIsSuccess()V
    .locals 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mCurrentOperationStatus:I

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mAccount:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->constructGetStatusData(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    const/16 v1, 0x69

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getMobileServerURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpim/utils/net/HttpDown;->binaryRequest(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public stopRegister()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->initData()V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/net/HttpDown;->stopNetwork()V

    :cond_0
    const/16 v0, 0x1d

    const/16 v1, 0x68

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/utils/MobileRegisterUtil;->sendMsg(II)V

    return-void
.end method
