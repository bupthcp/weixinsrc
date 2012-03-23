.class Lcom/tencent/mm/modelfriend/AddrBookObserver$1;
.super Landroid/os/Handler;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private synthetic c:Lcom/tencent/mm/modelfriend/AddrBookObserver;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelfriend/AddrBookObserver;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    return-void
.end method

.method private static a(Ljava/util/List;II)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 9

    new-instance v1, Lcom/tencent/mm/platformtools/TimeLogger;

    const-string v0, "MicroMsg.AddrBookObserver"

    const-string v2, "delete"

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/platformtools/TimeLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->e(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/o;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-static {v5}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v0, v0, v6

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "MicroMsg.AddrBookObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->t()Lcom/tencent/mm/modelfriend/AddrUploadStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelfriend/AddrUploadStorage;->a(Ljava/util/List;)Z

    :cond_2
    const-string v0, "end"

    invoke-virtual {v1, v0}, Lcom/tencent/mm/platformtools/TimeLogger;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/platformtools/TimeLogger;->a()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-wide/16 v5, 0xfa

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    invoke-virtual {p0, v3}, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->sendEmptyMessage(I)Z

    :cond_3
    :goto_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    :cond_4
    invoke-static {}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->c()Z

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->c(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/modelfriend/AddrBookObserver$OnSyncAddrBookOkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->c(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/modelfriend/AddrBookObserver$OnSyncAddrBookOkListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver$OnSyncAddrBookOkListener;->a()V

    goto :goto_0

    :cond_5
    const-string v0, "MicroMsg.AddrBookObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync email index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v1}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    add-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v1}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    iget v2, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    add-int/lit8 v2, v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->b:Ljava/util/List;

    :goto_2
    const-string v0, "MicroMsg.AddrBookObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync email listToSync size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/FriendLogic;->a(Ljava/util/List;)V

    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v2}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->a(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->b:Ljava/util/List;

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v3}, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->sendEmptyMessage(I)Z

    iput v4, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    goto/16 :goto_1

    :cond_8
    const-string v0, "MicroMsg.AddrBookObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync mobile index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v1}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    add-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v1}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    iget v2, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    add-int/lit8 v2, v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->b:Ljava/util/List;

    :goto_3
    const-string v0, "MicroMsg.AddrBookObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync mobile listToSync size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/FriendLogic;->a(Ljava/util/List;)V

    iget v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    add-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    invoke-virtual {p0, v3, v5, v6}, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    iget-object v2, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v2}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->b(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->b:Ljava/util/List;

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->c()Z

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->c(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/modelfriend/AddrBookObserver$OnSyncAddrBookOkListener;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a()V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->d(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/platformtools/TimeLogger;

    move-result-object v0

    const-string v1, "sync ok"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/platformtools/TimeLogger;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->d(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/platformtools/TimeLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/TimeLogger;->a()V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->c(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/modelfriend/AddrBookObserver$OnSyncAddrBookOkListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver$OnSyncAddrBookOkListener;->a()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->d(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/platformtools/TimeLogger;

    move-result-object v0

    const-string v1, "sync ok"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/platformtools/TimeLogger;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->c:Lcom/tencent/mm/modelfriend/AddrBookObserver;

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/AddrBookObserver;->d(Lcom/tencent/mm/modelfriend/AddrBookObserver;)Lcom/tencent/mm/platformtools/TimeLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/TimeLogger;->a()V

    iput v4, p0, Lcom/tencent/mm/modelfriend/AddrBookObserver$1;->a:I

    goto/16 :goto_0
.end method
