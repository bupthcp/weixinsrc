.class Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

.field d:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;

.field e:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Response;

.field f:Ljava/util/Map;

.field g:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;

.field private synthetic h:Lcom/tencent/mm/plugin/qqmail/model/MailAppService;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/qqmail/model/MailAppService;Ljava/lang/String;Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->h:Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->a:J

    iput-object p2, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->d:Lcom/tencent/mm/plugin/qqmail/model/HttpUtil$Request;

    iput-object p4, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpStruct;->g:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;

    return-void
.end method
