.class public Lcom/tencent/qqpim/utils/HttpHelper;
.super Ljava/lang/Object;


# static fields
.field protected static final CONNECT_TIMEOUT:I = 0x3a98

.field private static final Connenction_cmnet:I = 0x2

.field private static final Connenction_cmwap:I = 0x1

.field private static final Connenction_wifi:I = 0x0

.field protected static final LOGIN_ACCEPT_TYPE:Ljava/lang/String; = "*/*"

.field protected static final LOGIN_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field protected static final READ_TIMEOUT:I = 0x3a98

.field protected static final RETRY_INTERVAL:I = 0x3a98

.field protected static final SYNC_ACCEPT_TYPE:Ljava/lang/String; = "application/vnd.syncml+wbxml"

.field protected static final SYNC_CONTENT_TYPE:Ljava/lang/String; = "application/vnd.syncml+wbxml"

.field public static final TAG:Ljava/lang/String; = "HttpHelper"


# instance fields
.field protected httpConn:Ljava/net/HttpURLConnection;

.field protected postSucceed:Z

.field responseCode:I

.field private wapurl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->postSucceed:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->responseCode:I

    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->wapurl:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpim/utils/Apn;->init()V

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method protected static getBytesFromIS(Ljava/io/InputStream;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method public static isNetworkConnected()Z
    .locals 2

    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->responseCode:I

    return v0
.end method

.method protected post(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I
    .locals 11

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v9, 0x1

    iput-boolean v1, p0, Lcom/tencent/qqpim/utils/HttpHelper;->postSucceed:Z

    :try_start_0
    array-length v4, p2

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/qqpim/utils/Apn;->M_USE_PROXY:Z

    if-eqz v0, :cond_3

    const-string v0, "HttpHelper"

    const-string v3, "USE PROXY"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HttpHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "PROXY : "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/tencent/qqpim/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/16 v6, 0x2f

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-gez v6, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    move-object v10, v0

    move-object v0, v3

    move-object v3, v10

    :goto_0
    const-string v6, "HttpHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Host : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "HttpHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Path : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-byte v6, Lcom/tencent/qqpim/utils/Apn;->M_PROXY_TYPE:B

    if-ne v6, v9, :cond_1

    const-string v0, "HttpHelper"

    const-string v3, "PROXY_TYPE : CT"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v6, Ljava/net/InetSocketAddress;

    sget-object v7, Lcom/tencent/qqpim/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    const/16 v8, 0x50

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v3, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v5, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    const/16 v3, 0x3a98

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    const/16 v3, 0x3a98

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    const-string v3, "Accept"

    invoke-virtual {v0, v3, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    const-string v3, "Content-Type"

    invoke-virtual {v0, v3, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    const-string v3, "Content-length"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    const-string v3, "User-Agent"

    const-string v4, "mQQPim"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const-string v3, "post"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " responseCode=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-ne v3, v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->postSucceed:Z

    move v0, v1

    :goto_2
    return v0

    :cond_0
    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v0

    move-object v0, v3

    move-object v3, v10

    goto/16 :goto_0

    :cond_1
    const-string v5, "HttpHelper"

    const-string v6, "PROXY_TYPE : CM"

    invoke-static {v5, v6}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/tencent/qqpim/utils/Apn;->M_APN_PROXY:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    const-string v5, "X-Online-Host"

    invoke-virtual {v0, v5, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "post"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HttpHelper::post exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v0, ""

    :cond_2
    invoke-static {v1, v0}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public postLcCheck(Ljava/lang/String;[B)I
    .locals 2

    const-string v0, "*/*"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tencent/qqpim/utils/HttpHelper;->post(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public postLogin(Ljava/lang/String;[B)I
    .locals 2

    const-string v0, "*/*"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tencent/qqpim/utils/HttpHelper;->post(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public postOperatingData(Ljava/lang/String;[B)I
    .locals 2

    const-string v0, "application/vnd.syncml+wbxml"

    const-string v1, "application/vnd.syncml+wbxml"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tencent/qqpim/utils/HttpHelper;->post(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public postRemoteSyncCheck(Ljava/lang/String;[B)I
    .locals 2

    const-string v0, "application/vnd.syncml+wbxml"

    const-string v1, "application/vnd.syncml+wbxml"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/tencent/qqpim/utils/HttpHelper;->post(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public postSync(Ljava/lang/String;[B)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const-string v0, "postSync"

    const-string v2, "start post"

    invoke-static {v0, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.syncml+wbxml"

    const-string v2, "application/vnd.syncml+wbxml"

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/tencent/qqpim/utils/HttpHelper;->post(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v2, "postSync"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "post res: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retryCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    :cond_2
    const-wide/16 v2, 0x3a98

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "postSync"

    const-string v2, "\u91cd\u8bd5\u7ebf\u7a0binterrupted"

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public recv()[B
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->postSucceed:Z

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/utils/HttpHelper;->getBytesFromIS(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public syncRecv()[B
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/tencent/qqpim/utils/HttpHelper;->postSucceed:Z

    if-nez v2, :cond_4

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v0, "syncRecv"

    const-string v3, "start rcv"

    invoke-static {v0, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qqpim/utils/HttpHelper;->getBytesFromIS(Ljava/io/InputStream;)[B

    move-result-object v0

    const-string v4, "syncRecv"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "rcv res: "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_3

    const-string v3, "null"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-nez v0, :cond_2

    const-wide/16 v3, 0x3a98

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    :goto_3
    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    :cond_2
    :goto_4
    iget-object v2, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    iput-object v1, p0, Lcom/tencent/qqpim/utils/HttpHelper;->httpConn:Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_3
    :try_start_2
    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v2, "syncRecv"

    const-string v3, "\u91cd\u8bd5\u7ebf\u7a0binterrupted"

    invoke-static {v2, v3}, Lcom/tencent/qqpim/utils/QQPimUtils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move v2, v0

    move-object v0, v1

    goto :goto_3
.end method
