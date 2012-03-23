.class Lcom/tencent/mm/modelfriend/AddrBookReadThread;
.super Ljava/lang/Thread;


# static fields
.field private static a:[B


# instance fields
.field private final b:Lcom/tencent/mm/modelfriend/AddrBookReadThread$CallBack;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private final h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->a:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/modelfriend/AddrBookReadThread$CallBack;)V
    .locals 1

    const-string v0, "addrbook-reader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/modelfriend/AddrBookReadThread$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelfriend/AddrBookReadThread$1;-><init>(Lcom/tencent/mm/modelfriend/AddrBookReadThread;)V

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->h:Landroid/os/Handler;

    iput-object p2, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->b:Lcom/tencent/mm/modelfriend/AddrBookReadThread$CallBack;

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->c:Landroid/content/Context;

    return-void
.end method

.method private static a(ILjava/util/List;)Ljava/util/List;
    .locals 10

    const/4 v9, 0x1

    if-nez p1, :cond_0

    const-string v0, "MicroMsg.AddrBookReadThread"

    const-string v1, "sync address book failed, null info list"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/tencent/mm/algorithm/CnToSpell;

    invoke-direct {v2}, Lcom/tencent/mm/algorithm/CnToSpell;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    aget-object v4, v0, v4

    aget-object v5, v0, v9

    const/4 v6, 0x2

    aget-object v6, v0, v6

    if-eqz v6, :cond_1

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    if-ne p0, v9, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez p0, :cond_3

    invoke-static {v6}, Lb/a/o;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/algorithm/MD5;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v7, Lcom/tencent/mm/modelfriend/AddrUpload;

    invoke-direct {v7}, Lcom/tencent/mm/modelfriend/AddrUpload;-><init>()V

    invoke-virtual {v7, v5}, Lcom/tencent/mm/modelfriend/AddrUpload;->d(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/tencent/mm/algorithm/CnToSpell;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/tencent/mm/modelfriend/AddrUpload;->e(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/tencent/mm/algorithm/CnToSpell;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/tencent/mm/modelfriend/AddrUpload;->f(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lcom/tencent/mm/modelfriend/AddrUpload;->c(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->b(Ljava/lang/String;)V

    if-ne p0, v9, :cond_4

    invoke-virtual {v7, v6}, Lcom/tencent/mm/modelfriend/AddrUpload;->l(Ljava/lang/String;)V

    :cond_4
    if-nez p0, :cond_5

    invoke-virtual {v7, v6}, Lcom/tencent/mm/modelfriend/AddrUpload;->k(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v7, p0}, Lcom/tencent/mm/modelfriend/AddrUpload;->b(I)V

    const/16 v0, 0x3876

    invoke-virtual {v7, v0}, Lcom/tencent/mm/modelfriend/AddrUpload;->a(I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/modelfriend/AddrBookReadThread;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/modelfriend/AddrBookReadThread;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/modelfriend/AddrBookReadThread;)Lcom/tencent/mm/modelfriend/AddrBookReadThread$CallBack;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->b:Lcom/tencent/mm/modelfriend/AddrBookReadThread$CallBack;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v1, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->a:[B

    monitor-enter v1

    :try_start_0
    const-string v0, "MicroMsg.AddrBookReadThread"

    const-string v2, "reading email info"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->c:Landroid/content/Context;

    invoke-static {v0}, Lb/a/o;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.AddrBookReadThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync address book email size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->d:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->g:Ljava/util/List;

    const-string v0, "MicroMsg.AddrBookReadThread"

    const-string v2, "reading mobile info"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->c:Landroid/content/Context;

    invoke-static {v0}, Lb/a/o;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v0, "MicroMsg.AddrBookReadThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sync address book mobile size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->e:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->a(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->f:Ljava/util/List;

    const-string v0, "MicroMsg.AddrBookReadThread"

    const-string v2, "reading done"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookReadThread;->h:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
