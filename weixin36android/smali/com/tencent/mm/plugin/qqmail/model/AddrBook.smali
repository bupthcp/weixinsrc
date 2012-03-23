.class public Lcom/tencent/mm/plugin/qqmail/model/AddrBook;
.super Lcom/tencent/mm/protobuf/BaseProtoBuf;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/util/LinkedList;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->d:Ljava/util/LinkedList;

    return-void
.end method

.method public static a([B)Lcom/tencent/mm/plugin/qqmail/model/AddrBook;
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Lc/a/a/b/a;

    sget-object v0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->a:Lc/a/a/b/a/b;

    invoke-direct {v4, p0, v0}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    invoke-static {v4}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->a(Lc/a/a/b/a;)I

    move-result v0

    new-instance v5, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    invoke-direct {v5}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;-><init>()V

    :goto_0
    if-lez v0, :cond_3

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v4}, Lc/a/a/b/a;->g()V

    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->a(Lc/a/a/b/a;)I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v4}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    move v0, v3

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Lc/a/a/b/a;->a(I)Ljava/util/LinkedList;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    invoke-direct {v7}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;-><init>()V

    new-instance v8, Lc/a/a/b/a;

    sget-object v9, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->a:Lc/a/a/b/a/b;

    invoke-direct {v8, v0, v9}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    move v0, v3

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->a(Lc/a/a/b/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->a(Lc/a/a/b/a;Lcom/tencent/mm/plugin/qqmail/model/MailAddr;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    invoke-virtual {v5, v7}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAddr;)Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    invoke-direct {v5}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->e()Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private e()Lcom/tencent/mm/plugin/qqmail/model/AddrBook;
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Lc/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not all required fields were included (false = not included in message),  syncInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a/a/a;->a(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->d:Ljava/util/LinkedList;

    invoke-static {v1, v2, v3}, Lc/a/a/a;->a(IILjava/util/LinkedList;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(Lcom/tencent/mm/plugin/qqmail/model/MailAddr;)Lcom/tencent/mm/plugin/qqmail/model/AddrBook;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->e:Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/AddrBook;
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->c:Z

    return-object p0
.end method

.method public final a(Lc/a/a/c/a;)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    const/4 v0, 0x2

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->d:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v1, v2}, Lc/a/a/c/a;->a(IILjava/util/LinkedList;)V

    return-void
.end method

.method public final b()[B
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->e()Lcom/tencent/mm/plugin/qqmail/model/AddrBook;

    invoke-super {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->d:Ljava/util/LinkedList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "syncInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "addrs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/AddrBook;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
