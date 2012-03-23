.class Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$5;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-wide/16 v3, -0x1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$5;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->g(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.ReadMailUI"

    const-string v1, "current msgid is -1"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$5;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->g(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->e(J)J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$5;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    const v1, 0x7f0a043f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$5;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-static {v2, v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;J)J

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$5;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->h(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V

    goto :goto_0
.end method
