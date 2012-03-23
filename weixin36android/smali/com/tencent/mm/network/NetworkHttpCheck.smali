.class public Lcom/tencent/mm/network/NetworkHttpCheck;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/net/HttpURLConnection;

.field private b:Lcom/tencent/mm/network/NetworkHttpCheck$IOnHttpConnectFinish;

.field private c:Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck;->b:Lcom/tencent/mm/network/NetworkHttpCheck$IOnHttpConnectFinish;

    iput-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck;->c:Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/NetworkHttpCheck;)Lcom/tencent/mm/network/NetworkHttpCheck$IOnHttpConnectFinish;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck;->b:Lcom/tencent/mm/network/NetworkHttpCheck$IOnHttpConnectFinish;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/network/NetworkHttpCheck;)Lcom/tencent/mm/network/NetworkHttpCheck$IOnHttpConnectFinish;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck;->b:Lcom/tencent/mm/network/NetworkHttpCheck$IOnHttpConnectFinish;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/network/NetworkHttpCheck;)Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck;->a:Ljava/net/HttpURLConnection;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/tencent/mm/network/NetworkHttpCheck$IOnHttpConnectFinish;)I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck;->a:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p2, p0, Lcom/tencent/mm/network/NetworkHttpCheck;->b:Lcom/tencent/mm/network/NetworkHttpCheck$IOnHttpConnectFinish;

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck;->a:Ljava/net/HttpURLConnection;

    const/16 v2, 0x7d0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck;->a:Ljava/net/HttpURLConnection;

    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    new-instance v0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;

    invoke-direct {v0, p0}, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;-><init>(Lcom/tencent/mm/network/NetworkHttpCheck;)V

    iput-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck;->c:Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck;->c:Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;

    invoke-virtual {v0}, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->start()V

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.NetworkHttpCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    goto :goto_0
.end method
