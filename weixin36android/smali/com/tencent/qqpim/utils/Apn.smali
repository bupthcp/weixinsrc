.class public Lcom/tencent/qqpim/utils/Apn;
.super Ljava/lang/Object;


# static fields
.field public static APN_3GNET:Ljava/lang/String; = null

.field public static APN_3GWAP:Ljava/lang/String; = null

.field public static APN_777:Ljava/lang/String; = null

.field public static APN_CMNET:Ljava/lang/String; = null

.field public static APN_CMWAP:Ljava/lang/String; = null

.field public static APN_CTNET:Ljava/lang/String; = null

.field public static APN_CTWAP:Ljava/lang/String; = null

.field public static final APN_NET:Ljava/lang/String; = "Net"

.field public static APN_UNINET:Ljava/lang/String; = null

.field public static APN_UNIWAP:Ljava/lang/String; = null

.field public static final APN_UNKNOWN:Ljava/lang/String; = "N/A"

.field public static final APN_WAP:Ljava/lang/String; = "Wap"

.field public static final APN_WIFI:Ljava/lang/String; = "Wlan"

.field public static IS_INIT:Z = false

.field public static M_APN_PORT:I = 0x0

.field public static M_APN_PROXY:Ljava/lang/String; = null

.field public static M_APN_TYPE:I = 0x0

.field public static M_PROXY_TYPE:B = 0x0t

.field public static M_USE_PROXY:Z = false

.field private static final PROXY_CTWAP:Ljava/lang/String; = "10.0.0.200"

.field public static final PROXY_TYPE_CM:B = 0x0t

.field public static final PROXY_TYPE_CT:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "Apn"

.field public static final TYPE_NET:I = 0x1

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_WAP:I = 0x2

.field public static final TYPE_WIFI:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    sput v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_TYPE:I

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_PORT:I

    sput-byte v1, Lcom/tencent/qqpim/utils/Apn;->M_PROXY_TYPE:B

    sput-boolean v1, Lcom/tencent/qqpim/utils/Apn;->M_USE_PROXY:Z

    sput-boolean v1, Lcom/tencent/qqpim/utils/Apn;->IS_INIT:Z

    const-string v0, "cmwap"

    sput-object v0, Lcom/tencent/qqpim/utils/Apn;->APN_CMWAP:Ljava/lang/String;

    const-string v0, "cmnet"

    sput-object v0, Lcom/tencent/qqpim/utils/Apn;->APN_CMNET:Ljava/lang/String;

    const-string v0, "3gwap"

    sput-object v0, Lcom/tencent/qqpim/utils/Apn;->APN_3GWAP:Ljava/lang/String;

    const-string v0, "3gnet"

    sput-object v0, Lcom/tencent/qqpim/utils/Apn;->APN_3GNET:Ljava/lang/String;

    const-string v0, "uniwap"

    sput-object v0, Lcom/tencent/qqpim/utils/Apn;->APN_UNIWAP:Ljava/lang/String;

    const-string v0, "uninet"

    sput-object v0, Lcom/tencent/qqpim/utils/Apn;->APN_UNINET:Ljava/lang/String;

    const-string v0, "ctwap"

    sput-object v0, Lcom/tencent/qqpim/utils/Apn;->APN_CTWAP:Ljava/lang/String;

    const-string v0, "ctnet"

    sput-object v0, Lcom/tencent/qqpim/utils/Apn;->APN_CTNET:Ljava/lang/String;

    const-string v0, "#777"

    sput-object v0, Lcom/tencent/qqpim/utils/Apn;->APN_777:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkInit()V
    .locals 2

    sget-boolean v0, Lcom/tencent/qqpim/utils/Apn;->IS_INIT:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-class v1, Lcom/tencent/qqpim/utils/Apn;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/qqpim/utils/Apn;->IS_INIT:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/qqpim/utils/Apn;->init()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqpim/utils/Apn;->IS_INIT:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static getApnName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "N/A"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "Wap"

    goto :goto_0

    :pswitch_2
    const-string v0, "Net"

    goto :goto_0

    :pswitch_3
    const-string v0, "Wlan"

    goto :goto_0

    :pswitch_4
    const-string v0, "N/A"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static init()V
    .locals 6

    const/4 v5, 0x1

    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    const-string v0, "Apn"

    const-string v1, " "

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Apn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "networkInfo : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_TYPE:I

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const-string v0, "Apn"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "typeName : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v2, 0x0

    sput v2, Lcom/tencent/qqpim/utils/Apn;->M_APN_TYPE:I

    :cond_0
    :goto_0
    const-string v2, "Apn"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "extraInfo : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v5, :cond_3

    const/4 v0, 0x4

    sput v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_TYPE:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/utils/Apn;->M_USE_PROXY:Z

    :cond_1
    :goto_1
    const-string v0, "Apn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "M_APN_TYPE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tencent/qqpim/utils/Apn;->M_APN_TYPE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Apn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "M_USE_PROXY : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/tencent/qqpim/utils/Apn;->M_USE_PROXY:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Apn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "M_APN_PROXY : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/qqpim/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Apn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "M_APN_PORT : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tencent/qqpim/utils/Apn;->M_APN_PORT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_9

    sget-object v1, Lcom/tencent/qqpim/utils/Apn;->APN_CMWAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/tencent/qqpim/utils/Apn;->APN_UNIWAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/tencent/qqpim/utils/Apn;->APN_3GWAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/tencent/qqpim/utils/Apn;->APN_CTWAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    const/4 v0, 0x2

    sput v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_TYPE:I

    :goto_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/utils/Apn;->M_USE_PROXY:Z

    sget v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_TYPE:I

    invoke-static {v0}, Lcom/tencent/qqpim/utils/Apn;->isProxyMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    sput v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_PORT:I

    sget-object v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    :cond_5
    sget-object v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, ""

    sget-object v1, Lcom/tencent/qqpim/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqpim/utils/Apn;->M_USE_PROXY:Z

    const/4 v0, 0x2

    sput v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_TYPE:I

    const-string v0, "10.0.0.200"

    sget-object v1, Lcom/tencent/qqpim/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    sput-byte v0, Lcom/tencent/qqpim/utils/Apn;->M_PROXY_TYPE:B

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/tencent/qqpim/utils/Apn;->APN_CMNET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/tencent/qqpim/utils/Apn;->APN_UNINET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/tencent/qqpim/utils/Apn;->APN_3GNET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/tencent/qqpim/utils/Apn;->APN_CTNET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v0, 0x1

    sput v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_TYPE:I

    goto :goto_3

    :cond_8
    sget-object v1, Lcom/tencent/qqpim/utils/Apn;->APN_777:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :cond_9
    const/4 v0, 0x0

    sput v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_TYPE:I

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    sput-byte v0, Lcom/tencent/qqpim/utils/Apn;->M_PROXY_TYPE:B

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/utils/Apn;->M_USE_PROXY:Z

    const/4 v0, 0x1

    sput v0, Lcom/tencent/qqpim/utils/Apn;->M_APN_TYPE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1
.end method

.method private static isProxyMode(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
