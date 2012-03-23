.class Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

.field private synthetic b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$1;->b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    iput-object p2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$1;->a:Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$1;->b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$1;->a:Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$1;->a:Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;->b(J)Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    return-void
.end method
