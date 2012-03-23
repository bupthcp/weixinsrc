.class Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

.field private synthetic b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$3;->b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    iput-object p2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$3;->a:Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$3;->b:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$3;->a:Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;)V

    return-void
.end method
