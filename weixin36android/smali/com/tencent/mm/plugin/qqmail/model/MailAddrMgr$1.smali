.class Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;
.super Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;


# instance fields
.field final synthetic a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;->a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;->a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->b(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;->a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    invoke-static {v0, p2}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;Ljava/util/Map;)V

    const-string v0, ".Response.result.ContinueFlag"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1$1;-><init>(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;->a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;J)J

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;->a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->b(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;->a()V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;->a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;->a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->c(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;I)I

    return-void
.end method
