.class Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    iput-object p2, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;->a:Lcom/tencent/mm/plugin/qqmail/model/UploadFileStatus;

    iput-object p3, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;->b:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;->c:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0465

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2$1;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$2;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method
