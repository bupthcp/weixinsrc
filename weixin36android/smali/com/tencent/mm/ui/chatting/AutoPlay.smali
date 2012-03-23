.class Lcom/tencent/mm/ui/chatting/AutoPlay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelvoice/IOnVoiceMsgReceivedNotify;
.implements Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnCompletionListener;
.implements Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;


# instance fields
.field private final a:Ljava/util/List;

.field private b:Z

.field private final c:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

.field private d:J

.field private e:Landroid/widget/PopupWindow;

.field private final f:Lcom/tencent/mm/ui/chatting/ChattingUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/chatting/ChattingUI;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->b:Z

    new-instance v0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->d:J

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    return-void
.end method

.method private b(Lcom/tencent/mm/storage/MsgInfo;)V
    .locals 7

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "MicroMsg.AutoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add voice msg :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "MicroMsg.AutoPlay"

    const-string v1, "clear play list"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final a(ILcom/tencent/mm/storage/MsgInfo;)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo;->e()I

    move-result v1

    if-ne v1, v5, :cond_3

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v1

    if-eq v1, v5, :cond_0

    :cond_3
    invoke-virtual {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->c()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/AutoPlay;->a(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/tencent/mm/ui/chatting/AutoPlay;->b(Lcom/tencent/mm/storage/MsgInfo;)V

    invoke-virtual {p2}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p2}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c(Lcom/tencent/mm/storage/MsgInfo;)Z

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v0, p1, 0x1

    move v1, v0

    move-object v2, p0

    :goto_1
    iget-object v0, v2, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->z()Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "MicroMsg.AutoPlay"

    const-string v1, "add next failed: null adapter"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->h()V

    goto :goto_0

    :cond_6
    const-string v3, "MicroMsg.AutoPlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "adapter getCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v1, :cond_5

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c(Lcom/tencent/mm/storage/MsgInfo;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->d(Lcom/tencent/mm/storage/MsgInfo;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-direct {v2, v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->b(Lcom/tencent/mm/storage/MsgInfo;)V

    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public final a(Lcom/tencent/mm/storage/MsgInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->d(Lcom/tencent/mm/storage/MsgInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MicroMsg.AutoPlay"

    const-string v1, "should not in this route"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/chatting/AutoPlay;->b(Lcom/tencent/mm/storage/MsgInfo;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->h()V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 9

    const/4 v3, -0x1

    const-string v0, "MicroMsg.AutoPlay"

    const-string v1, "stop play"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->w()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    move v2, v3

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->d:J

    cmp-long v0, v5, v7

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    if-eq v2, v3, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    const-string v0, "MicroMsg.AutoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove voice msg : size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->z()Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->notifyDataSetChanged()V

    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->d:J

    return-void

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->b:Z

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->a(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->a()V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->b:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->h()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->h()V

    goto :goto_0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->d:J

    return-wide v0
.end method

.method public final h()V
    .locals 12

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v0, "MicroMsg.AutoPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play next: size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v3, v5

    move v4, v6

    :goto_1
    if-ge v3, v7, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v8

    cmp-long v0, v1, v8

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v0

    move v2, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    move-wide v10, v0

    move-wide v1, v10

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    :goto_3
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-static {v0, v5}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->x()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->e:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_4
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v3, 0x7f0a0175

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMToast;->a(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;J)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->e:Landroid/widget/PopupWindow;

    :cond_5
    const-string v1, "keep_app_silent"

    invoke-static {v1}, Lcom/tencent/mm/platformtools/MMEntryLock;->a(Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->e(Lcom/tencent/mm/storage/MsgInfo;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->b()V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->v()V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/chatting/ChattingUI;->y()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->y()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Landroid/content/Context;Z)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v1, p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnCompletionListener;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v1, p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->d:J

    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->z()Lcom/tencent/mm/ui/chatting/ChattingListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_6
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->d:J

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v2, 0x7f0a0155

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/chatting/ChattingUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_7
    move-wide v10, v1

    move-wide v0, v10

    move v2, v4

    goto/16 :goto_2
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->y()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/chatting/ChattingUI;->y()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Landroid/content/Context;Z)Z

    :cond_0
    return-void
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->c:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a()Z

    move-result v0

    return v0
.end method

.method public final l_()V
    .locals 2

    const-string v0, "MicroMsg.AutoPlay"

    const-string v1, "voice play completion"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    const v1, 0x7f0a000a

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AutoPlay;->f:Lcom/tencent/mm/ui/chatting/ChattingUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ChattingUI;->w()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->h()V

    return-void
.end method

.method public final m_()V
    .locals 2

    const-string v0, "MicroMsg.AutoPlay"

    const-string v1, "voice play error"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->a(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/AutoPlay;->h()V

    return-void
.end method
