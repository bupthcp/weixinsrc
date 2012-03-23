.class public Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Lcom/tencent/mm/plugin/qqmail/model/FileCache;

.field private c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

.field private d:Ljava/util/List;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->e:I

    iput v2, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->f:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->g:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->h:I

    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->e:I

    iput v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->i:I

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/model/FileCache;

    invoke-direct {v0, p1, v2}, Lcom/tencent/mm/plugin/qqmail/model/FileCache;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->b:Lcom/tencent/mm/plugin/qqmail/model/FileCache;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->b:Lcom/tencent/mm/plugin/qqmail/model/FileCache;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/model/FileCache;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/model/FileCache;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->a([B)Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->d:Ljava/util/List;

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->f:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->i:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;Ljava/util/Map;)V
    .locals 11

    const/4 v5, 0x0

    const-string v0, ".Response.result.Count"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->d()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    move v4, v0

    :goto_0
    move v7, v5

    :goto_1
    if-ge v7, v8, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".Response.result.List.item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lez v7, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Del"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Freq"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "Name"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "Addr"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move-object v2, v3

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->d()Ljava/util/LinkedList;

    move-result-object v10

    move v6, v5

    :goto_3
    if-nez v4, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->c()I

    move-result v0

    if-eq v0, v9, :cond_4

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    :cond_2
    move v4, v5

    goto/16 :goto_0

    :cond_3
    const-string v0, ""

    goto/16 :goto_2

    :cond_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    new-instance v6, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    invoke-direct {v6}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;-><init>()V

    invoke-virtual {v6, v9}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->a(I)Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->b(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->b(I)Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAddr;)Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    :cond_6
    :goto_4
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->d()Ljava/util/LinkedList;

    move-result-object v2

    move v1, v5

    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->c()I

    move-result v0

    if-ne v0, v9, :cond_8

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    const-string v0, ".Response.result.SyncInfo"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->b()V

    :cond_a
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/MailAddr;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->b(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->d:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->b:Lcom/tencent/mm/plugin/qqmail/model/FileCache;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/model/FileCache;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->b()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/FileCache;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->h:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->d()Ljava/util/LinkedList;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->i:I

    iget v2, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->f:I

    if-gt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final a()V
    .locals 5

    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->i:I

    iget v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->g:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;->a()V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->g:I

    iput v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->i:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "syncinfo"

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MicroMsg.Plugin.MailAddrMgr"

    const-string v2, "sync~~~"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v0

    const-string v2, "/cgi-bin/syncaddrlist"

    new-instance v3, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;-><init>(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;)V

    new-instance v4, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

    invoke-direct {v4}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;-><init>()V

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->b(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)J

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final a(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c:Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->d()Ljava/util/LinkedList;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->b()V

    goto :goto_0
.end method

.method public final b(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;

    if-ne v0, p1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
