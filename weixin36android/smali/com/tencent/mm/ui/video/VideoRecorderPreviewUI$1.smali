.class Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->a(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    const v2, 0x7f0a0323

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->b(Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI$1;->a:Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;

    const v3, 0x7f0a0322

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/ui/video/VideoRecorderPreviewUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
