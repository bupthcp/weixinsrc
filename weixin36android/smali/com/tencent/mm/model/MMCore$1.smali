.class Lcom/tencent/mm/model/MMCore$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/model/AccountStorage$IEvent;


# instance fields
.field private synthetic a:Lcom/tencent/mm/model/MMCore;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/MMCore;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->A()V

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->a(Lcom/tencent/mm/model/MMCore;)V

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->b(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    const-string v1, "qqmail"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->q(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->j(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v1}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->a(Landroid/database/Cursor;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->c()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/MsgInfoStorage;->b(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v1}, Lcom/tencent/mm/model/MMCore;->c(Lcom/tencent/mm/model/MMCore;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v1}, Lcom/tencent/mm/model/MMCore;->d(Lcom/tencent/mm/model/MMCore;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v1}, Lcom/tencent/mm/model/MMCore;->e(Lcom/tencent/mm/model/MMCore;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v1}, Lcom/tencent/mm/model/MMCore;->f(Lcom/tencent/mm/model/MMCore;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v1}, Lcom/tencent/mm/model/MMCore;->g(Lcom/tencent/mm/model/MMCore;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v1}, Lcom/tencent/mm/model/MMCore;->h(Lcom/tencent/mm/model/MMCore;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v1}, Lcom/tencent/mm/model/MMCore;->i(Lcom/tencent/mm/model/MMCore;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v1}, Lcom/tencent/mm/model/MMCore;->j(Lcom/tencent/mm/model/MMCore;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v1}, Lcom/tencent/mm/model/MMCore;->k(Lcom/tencent/mm/model/MMCore;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v1}, Lcom/tencent/mm/model/MMCore;->l(Lcom/tencent/mm/model/MMCore;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v1}, Lcom/tencent/mm/model/MMCore;->m(Lcom/tencent/mm/model/MMCore;)V

    iget-object v1, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v1}, Lcom/tencent/mm/model/MMCore;->n(Lcom/tencent/mm/model/MMCore;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->o(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    new-instance v1, Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    invoke-direct {v1}, Lcom/tencent/mm/modelvoice/SceneVoice$Service;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mm/model/MMCore;->a(Lcom/tencent/mm/model/MMCore;Lcom/tencent/mm/modelvoice/SceneVoice$Service;)Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->p(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/modelvideo/VideoService$Service;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    new-instance v1, Lcom/tencent/mm/modelvideo/VideoService$Service;

    invoke-direct {v1}, Lcom/tencent/mm/modelvideo/VideoService$Service;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mm/model/MMCore;->a(Lcom/tencent/mm/model/MMCore;Lcom/tencent/mm/modelvideo/VideoService$Service;)Lcom/tencent/mm/modelvideo/VideoService$Service;

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->q(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    new-instance v1, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mm/model/MMCore;->a(Lcom/tencent/mm/model/MMCore;Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;)Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->r(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/modelvoip/VoipService;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    new-instance v1, Lcom/tencent/mm/modelvoip/VoipService;

    invoke-direct {v1}, Lcom/tencent/mm/modelvoip/VoipService;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mm/model/MMCore;->a(Lcom/tencent/mm/model/MMCore;Lcom/tencent/mm/modelvoip/VoipService;)Lcom/tencent/mm/modelvoip/VoipService;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->s(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/modelimage/ImgService;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    new-instance v1, Lcom/tencent/mm/modelimage/ImgService;

    invoke-direct {v1}, Lcom/tencent/mm/modelimage/ImgService;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mm/model/MMCore;->a(Lcom/tencent/mm/model/MMCore;Lcom/tencent/mm/modelimage/ImgService;)Lcom/tencent/mm/modelimage/ImgService;

    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->t(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/modelemoji/EmojiService;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    new-instance v1, Lcom/tencent/mm/modelemoji/EmojiService;

    invoke-direct {v1}, Lcom/tencent/mm/modelemoji/EmojiService;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mm/model/MMCore;->a(Lcom/tencent/mm/model/MMCore;Lcom/tencent/mm/modelemoji/EmojiService;)Lcom/tencent/mm/modelemoji/EmojiService;

    :goto_4
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->u(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    sget v2, Lcom/tencent/mm/protocal/ConstantsProtocal;->b:I

    sget-object v3, Lcom/tencent/mm/protocal/ConstantsProtocal;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/model/MMCore;->a(Lcom/tencent/mm/model/MMCore;Lcom/tencent/mm/plugin/qqmail/model/MailAppService;)Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    :goto_5
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->o(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/modelvoice/SceneVoice$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Service;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->p(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/modelvideo/VideoService$Service;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoService$Service;->b()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->q(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppGetPicService;->a()V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->s(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/modelimage/ImgService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgService;->b()V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->t(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/modelemoji/EmojiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiService;->b()V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/model/MMCore$1;->a:Lcom/tencent/mm/model/MMCore;

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->u(Lcom/tencent/mm/model/MMCore;)Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a()V

    goto :goto_5
.end method
