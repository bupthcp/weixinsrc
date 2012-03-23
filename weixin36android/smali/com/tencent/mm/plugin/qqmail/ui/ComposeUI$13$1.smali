.class Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->m(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a(I)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;

    iget-object v2, v2, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->l(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;

    iget-object v2, v2, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->b(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->b()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->a(Ljava/util/LinkedList;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;

    iget-object v2, v2, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->b()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->b(Ljava/util/LinkedList;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;

    iget-object v2, v2, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->d(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->b()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->c(Ljava/util/LinkedList;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;

    iget-object v2, v2, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->k(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->d(Ljava/util/LinkedList;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;

    iget-object v2, v2, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->f(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->b(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;

    iget-object v2, v2, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v2}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->g(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->c(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->c()Lcom/tencent/mm/plugin/qqmail/model/DraftBoxMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/qqmail/model/DraftBoxMgr;->a(Lcom/tencent/mm/plugin/qqmail/model/DraftMail;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->finish()V

    return-void
.end method
