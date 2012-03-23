.class public Lcom/tencent/mm/plugin/qqmail/model/DraftMail;
.super Lcom/tencent/mm/protobuf/BaseProtoBuf;


# instance fields
.field private b:I

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/util/LinkedList;

.field private g:Z

.field private h:Ljava/util/LinkedList;

.field private i:Z

.field private j:Ljava/util/LinkedList;

.field private k:Z

.field private l:Ljava/util/LinkedList;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->f:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->h:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->j:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->l:Ljava/util/LinkedList;

    return-void
.end method

.method public static a([B)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-instance v4, Lc/a/a/b/a;

    sget-object v0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a:Lc/a/a/b/a/b;

    invoke-direct {v4, p0, v0}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    invoke-static {v4}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a(Lc/a/a/b/a;)I

    move-result v0

    new-instance v5, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    invoke-direct {v5}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;-><init>()V

    :goto_0
    if-lez v0, :cond_d

    packed-switch v0, :pswitch_data_0

    move v0, v2

    :goto_1
    if-nez v0, :cond_0

    invoke-virtual {v4}, Lc/a/a/b/a;->g()V

    :cond_0
    invoke-static {v4}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a(Lc/a/a/b/a;)I

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v4}, Lc/a/a/b/a;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a(I)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    move v0, v3

    goto :goto_1

    :pswitch_1
    invoke-virtual {v4}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    move v0, v3

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lc/a/a/b/a;->a(I)Ljava/util/LinkedList;

    move-result-object v6

    move v1, v2

    :goto_2
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    invoke-direct {v7}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;-><init>()V

    new-instance v8, Lc/a/a/b/a;

    sget-object v9, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a:Lc/a/a/b/a/b;

    invoke-direct {v8, v0, v9}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    move v0, v3

    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v8}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a(Lc/a/a/b/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->a(Lc/a/a/b/a;Lcom/tencent/mm/plugin/qqmail/model/MailAddr;I)Z

    move-result v0

    goto :goto_3

    :cond_1
    iget-boolean v0, v5, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->g:Z

    if-nez v0, :cond_2

    iput-boolean v3, v5, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->g:Z

    :cond_2
    iget-object v0, v5, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->f:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lc/a/a/b/a;->a(I)Ljava/util/LinkedList;

    move-result-object v6

    move v1, v2

    :goto_4
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    invoke-direct {v7}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;-><init>()V

    new-instance v8, Lc/a/a/b/a;

    sget-object v9, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a:Lc/a/a/b/a/b;

    invoke-direct {v8, v0, v9}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    move v0, v3

    :goto_5
    if-eqz v0, :cond_4

    invoke-static {v8}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a(Lc/a/a/b/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->a(Lc/a/a/b/a;Lcom/tencent/mm/plugin/qqmail/model/MailAddr;I)Z

    move-result v0

    goto :goto_5

    :cond_4
    iget-boolean v0, v5, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->i:Z

    if-nez v0, :cond_5

    iput-boolean v3, v5, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->i:Z

    :cond_5
    iget-object v0, v5, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->h:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_6
    move v0, v3

    goto/16 :goto_1

    :pswitch_4
    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Lc/a/a/b/a;->a(I)Ljava/util/LinkedList;

    move-result-object v6

    move v1, v2

    :goto_6
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;

    invoke-direct {v7}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;-><init>()V

    new-instance v8, Lc/a/a/b/a;

    sget-object v9, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a:Lc/a/a/b/a/b;

    invoke-direct {v8, v0, v9}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    move v0, v3

    :goto_7
    if-eqz v0, :cond_7

    invoke-static {v8}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a(Lc/a/a/b/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddr;->a(Lc/a/a/b/a;Lcom/tencent/mm/plugin/qqmail/model/MailAddr;I)Z

    move-result v0

    goto :goto_7

    :cond_7
    iget-boolean v0, v5, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->k:Z

    if-nez v0, :cond_8

    iput-boolean v3, v5, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->k:Z

    :cond_8
    iget-object v0, v5, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->j:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_9
    move v0, v3

    goto/16 :goto_1

    :pswitch_5
    const/4 v0, 0x6

    invoke-virtual {v4, v0}, Lc/a/a/b/a;->a(I)Ljava/util/LinkedList;

    move-result-object v6

    move v1, v2

    :goto_8
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    new-instance v7, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-direct {v7}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;-><init>()V

    new-instance v8, Lc/a/a/b/a;

    sget-object v9, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a:Lc/a/a/b/a/b;

    invoke-direct {v8, v0, v9}, Lc/a/a/b/a;-><init>([BLc/a/a/b/a/b;)V

    move v0, v3

    :goto_9
    if-eqz v0, :cond_a

    invoke-static {v8}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a(Lc/a/a/b/a;)I

    move-result v0

    invoke-static {v8, v7, v0}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->a(Lc/a/a/b/a;Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;I)Z

    move-result v0

    goto :goto_9

    :cond_a
    iget-boolean v0, v5, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->m:Z

    if-nez v0, :cond_b

    iput-boolean v3, v5, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->m:Z

    :cond_b
    iget-object v0, v5, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_c
    move v0, v3

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {v4}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->b(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    move v0, v3

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {v4}, Lc/a/a/b/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->c(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    move v0, v3

    goto/16 :goto_1

    :cond_d
    invoke-direct {v5}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->k()Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private k()Lcom/tencent/mm/plugin/qqmail/model/DraftMail;
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->q:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lc/a/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not all required fields were included (false = not included in message),  composeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 5

    const/16 v4, 0x8

    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->b:I

    invoke-static {v0, v1}, Lc/a/a/a;->a(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->o:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->n:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/a/a/a;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->p:Ljava/lang/String;

    invoke-static {v4, v1}, Lc/a/a/a;->a(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->f:Ljava/util/LinkedList;

    invoke-static {v1, v4, v2}, Lc/a/a/a;->a(IILjava/util/LinkedList;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->h:Ljava/util/LinkedList;

    invoke-static {v2, v4, v3}, Lc/a/a/a;->a(IILjava/util/LinkedList;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->j:Ljava/util/LinkedList;

    invoke-static {v2, v4, v3}, Lc/a/a/a;->a(IILjava/util/LinkedList;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->l:Ljava/util/LinkedList;

    invoke-static {v2, v4, v3}, Lc/a/a/a;->a(IILjava/util/LinkedList;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(I)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;
    .locals 1

    iput p1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->c:Z

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->e:Z

    return-object p0
.end method

.method public final a(Ljava/util/LinkedList;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->g:Z

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->f:Ljava/util/LinkedList;

    return-object p0
.end method

.method public final a(Lc/a/a/c/a;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v0, 0x1

    iget v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->b:I

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(II)V

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->f:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, Lc/a/a/c/a;->a(IILjava/util/LinkedList;)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->h:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, Lc/a/a/c/a;->a(IILjava/util/LinkedList;)V

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->j:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, Lc/a/a/c/a;->a(IILjava/util/LinkedList;)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->l:Ljava/util/LinkedList;

    invoke-virtual {p1, v0, v2, v1}, Lc/a/a/c/a;->a(IILjava/util/LinkedList;)V

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->o:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->p:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lc/a/a/c/a;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->n:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->o:Z

    return-object p0
.end method

.method public final b(Ljava/util/LinkedList;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->i:Z

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->h:Ljava/util/LinkedList;

    return-object p0
.end method

.method public final b()[B
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->k()Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    invoke-super {p0}, Lcom/tencent/mm/protobuf/BaseProtoBuf;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->b:I

    return v0
.end method

.method public final c(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->p:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->q:Z

    return-object p0
.end method

.method public final c(Ljava/util/LinkedList;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->k:Z

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->j:Ljava/util/LinkedList;

    return-object p0
.end method

.method public final d(Ljava/util/LinkedList;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->m:Z

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->l:Ljava/util/LinkedList;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->f:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final f()Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->h:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final g()Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->j:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final h()Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->l:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->p:Ljava/lang/String;

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

    const-string v1, "composeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->e:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mailId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "toList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->f:Ljava/util/LinkedList;

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

    const-string v1, "ccList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->h:Ljava/util/LinkedList;

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

    const-string v1, "bccList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->j:Ljava/util/LinkedList;

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

    const-string v1, "uploadFiles = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->o:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "subject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->p:Ljava/lang/String;

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

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
