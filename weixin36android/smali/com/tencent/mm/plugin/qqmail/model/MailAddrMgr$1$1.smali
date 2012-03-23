.class Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1$1;->a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1$1;->a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;->a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1$1;->a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;->a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;I)I

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1$1;->a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$1;->a:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a()V

    return-void
.end method
