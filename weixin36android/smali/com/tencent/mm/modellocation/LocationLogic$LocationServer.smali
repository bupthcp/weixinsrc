.class public Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/Set;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Thread;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->e:Z

    new-instance v0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$1;-><init>(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)V

    iput-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->b:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/storage/MsgInfo;)Ljava/lang/String;
    .locals 9

    const/4 v2, -0x1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->d:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfoStorage;->o(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$LocationContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$LocationContent;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v8, ""

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v6

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move-object v0, v8

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->b:Ljava/util/Set;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->b:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->d:Z

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static {v0}, Lcom/tencent/mm/storage/MsgInfo$LocationContent;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$LocationContent;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->b:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$LocationContent;->a()D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo$LocationContent;->b()D

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;-><init>(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;DDJ)V

    iget-object v1, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->b:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "MicroMsg.LocationServer"

    const-string v1, "mthread is not alive"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->f:Ljava/lang/Thread;

    new-instance v0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$AddressgeocodeThread;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$AddressgeocodeThread;-><init>(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;)V

    iput-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->f:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_8
    move-object v0, v8

    goto/16 :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->e:Z

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;)V
    .locals 8

    const/4 v6, -0x1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p1, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.LocationServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get from google info "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p1, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;->c:J

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->d:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/tencent/mm/storage/MsgInfo$LocationContent;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$LocationContent;

    move-result-object v5

    iget-object v0, p1, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer$LocationInfo;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/tencent/mm/storage/MsgInfo$LocationContent;->b(Ljava/lang/String;)V

    const-string v1, ""

    iget-boolean v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_2

    invoke-virtual {v4}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    :goto_0
    iget-boolean v1, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->d:Z

    invoke-virtual {v5, v1, v0}, Lcom/tencent/mm/storage/MsgInfo$LocationContent;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.LocationServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xml: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->b:Ljava/util/Set;

    iput-boolean p2, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modellocation/LocationLogic$LocationServer;->e:Z

    return-void
.end method
