.class Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;
.super Ljava/lang/Thread;


# instance fields
.field a:Z

.field private synthetic b:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;->b:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;->a:Z

    move v1, v2

    :goto_0
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0xa

    if-le v1, v0, :cond_1

    iput-boolean v7, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;->a:Z

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;->b:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a(Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$QueueInfo;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$QueueInfo;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "MicroMsg.ReaderGetPic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread get :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$QueueInfo;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$QueueInfo;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$QueueInfo;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "MicroMsg.ReaderGetPic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread exist file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$QueueInfo;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/net/URL;

    iget-object v3, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$QueueInfo;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/16 v3, 0xbb8

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v3, 0xbb8

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v3, 0x400

    new-array v3, v3, [B

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$QueueInfo;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v2

    :goto_2
    move v1, v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$QueueInfo;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$QueueInfo;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget-object v3, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$QueueInfo;->a:Ljava/lang/String;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget v0, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$QueueInfo;->c:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;->b:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    iget-object v0, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_2
.end method
