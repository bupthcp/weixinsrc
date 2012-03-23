.class Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;
.super Landroid/os/AsyncTask;


# instance fields
.field private a:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil;

.field private synthetic b:Lcom/tencent/mm/plugin/qqmail/model/MailAppService;


# direct methods
.method synthetic constructor <init>(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;-><init>(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;B)V

    return-void
.end method

.method private constructor <init>(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;->b:Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;)V
    .locals 2

    iget-object v0, p1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->g:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;->a()Z

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/16 v5, 0x130

    check-cast p1, [Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->c:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

    iget-boolean v1, v1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->a:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->c:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

    iget-boolean v1, v1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;->b:Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;)Lcom/tencent/mm/plugin/qqmail/model/FileCache;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->d:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;

    iget-object v3, v3, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->b:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/plugin/qqmail/model/FileCache;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    const/4 v3, 0x0

    invoke-direct {v2, v5, v3, v1}, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;-><init>(ILjava/util/Map;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->e:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    :goto_0
    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->c:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

    iget-boolean v1, v1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->c:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->e:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    iget v1, v1, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;->a:I

    if-eq v1, v5, :cond_0

    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->e:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    iget v1, v1, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;->a:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "MailAppService"

    iget-object v2, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->e:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    iget-object v2, v2, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->e:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;->c:Ljava/lang/String;

    const-string v2, "Response"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Util;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->f:Ljava/util/Map;

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->d:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->d:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$UploadFile;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/model/HttpClientUtil;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/qqmail/model/HttpClientUtil;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;->a:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil;

    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;->a:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil;

    const-string v2, "https://"

    iget-object v3, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->d:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;)Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->e:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/qqmail/model/URLConnectionUtil;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;->a:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil;

    goto :goto_1
.end method

.method protected onCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;->a:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;->a:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil;->a()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->e:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    iget v0, v0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;->a:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;)I

    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->g:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;->b()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;->b:Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->b(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;->b:Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->c(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->e:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    iget v0, v0, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;->b:Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    iget-object v1, p1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->e:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;Ljava/util/Map;)V

    invoke-static {p1}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->c:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

    iget-boolean v0, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpAsyncTask;->b:Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;)Lcom/tencent/mm/plugin/qqmail/model/FileCache;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->d:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;

    iget-object v2, v2, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;->b:Ljava/util/Map;

    iget-object v3, p1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->e:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    iget-object v3, v3, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mm/plugin/qqmail/model/FileCache;->a(Ljava/lang/String;Ljava/util/Map;[B)Z

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->g:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;

    iget-object v1, p1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->e:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

    iget v1, v1, Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;->a:I

    const-string v2, "request error!"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
