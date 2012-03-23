.class Lcom/tencent/mm/ui/chatting/ImageDownloadUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/ImageDownloadUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ImageDownloadUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI$1;->a:Lcom/tencent/mm/ui/chatting/ImageDownloadUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI$1;->a:Lcom/tencent/mm/ui/chatting/ImageDownloadUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->a(Lcom/tencent/mm/ui/chatting/ImageDownloadUI;)Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI$1;->a:Lcom/tencent/mm/ui/chatting/ImageDownloadUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->finish()V

    return-void
.end method
