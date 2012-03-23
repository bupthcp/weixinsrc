.class Lcom/tencent/mm/ui/chatting/ImageDownloadUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMProgressBar$IOnProgressChanged;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ImageDownloadUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ImageDownloadUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI$2;->a:Lcom/tencent/mm/ui/chatting/ImageDownloadUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/MMProgressBar;I)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI$2;->a:Lcom/tencent/mm/ui/chatting/ImageDownloadUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->b(Lcom/tencent/mm/ui/chatting/ImageDownloadUI;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI$2;->a:Lcom/tencent/mm/ui/chatting/ImageDownloadUI;

    const v2, 0x7f0a00a6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/tencent/mm/ui/MMProgressBar;->a()I

    move-result v0

    if-ge p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI$2;->a:Lcom/tencent/mm/ui/chatting/ImageDownloadUI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI$2;->a:Lcom/tencent/mm/ui/chatting/ImageDownloadUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->a(Lcom/tencent/mm/ui/chatting/ImageDownloadUI;)Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;->g()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(J)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/modelimage/ImgInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->a(Lcom/tencent/mm/ui/chatting/ImageDownloadUI;Ljava/lang/String;)V

    goto :goto_0
.end method
