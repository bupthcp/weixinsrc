.class public Lcom/tencent/qqpim/utils/HttpUtil;
.super Ljava/lang/Object;


# static fields
.field protected static final CONNECT_TIMEOUT:I = 0x3a98

.field public static final HEADER_DEFLATE:I = 0x1

.field public static final HEADER_MICROMSG_DOWNLOAD:I = 0x4

.field public static final HEADER_MICROMSG_UPLOAD:I = 0x3

.field public static final HEADER_NORMAL:I = 0x0

.field public static final HEADER_XML:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "HttpUtilTAG"

.field protected static final READ_TIMEOUT:I = 0x3a98

.field public static final TAG:Ljava/lang/String; = "HttpUtil"


# instance fields
.field private final READ_WRITE_SIZE:I

.field private detailMessage:Ljava/lang/String;

.field httpURLConnection:Ljava/net/HttpURLConnection;

.field private mContext:Landroid/content/Context;

.field private mDeflate:Z

.field private mPort:I

.field private mProxy:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->READ_WRITE_SIZE:I

    iput-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u9519\u8bef"

    iput-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->detailMessage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mDeflate:Z

    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    iput-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qqpim/utils/HttpUtil;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/utils/HttpUtil;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method private setDeflateHeaderInfo()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v2, "Nokia SyncML HTTP Client"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, "deflate"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Charset"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setMicroMsgAttDownloadHeaderInfo()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v2, "MicroMsg Android Client"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Encoding"

    const-string v2, "qzip"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setMicroMsgAttUploadHeaderInfo()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v2, "MicroMsg Android Client"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setNormalHeaderInfo()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v2, "Nokia SyncML HTTP Client"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setXmlHeaderInfo()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v2, "Nokia SyncML HTTP Client"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Accept-Charset"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/vnd.syncml+wbxml"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method public get()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    new-instance v0, Lcom/tencent/qqpim/exception/NetWorkException;

    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u51fa\u9519!"

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/exception/NetWorkException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentNetWorkType()Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_1

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;->UNAVAILABLE:Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;->WIFI:Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mProxy:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mPort:I

    sget-object v0, Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;->WAP:Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;->NET:Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;->UNKNOW:Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;

    goto :goto_0
.end method

.method public getInputStreamResponse()Ljava/io/InputStream;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "encoding:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v2, "Transfer-Encoding"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "deflate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    iget-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getResponse error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/tencent/qqpim/exception/NetWorkException;

    iget-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->detailMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/exception/NetWorkException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResponse()[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpim/utils/HttpUtil;->getResponse(Lcom/tencent/qqpim/utils/HttpUtil$IHttpProgress;)[B

    move-result-object v0

    return-object v0
.end method

.method public getResponse(Lcom/tencent/qqpim/utils/HttpUtil$IHttpProgress;)[B
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoding:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v3, "Transfer-Encoding"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mDeflate:Z

    if-nez v3, :cond_0

    if-eqz v1, :cond_2

    const-string v3, "deflate"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    iget-object v3, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    if-eqz p1, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7, v2}, Lcom/tencent/qqpim/utils/HttpUtil$IHttpProgress;->onProgress(ZII)V

    :cond_1
    :goto_1
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v1, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    const/4 v7, 0x0

    invoke-interface {p1, v7, v0, v2}, Lcom/tencent/qqpim/utils/HttpUtil$IHttpProgress;->onProgress(ZII)V

    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v6

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    new-instance v0, Lcom/tencent/qqpim/exception/NetWorkException;

    iget-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->detailMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/exception/NetWorkException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResposeCode()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    const/16 v0, 0x190

    goto :goto_0
.end method

.method public openConnection(I)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/qqpim/utils/HttpUtil;->getCurrentNetWorkType()Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;->UNAVAILABLE:Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/tencent/qqpim/exception/NetWorkException;

    iget-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->detailMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/exception/NetWorkException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    new-instance v0, Lcom/tencent/qqpim/exception/NetWorkException;

    iget-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->detailMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/exception/NetWorkException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    sget-object v2, Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;->WAP:Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpim/utils/HttpUtil$NetWorkType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mProxy:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mPort:I

    if-lez v1, :cond_1

    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mProxy:Ljava/lang/String;

    iget v5, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mPort:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mDeflate:Z

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Lcom/tencent/qqpim/utils/HttpUtil;->setNormalHeaderInfo()V

    :goto_1
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mDeflate:Z

    invoke-direct {p0}, Lcom/tencent/qqpim/utils/HttpUtil;->setDeflateHeaderInfo()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/qqpim/utils/HttpUtil;->setXmlHeaderInfo()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/qqpim/utils/HttpUtil;->setMicroMsgAttUploadHeaderInfo()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/tencent/qqpim/utils/HttpUtil;->setMicroMsgAttDownloadHeaderInfo()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public post([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqpim/utils/HttpUtil;->post([BLcom/tencent/qqpim/utils/HttpUtil$IHttpProgress;)V

    return-void
.end method

.method public post([BLcom/tencent/qqpim/utils/HttpUtil$IHttpProgress;)V
    .locals 6

    const/16 v0, 0x400

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v2, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v2, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    iget-object v2, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v2, p0, Lcom/tencent/qqpim/utils/HttpUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-interface {p2, v3, v4, v5}, Lcom/tencent/qqpim/utils/HttpUtil$IHttpProgress;->onProgress(ZII)V

    :cond_0
    :goto_0
    array-length v3, p1

    if-lt v1, v3, :cond_1

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    return-void

    :cond_1
    add-int v3, v1, v0

    array-length v4, p1

    if-le v3, v4, :cond_2

    array-length v0, p1

    sub-int/2addr v0, v1

    :cond_2
    invoke-virtual {v2, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    add-int/2addr v1, v0

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    array-length v4, p1

    invoke-interface {p2, v3, v1, v4}, Lcom/tencent/qqpim/utils/HttpUtil$IHttpProgress;->onProgress(ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    new-instance v0, Lcom/tencent/qqpim/exception/NetWorkException;

    iget-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->detailMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/tencent/qqpim/exception/NetWorkException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 5

    const-string v0, ""

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mUrl:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "&"

    const-string v1, "?"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mUrl:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/utils/HttpUtil;->mUrl:Ljava/lang/String;

    return-void
.end method
