.class Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;->a:Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->f()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;->a:Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->f()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;->a:Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(J)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;->a:Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->c(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->d(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
