.class public Lcom/tencent/mm/plugin/qqmail/model/MailAppService;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

.field private c:Lcom/tencent/mm/plugin/qqmail/model/DraftBoxMgr;

.field private d:Lcom/tencent/mm/plugin/qqmail/model/FileCache;

.field private e:Ljava/util/Map;

.field private f:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->f:Ljava/util/Map;

    const-string v0, "qqmail.weixin.qq.com"

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "weixin/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;)I
    .locals 5

    const/16 v0, -0x3ea

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->c:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

    iget-boolean v2, v2, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->c:Z

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->g:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->e:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    iget-object v2, v2, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;->a(Ljava/lang/String;Ljava/util/Map;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->e:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->f:Ljava/util/Map;

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->g:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;

    const-string v2, "format err!"

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->f:Ljava/util/Map;

    const-string v2, ".Response.error.code"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->g:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;

    iget-object v2, v3, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->f:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;->a(Ljava/lang/String;Ljava/util/Map;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->g:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->f:Ljava/util/Map;

    const-string v4, ".Response.error.message"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sparse-switch v2, :sswitch_data_0

    :goto_1
    if-nez v1, :cond_3

    :goto_2
    invoke-virtual {v3, v2, v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;->a(ILjava/lang/String;)V

    move v0, v2

    goto :goto_0

    :sswitch_0
    const v1, 0x7f0a0467

    goto :goto_1

    :sswitch_1
    const v1, 0x7f0a0468

    goto :goto_1

    :sswitch_2
    const v1, 0x7f0a046c

    goto :goto_1

    :sswitch_3
    const v1, 0x7f0a046e

    goto :goto_1

    :sswitch_4
    const v1, 0x7f0a046b

    goto :goto_1

    :sswitch_5
    const v1, 0x7f0a0469

    goto :goto_1

    :sswitch_6
    const v1, 0x7f0a046a

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69 -> :sswitch_4
        -0x68 -> :sswitch_3
        -0x67 -> :sswitch_6
        -0x66 -> :sswitch_5
        -0x7 -> :sswitch_2
        -0x6 -> :sswitch_4
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Ljava/lang/String;ILjava/util/Map;Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$UploadFile;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)J
    .locals 5

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v0, "appname"

    const-string v1, "qqmail_weixin"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "f"

    const-string v1, "xml"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "charset"

    const-string v1, "utf-8"

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clientip"

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->d()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1, p4}, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;-><init>(ILjava/util/Map;Ljava/util/Map;Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$UploadFile;)V

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;

    invoke-direct {v1, p0, p1, v0, p6}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;-><init>(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;Ljava/lang/String;Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)V

    iput-object p5, v1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->c:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;-><init>(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;)V

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->e:Ljava/util/Map;

    iget-wide v3, v1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->f:Ljava/util/Map;

    iget-wide v3, v1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;)V

    iget-wide v0, v1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->a:J

    return-wide v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;)Lcom/tencent/mm/plugin/qqmail/model/FileCache;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->d:Lcom/tencent/mm/plugin/qqmail/model/FileCache;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)J
    .locals 7

    new-instance v4, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$UploadFile;

    invoke-direct {v4, p2, p3}, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$UploadFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(Ljava/lang/String;ILjava/util/Map;Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$UploadFile;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)J
    .locals 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(Ljava/lang/String;ILjava/util/Map;Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$UploadFile;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->O()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "addr/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->b:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/model/DraftBoxMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "draft/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/DraftBoxMgr;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->c:Lcom/tencent/mm/plugin/qqmail/model/DraftBoxMgr;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/model/FileCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "http/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/tencent/mm/plugin/qqmail/model/FileCache;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->d:Lcom/tencent/mm/plugin/qqmail/model/FileCache;

    return-void
.end method

.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->e:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)J
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(Ljava/lang/String;ILjava/util/Map;Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$UploadFile;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->b:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    return-object v0
.end method

.method public final c()Lcom/tencent/mm/plugin/qqmail/model/DraftBoxMgr;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->c:Lcom/tencent/mm/plugin/qqmail/model/DraftBoxMgr;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, -0x5b88a1de

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a:Ljava/util/Map;

    const-string v2, "skey"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a:Ljava/util/Map;

    const-string v2, "uin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "o"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/algorithm/UIN;

    invoke-direct {v4, v0}, Lcom/tencent/mm/algorithm/UIN;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a:Ljava/util/Map;

    return-object v0
.end method
