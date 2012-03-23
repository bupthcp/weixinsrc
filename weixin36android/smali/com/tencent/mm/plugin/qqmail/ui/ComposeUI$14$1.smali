.class Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->k(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->c()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->k(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$OnUploadCompletedListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->o(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(J)V

    return-void
.end method
