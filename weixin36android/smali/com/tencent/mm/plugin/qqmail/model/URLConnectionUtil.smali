.class public Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;
.super Lcom/tencent/mm/plugin/qqmail/model/HttpUtil;


# instance fields
.field private d:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private static a(Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;Ljava/io/OutputStream;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_1
    const-string v1, "&"

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;)Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;
    .locals 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v0, "MicroMsg.URLConnectionUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget v0, p3, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->a:I

    if-nez v0, :cond_5

    iget-object v0, p3, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->b:Ljava/util/Map;

    :goto_0
    invoke-static {p1, p2, v0}, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    sget v3, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->c:I

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    iget v0, p3, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->a:I

    if-nez v0, :cond_6

    const-string v0, "GET"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    const-string v3, "User-Agent"

    sget-object v4, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    const-string v3, "Host"

    sget-object v4, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http.keepAlive"

    const-string v3, "false"

    invoke-static {v0, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    const-string v3, "connection"

    const-string v4, "close"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    const-string v3, "Accept-Charset"

    const-string v4, "utf-8"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    const-string v3, "Accept-Encoding"

    const-string v4, "compress;q=0.5, gzip;q=1.0"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    const-string v3, "Cookie"

    iget-object v4, p3, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->c:Ljava/util/Map;

    invoke-static {v4}, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v3

    :try_start_1
    iget v0, p3, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->a:I

    if-ne v0, v5, :cond_0

    invoke-static {p3, v3}, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->a(Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;Ljava/io/OutputStream;)V

    :cond_0
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    const-string v4, "set-cookie"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    const-string v5, "Content-Encoding"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-eqz v5, :cond_d

    :try_start_2
    const-string v2, "gzip"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_3
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_7

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_4
    :try_start_4
    new-instance v0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    if-nez v1, :cond_1

    const/16 v1, 0x1f7

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v0, v1, v4, v5}, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;-><init>(ILjava/util/Map;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_5
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_6
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    :goto_7
    return-object v0

    :cond_5
    move-object v0, v2

    goto/16 :goto_0

    :cond_6
    :try_start_7
    const-string v0, "POST"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_1

    :cond_7
    :try_start_8
    new-instance v0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    invoke-static {v4}, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1, v4, v6}, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;-><init>(ILjava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V

    const-string v4, "MicroMsg.URLConnectionUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v3, :cond_8

    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :cond_9
    :goto_9
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_a
    if-eqz v3, :cond_a

    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_a
    :goto_b
    if-eqz v2, :cond_b

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :cond_b
    :goto_c
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw v0

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_b

    :catch_6
    move-exception v1

    goto :goto_c

    :catchall_1
    move-exception v0

    goto :goto_a

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v3, v2

    goto/16 :goto_4

    :catch_8
    move-exception v2

    move-object v2, v0

    goto/16 :goto_4

    :cond_d
    move-object v2, v0

    goto/16 :goto_2
.end method

.method public final a()V
    .locals 2

    const-string v0, "MicroMsg.URLConnectionUtil"

    const-string v1, "cancel conection."

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method
