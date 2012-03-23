.class public Lcom/tencent/qqpim/model/MobileLoginModel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpim/interfaces/ILoginModel;
.implements Lcom/tencent/qqpim/utils/net/INetEngineObserver;


# static fields
.field private static final MAXNetRetryTime:I = 0x3


# instance fields
.field private configDao:Lcom/tencent/qqpim/interfaces/IConfigDao;

.field protected cryptType:I

.field protected ctrlRecord:Ljava/lang/String;

.field protected imei:Ljava/lang/String;

.field protected lcString:Ljava/lang/String;

.field protected loginAccount:Ljava/lang/String;

.field protected loginKey:Ljava/lang/String;

.field protected loginUtil:Lcom/tencent/tccsync/LoginUtil;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

.field private mNetRetryTime:I

.field protected md5Password:[B

.field protected md5PimPws:[B

.field protected serverHost:Ljava/lang/String;

.field private userStopped:Z

.field protected verifyCode:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->configDao:Lcom/tencent/qqpim/interfaces/IConfigDao;

    iput-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

    iput-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mHandler:Landroid/os/Handler;

    iput v1, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mNetRetryTime:I

    iput-boolean v1, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->userStopped:Z

    invoke-static {p1}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->configDao:Lcom/tencent/qqpim/interfaces/IConfigDao;

    iput-object p1, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private constructLoginData(Ljava/lang/String;[B)[B
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/model/MobileLoginModel;->getLoginRequest(Ljava/lang/String;[B)LQQPIM/LoginReq;

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

    const-string v3, "mobileLogin"

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

    iget v1, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mNetRetryTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mNetRetryTime:I

    const/4 v1, 0x3

    iget v2, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mNetRetryTime:I

    if-gt v1, v2, :cond_0

    iput v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mNetRetryTime:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->loginAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->md5Password:[B

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qqpim/model/MobileLoginModel;->loginByMd5(Ljava/lang/String;[B)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/tencent/qqpim/interfaces/ILoginModel;
    .locals 1

    new-instance v0, Lcom/tencent/qqpim/model/MobileLoginModel;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qqpim/model/MobileLoginModel;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method private getLoginRequest(Ljava/lang/String;[B)LQQPIM/LoginReq;
    .locals 2

    new-instance v0, LQQPIM/LoginReq;

    invoke-direct {v0}, LQQPIM/LoginReq;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/tencent/qqpim/utils/MobileUtil;->getHeader(Ljava/lang/String;Landroid/content/Context;)LQQPIM/ReqHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/LoginReq;->setHeader(LQQPIM/ReqHeader;)V

    invoke-static {p2}, Lcom/tencent/qqpim/utils/MD5Util;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/LoginReq;->setMd5pwd(Ljava/lang/String;)V

    return-object v0
.end method

.method private initHttpEngine()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/utils/net/HttpDown;

    invoke-direct {v0, p0}, Lcom/tencent/qqpim/utils/net/HttpDown;-><init>(Lcom/tencent/qqpim/utils/net/INetEngineObserver;)V

    iput-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

    iget-object v1, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpim/utils/net/HttpDown;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method private processInputStream(Ljava/io/InputStream;)Z
    .locals 3

    invoke-static {p1}, Lcom/tencent/qqpim/utils/MobileUtil;->getUniPacketFromInputStream(Ljava/io/InputStream;)Lcom/a/b/a/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "sinfo"

    invoke-virtual {v0, v2}, Lcom/a/b/a/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/LoginResp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0, v0}, Lcom/tencent/qqpim/model/MobileLoginModel;->processLoginResponse(LQQPIM/LoginResp;)V

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x1d

    const/16 v2, 0x67

    invoke-direct {p0, v0, v2}, Lcom/tencent/qqpim/model/MobileLoginModel;->sendMsg(II)V

    move-object v0, v1

    goto :goto_1
.end method

.method private processLoginResponse(LQQPIM/LoginResp;)V
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_0

    const/16 v0, 0x1d

    const/16 v1, 0x67

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/model/MobileLoginModel;->sendMsg(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, LQQPIM/LoginResp;->getHeader()LQQPIM/RespHeader;

    move-result-object v0

    invoke-virtual {v0}, LQQPIM/RespHeader;->getResult()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x1e

    invoke-direct {p0, v1, v0}, Lcom/tencent/qqpim/model/MobileLoginModel;->sendMsg(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LQQPIM/LoginResp;->getLoginKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->loginKey:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->loginKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/utils/LoginInformation;->setLoginKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->loginAccount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/utils/LoginInformation;->setLoginedAccount(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/tencent/qqpim/utils/LoginInformation;->setLogined(Z)V

    invoke-direct {p0, v3, v0}, Lcom/tencent/qqpim/model/MobileLoginModel;->sendMsg(II)V

    goto :goto_0
.end method

.method private sendMsg(II)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public addSavedAccount([Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    if-lt v1, p3, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->configDao:Lcom/tencent/qqpim/interfaces/IConfigDao;

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->SAVED_MOBILE_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/tencent/qqpim/interfaces/IConfigDao;->setStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p2, v1

    invoke-static {v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->getBase64CodeFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, p3, -0x1

    if-eq v1, v2, :cond_2

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public binaryPostResponse(ILorg/apache/http/HttpEntity;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x67

    const/16 v2, 0x1d

    iget-boolean v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->userStopped:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/qqpim/utils/LoginInformation;->getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpim/utils/LoginInformation;->clearLoginInformation()V

    const/4 v0, 0x1

    const/16 v1, -0x3e8

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/model/MobileLoginModel;->sendMsg(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc8

    if-ne v0, p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/tencent/qqpim/model/MobileLoginModel;->doRetry()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1c

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/model/MobileLoginModel;->sendMsg(II)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mNetRetryTime:I

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpim/model/MobileLoginModel;->processInputStream(Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    const/16 v1, 0x67

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpim/model/MobileLoginModel;->sendMsg(II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v2, v3}, Lcom/tencent/qqpim/model/MobileLoginModel;->sendMsg(II)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0, v2, v3}, Lcom/tencent/qqpim/model/MobileLoginModel;->sendMsg(II)V

    goto :goto_0
.end method

.method public getDefaultAccount()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->configDao:Lcom/tencent/qqpim/interfaces/IConfigDao;

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->DEFAULT_MOBILE_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPWD()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->configDao:Lcom/tencent/qqpim/interfaces/IConfigDao;

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->DEFAULT_MOBILE_MD5PWD:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->getStringFromBase64Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->loginKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedAccount([Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 6

    const/4 v1, 0x0

    const-string v0, "MobileLoginModel"

    const-string v2, "getSavedAccount enter"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->configDao:Lcom/tencent/qqpim/interfaces/IConfigDao;

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->SAVED_MOBILE_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MobileLoginModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "accounts = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    :try_start_0
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v0, v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    if-le v0, p3, :cond_1

    :goto_0
    move v0, v1

    :goto_1
    if-lt v0, p3, :cond_0

    :goto_2
    const-string v0, "MobileLoginModel"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSavedAccount leave ret ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v1, p3

    :goto_3
    return v1

    :cond_0
    :try_start_1
    aget-object v3, v2, v0

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v2, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v0

    aget-object v4, v2, v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->getStringFromBase64Code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "MobileLoginModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSavedAccount NullPointerException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v2, "MobileLoginModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSavedAccount PatternSyntaxException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v2, "MobileLoginModel"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSavedAccount Throwable "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    move p3, v0

    goto/16 :goto_0

    :cond_2
    move p3, v1

    goto/16 :goto_2
.end method

.method public getSavedLoginPWDFlag()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->configDao:Lcom/tencent/qqpim/interfaces/IConfigDao;

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->AUTO_LOGIN_FLAG_MOBILE:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v0, v1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getBooleanValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Z

    move-result v0

    return v0
.end method

.method public getVerifyImageURL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public inputPimMD5Password([B)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inputPimPassword(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inputVerifyCode(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUserStopped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->userStopped:Z

    return v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loginByMd5(Ljava/lang/String;[B)I
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->userStopped:Z

    invoke-direct {p0}, Lcom/tencent/qqpim/model/MobileLoginModel;->initHttpEngine()V

    iput-object p1, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->loginAccount:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->md5Password:[B

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpim/model/MobileLoginModel;->constructLoginData(Ljava/lang/String;[B)[B

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v0, 0xc9

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->mHttpEngine:Lcom/tencent/qqpim/utils/net/HttpDown;

    invoke-static {}, Lcom/tencent/qqpim/utils/QQPimUtils;->getMobileServerURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/tencent/qqpim/utils/net/HttpDown;->binaryRequest(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public setDefaultAccount(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->configDao:Lcom/tencent/qqpim/interfaces/IConfigDao;

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->DEFAULT_MOBILE_ACCOUNT:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v0, v1, p1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->setStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultPWD(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->configDao:Lcom/tencent/qqpim/interfaces/IConfigDao;

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->DEFAULT_MOBILE_MD5PWD:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-static {p1}, Lcom/tencent/qqpim/utils/QQPimUtils;->getBase64CodeFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao;->setStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;Ljava/lang/String;)V

    return-void
.end method

.method public setSavedLoginPWDFlag(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->configDao:Lcom/tencent/qqpim/interfaces/IConfigDao;

    sget-object v1, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->AUTO_LOGIN_FLAG_MOBILE:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v0, v1, p1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->setBooleanValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;Z)V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "MobileLoginModel"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/model/MobileLoginModel;->userStopped:Z

    return-void
.end method
