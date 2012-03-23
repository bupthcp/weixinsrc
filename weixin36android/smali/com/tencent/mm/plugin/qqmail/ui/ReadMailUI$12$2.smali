.class Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$12$2;
.super Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$12;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$12;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$12$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$12;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$12$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$12;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$12;->b:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

    invoke-direct {v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;)V

    return-void
.end method
