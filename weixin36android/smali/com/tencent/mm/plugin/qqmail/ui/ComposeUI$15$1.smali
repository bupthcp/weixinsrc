.class Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->c()Lcom/tencent/mm/plugin/qqmail/model/DraftBoxMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->l(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15;

    iget-object v2, v2, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->m(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/DraftBoxMgr;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->finish()V

    return-void
.end method
