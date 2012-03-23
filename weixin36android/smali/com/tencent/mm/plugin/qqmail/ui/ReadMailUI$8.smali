.class Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$8;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->a()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI$8;->a:Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/ReadMailUI;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;)V

    return-void
.end method
