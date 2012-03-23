.class public Lcom/tencent/mm/ui/video/VideoDownloadUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelvideo/VideoInfoStorage$IOnVideoInfoChanged;


# instance fields
.field private a:Lcom/tencent/mm/ui/MMProgressBar;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoDownloadUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoDownloadUI;Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/video/VideoDownloadUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300f9

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->a:Lcom/tencent/mm/ui/MMProgressBar;

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Lcom/tencent/mm/modelvideo/VideoInfo;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MMProgressBar;->a(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "file_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->b:Ljava/lang/String;

    const v0, 0x7f0702a3

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->c:Landroid/widget/TextView;

    const v0, 0x7f0702a4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->d:Landroid/widget/TextView;

    const v0, 0x7f0702a2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->e:Landroid/widget/TextView;

    const v2, 0x7f0a00a6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->b(Lcom/tencent/mm/modelvideo/VideoInfo;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->m()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v0

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Util;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/tencent/mm/ui/video/VideoDownloadUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/video/VideoDownloadUI$1;-><init>(Lcom/tencent/mm/ui/video/VideoDownloadUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0702a0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoDownloadUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->a:Lcom/tencent/mm/ui/MMProgressBar;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->a:Lcom/tencent/mm/ui/MMProgressBar;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoDownloadUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoDownloadUI$2;-><init>(Lcom/tencent/mm/ui/video/VideoDownloadUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMProgressBar;->a(Lcom/tencent/mm/ui/MMProgressBar$IOnProgressChanged;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->b(Lcom/tencent/mm/modelvideo/VideoInfoStorage$IOnVideoInfoChanged;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->a:Lcom/tencent/mm/ui/MMProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMProgressBar;->a(Z)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(Lcom/tencent/mm/modelvideo/VideoInfoStorage$IOnVideoInfoChanged;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoDownloadUI;->a:Lcom/tencent/mm/ui/MMProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMProgressBar;->a(Z)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    return-void
.end method
