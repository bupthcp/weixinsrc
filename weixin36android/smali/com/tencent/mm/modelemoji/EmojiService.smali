.class public Lcom/tencent/mm/modelemoji/EmojiService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# static fields
.field private static a:Lcom/tencent/mm/model/IOnNewMsgNotify;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/modelemoji/EmojiService;->a:Lcom/tencent/mm/model/IOnNewMsgNotify;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/tencent/mm/modelemoji/EmojiService;->b:Z

    iput-boolean v2, p0, Lcom/tencent/mm/modelemoji/EmojiService;->c:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->d:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->e:Ljava/util/List;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/modelemoji/EmojiService$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelemoji/EmojiService$1;-><init>(Lcom/tencent/mm/modelemoji/EmojiService;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->f:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method private static a(Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;Lcom/tencent/mm/modelemoji/EmojiInfo;)J
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v1}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    iget-object v2, p0, Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;->b:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->e()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2, v3, v4, v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    move-result-wide v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/tencent/mm/modelemoji/EmojiService;->a:Lcom/tencent/mm/model/IOnNewMsgNotify;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/tencent/mm/modelemoji/EmojiService;->a:Lcom/tencent/mm/model/IOnNewMsgNotify;

    invoke-interface {v3, v2}, Lcom/tencent/mm/model/IOnNewMsgNotify;->a(Lcom/tencent/mm/storage/MsgInfo;)V

    :cond_1
    return-wide v0
.end method

.method public static a(Lcom/tencent/mm/model/IOnNewMsgNotify;)V
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelemoji/EmojiService;->a:Lcom/tencent/mm/model/IOnNewMsgNotify;

    if-nez v0, :cond_0

    sput-object p0, Lcom/tencent/mm/modelemoji/EmojiService;->a:Lcom/tencent/mm/model/IOnNewMsgNotify;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelemoji/EmojiService;)V
    .locals 11

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfoStorage;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->a(Ljava/lang/String;)Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->c()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-lez v0, :cond_0

    iget-object v8, p0, Lcom/tencent/mm/modelemoji/EmojiService;->d:Ljava/util/List;

    new-instance v0, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->c()J

    move-result-wide v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;-><init>(Lcom/tencent/mm/modelemoji/EmojiService;JLjava/lang/String;Lcom/tencent/mm/modelemoji/EmojiInfo;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;

    iget-object v3, v0, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;->c:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-direct {v2, v3, v4, v0}, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/modelemoji/EmojiInfo;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :cond_2
    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->c:Z

    iput-boolean v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->b:Z

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->f:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 6

    const/4 v5, 0x0

    instance-of v0, p4, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;

    const/4 v1, 0x2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v1, 0x5

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v2

    iget-wide v3, v0, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;->a:J

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    iget-wide v3, v0, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;->a:J

    invoke-virtual {v1, v3, v4, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->d:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;

    iget-object v3, v0, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;->c:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-direct {v2, v3, v4, v0}, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/modelemoji/EmojiInfo;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :goto_0
    return-void

    :cond_3
    iput-boolean v5, p0, Lcom/tencent/mm/modelemoji/EmojiService;->b:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;

    if-nez p1, :cond_5

    if-nez p2, :cond_5

    check-cast p4, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;

    invoke-virtual {p4}, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;->d()Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiService;->a(Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;Lcom/tencent/mm/modelemoji/EmojiInfo;)J

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiService;->a(Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;Lcom/tencent/mm/modelemoji/EmojiInfo;)J

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->e:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, v5, Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;->d:Ljava/lang/String;

    iget-object v2, v5, Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;->c:Ljava/lang/String;

    sget v3, Lcom/tencent/mm/modelemoji/EmojiInfo;->f:I

    sget v4, Lcom/tencent/mm/modelemoji/EmojiInfo;->h:I

    iget v5, v5, Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Ljava/lang/String;Ljava/lang/String;III)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;

    invoke-direct {v2, v0}, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;-><init>(Lcom/tencent/mm/modelemoji/EmojiInfo;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_0

    :cond_7
    iput-boolean v5, p0, Lcom/tencent/mm/modelemoji/EmojiService;->c:Z

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;)V
    .locals 6

    iget-boolean v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->c:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lcom/tencent/mm/modelemoji/EmojiService;->a(Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;Lcom/tencent/mm/modelemoji/EmojiInfo;)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->c:Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;->c:Ljava/lang/String;

    sget v3, Lcom/tencent/mm/modelemoji/EmojiInfo;->f:I

    iget v4, p1, Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;->e:I

    iget v5, p1, Lcom/tencent/mm/modelemoji/EmojiExtension$EmojiMsgInfo;->f:I

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(Ljava/lang/String;Ljava/lang/String;III)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;

    invoke-direct {v2, v0}, Lcom/tencent/mm/modelemoji/NetSceneDownloadEmoji;-><init>(Lcom/tencent/mm/modelemoji/EmojiInfo;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/mm/modelemoji/EmojiInfo;Lcom/tencent/mm/storage/MsgInfo;)V
    .locals 12

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-nez p3, :cond_4

    new-instance v3, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v3}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    const/16 v0, 0x2f

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    invoke-virtual {v3, p1}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->e()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v4, v1, v2, v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/MsgInfo;->c(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    move-result-wide v3

    move-wide v7, v1

    move-wide v10, v3

    move-wide v2, v10

    :goto_2
    const-string v0, "MicroMsg.EmojiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetSceneUploadEmoji: msgId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tencent/mm/modelemoji/EmojiService;->d:Ljava/util/List;

    new-instance v0, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/modelemoji/EmojiService$UploadEmojiInfo;-><init>(Lcom/tencent/mm/modelemoji/EmojiService;JLjava/lang/String;Lcom/tencent/mm/modelemoji/EmojiInfo;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelemoji/EmojiService;->b:Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/tencent/mm/modelemoji/NetSceneUploadEmoji;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/modelemoji/EmojiInfo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p3}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->a(Ljava/lang/String;)Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->c()J

    move-result-wide v0

    move-wide v7, v0

    goto/16 :goto_2
.end method

.method public final b()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/EmojiService;->c()V

    return-void
.end method

.method protected finalize()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-direct {p0}, Lcom/tencent/mm/modelemoji/EmojiService;->c()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
