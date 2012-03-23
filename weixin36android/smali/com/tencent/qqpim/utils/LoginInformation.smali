.class public Lcom/tencent/qqpim/utils/LoginInformation;
.super Ljava/lang/Object;


# static fields
.field private static inf:Lcom/tencent/qqpim/utils/LoginInformation;


# instance fields
.field private loginKey:Ljava/lang/String;

.field private logined:Z

.field private loginedAccount:Ljava/lang/String;

.field private loginedNeedResponse:Z

.field private registerOkAndReadyForLogin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/utils/LoginInformation;->inf:Lcom/tencent/qqpim/utils/LoginInformation;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/qqpim/utils/LoginInformation;->logined:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/utils/LoginInformation;->loginedNeedResponse:Z

    iput-boolean v0, p0, Lcom/tencent/qqpim/utils/LoginInformation;->registerOkAndReadyForLogin:Z

    return-void
.end method

.method public static getInf()Lcom/tencent/qqpim/utils/LoginInformation;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/utils/LoginInformation;->inf:Lcom/tencent/qqpim/utils/LoginInformation;

    return-object v0
.end method

.method public static getSingleInstance()Lcom/tencent/qqpim/utils/LoginInformation;
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/utils/LoginInformation;->inf:Lcom/tencent/qqpim/utils/LoginInformation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpim/utils/LoginInformation;

    invoke-direct {v0}, Lcom/tencent/qqpim/utils/LoginInformation;-><init>()V

    sput-object v0, Lcom/tencent/qqpim/utils/LoginInformation;->inf:Lcom/tencent/qqpim/utils/LoginInformation;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/utils/LoginInformation;->inf:Lcom/tencent/qqpim/utils/LoginInformation;

    return-object v0
.end method

.method public static setInf(Lcom/tencent/qqpim/utils/LoginInformation;)V
    .locals 0

    sput-object p0, Lcom/tencent/qqpim/utils/LoginInformation;->inf:Lcom/tencent/qqpim/utils/LoginInformation;

    return-void
.end method


# virtual methods
.method public clearLoginInformation()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/utils/LoginInformation;->loginKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/utils/LoginInformation;->loginedAccount:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/utils/LoginInformation;->logined:Z

    return-void
.end method

.method public getLoginKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/LoginInformation;->loginKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginedAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/LoginInformation;->loginedAccount:Ljava/lang/String;

    return-object v0
.end method

.method public isLogined()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/utils/LoginInformation;->logined:Z

    return v0
.end method

.method public isLoginedNeedResponse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/utils/LoginInformation;->loginedNeedResponse:Z

    return v0
.end method

.method public isRegisterOkAndReadyForLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/utils/LoginInformation;->registerOkAndReadyForLogin:Z

    return v0
.end method

.method public setLoginKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/utils/LoginInformation;->loginKey:Ljava/lang/String;

    return-void
.end method

.method public setLogined(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/utils/LoginInformation;->logined:Z

    return-void
.end method

.method public setLoginedAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/utils/LoginInformation;->loginedAccount:Ljava/lang/String;

    return-void
.end method

.method public setLoginedNeedResponse(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/utils/LoginInformation;->loginedNeedResponse:Z

    return-void
.end method

.method public setRegisterOkAndReadyForLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/utils/LoginInformation;->registerOkAndReadyForLogin:Z

    return-void
.end method
