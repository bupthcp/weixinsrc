.class public Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;

.field b:Landroid/os/Handler;

.field private c:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;

.field private d:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->c:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->d:Ljava/util/concurrent/BlockingQueue;

    iput-object v2, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;

    new-instance v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$1;-><init>(Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->b:Landroid/os/Handler;

    iput-object v2, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->c:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;

    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/reader_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->d:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public static a(I)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reader_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    invoke-static {p1, p2}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.ReaderGetPic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPicfileByUrl type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->d:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$QueueInfo;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$QueueInfo;-><init>(Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->c:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->c:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;-><init>(Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->c:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->c:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->c:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->c:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;->a:Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->c:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$ThrGetPic;

    return-void
.end method

.method public final a(Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;)V
    .locals 3

    const-string v0, "MicroMsg.ReaderGetPic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeListener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;

    return-void
.end method

.method public final b(Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;)V
    .locals 3

    const-string v0, "MicroMsg.ReaderGetPic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a:Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService$OnDownSucc;

    return-void
.end method
