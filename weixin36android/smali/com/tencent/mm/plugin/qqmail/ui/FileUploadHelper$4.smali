.class Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;
.super Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;->b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    iput-object p2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;->b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->a(I)Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;->b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;->b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    const-string v0, ".Response.result.DataID"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;->b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->a(I)Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->c(Ljava/lang/String;)Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;->b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;->b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->a(I)Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;->b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V

    return v2
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$4;->b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->e(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)V

    return-void
.end method
