.class Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->d(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "VideoRecorder_FileName"

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->a(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "VideoRecorder_VideoLength"

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "VideoRecorder_VideoLength"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    invoke-virtual {v1, v4, v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "VideoRecorder_VideoLength"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    const v2, 0x7f0a032d

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    invoke-static {}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a()Lcom/tencent/mm/ui/video/VideoRecorderUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->finish()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/ui/chatting/ChattingUI;->e:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->finish()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->a(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->e(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/tencent/mm/modelvideo/VideoLogic;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$3;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->a(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->c(Ljava/lang/String;)I

    goto :goto_1
.end method
