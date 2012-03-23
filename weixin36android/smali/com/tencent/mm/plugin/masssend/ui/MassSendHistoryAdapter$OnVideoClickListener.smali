.class Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private synthetic e:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;Ljava/lang/String;III)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->e:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->a:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->b:I

    iput p5, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->d:I

    iput p4, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->c:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "MicroMsg.HistoryAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video clicked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->e:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-static {v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/video/VideoPlayerUI;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->e:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-static {v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->e:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-static {v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v2

    const v3, 0x7f0a032e

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->e:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-static {v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/video/VideoPlayerUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "VideoPlayer_File_nam"

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "VideoRecorder_VideoLength"

    iget v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "VideoRecorder_VideoSize"

    iget v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;->e:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-static {v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
