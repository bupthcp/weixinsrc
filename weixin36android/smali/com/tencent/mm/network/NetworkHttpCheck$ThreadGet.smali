.class Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/tencent/mm/network/NetworkHttpCheck;

.field private b:I

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/network/NetworkHttpCheck;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->a:Lcom/tencent/mm/network/NetworkHttpCheck;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->b:I

    new-instance v0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet$1;-><init>(Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;Lcom/tencent/mm/network/NetworkHttpCheck;)V

    iput-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->b:I

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->b:I

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->a:Lcom/tencent/mm/network/NetworkHttpCheck;

    invoke-static {v1}, Lcom/tencent/mm/network/NetworkHttpCheck;->c(Lcom/tencent/mm/network/NetworkHttpCheck;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->a:Lcom/tencent/mm/network/NetworkHttpCheck;

    invoke-static {v2}, Lcom/tencent/mm/network/NetworkHttpCheck;->c(Lcom/tencent/mm/network/NetworkHttpCheck;)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v2

    add-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->a:Lcom/tencent/mm/network/NetworkHttpCheck;

    invoke-static {v0}, Lcom/tencent/mm/network/NetworkHttpCheck;->c(Lcom/tencent/mm/network/NetworkHttpCheck;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->a:Lcom/tencent/mm/network/NetworkHttpCheck;

    invoke-static {v0}, Lcom/tencent/mm/network/NetworkHttpCheck;->c(Lcom/tencent/mm/network/NetworkHttpCheck;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->a:Lcom/tencent/mm/network/NetworkHttpCheck;

    invoke-static {v0}, Lcom/tencent/mm/network/NetworkHttpCheck;->c(Lcom/tencent/mm/network/NetworkHttpCheck;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x2710

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->a:Lcom/tencent/mm/network/NetworkHttpCheck;

    invoke-static {v0}, Lcom/tencent/mm/network/NetworkHttpCheck;->c(Lcom/tencent/mm/network/NetworkHttpCheck;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MicroMsg.NetworkHttpCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThreadGet ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->a:Lcom/tencent/mm/network/NetworkHttpCheck;

    invoke-static {v3}, Lcom/tencent/mm/network/NetworkHttpCheck;->c(Lcom/tencent/mm/network/NetworkHttpCheck;)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Failed :"

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

    iput v0, p0, Lcom/tencent/mm/network/NetworkHttpCheck$ThreadGet;->b:I

    goto :goto_0
.end method
