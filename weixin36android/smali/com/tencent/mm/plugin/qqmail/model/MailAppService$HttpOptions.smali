.class public Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Z

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->a:Z

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->b:Z

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->a:Z

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->b:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->c:Z

    return-void
.end method
