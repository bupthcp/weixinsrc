.class public Lcom/tencent/mm/ui/chatting/ImageDownloadUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;
.implements Lcom/tencent/mm/modelbase/IOnSceneProgressEnd;


# instance fields
.field private a:Lcom/tencent/mm/ui/MMProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/tencent/mm/modelimage/ImgInfo;

.field private g:Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;

.field private h:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ImageDownloadUI;)Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->g:Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ImageDownloadUI;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ImageDownloadUI"

    const-string v1, "showImg : imgPath is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-class v0, Lcom/tencent/mm/ui/tools/CropImageUI;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CropImage_bCrop"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->a(Ljava/lang/Class;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->finish()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/ImageDownloadUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->b:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300f9

    return v0
.end method

.method public final a(IILcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 3

    const-string v0, "ImageDownloadUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "totaolLen  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_1

    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->a:Lcom/tencent/mm/ui/MMProgressBar;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MMProgressBar;->a(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->a:Lcom/tencent/mm/ui/MMProgressBar;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->a:Lcom/tencent/mm/ui/MMProgressBar;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMProgressBar;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMProgressBar;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "img_msg_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "img_server_id"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->b(I)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->f:Lcom/tencent/mm/modelimage/ImgInfo;

    const v0, 0x7f0702a1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->b:Landroid/widget/TextView;

    const v0, 0x7f0702a2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->c:Landroid/widget/TextView;

    const v0, 0x7f0702a3

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->d:Landroid/widget/TextView;

    const v0, 0x7f0702a4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->e:Landroid/widget/TextView;

    const v0, 0x7f07029f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->h:Landroid/widget/ImageView;

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI$1;-><init>(Lcom/tencent/mm/ui/chatting/ImageDownloadUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0702a0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->a:Lcom/tencent/mm/ui/MMProgressBar;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->a:Lcom/tencent/mm/ui/MMProgressBar;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ImageDownloadUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ImageDownloadUI$2;-><init>(Lcom/tencent/mm/ui/chatting/ImageDownloadUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMProgressBar;->a(Lcom/tencent/mm/ui/MMProgressBar$IOnProgressChanged;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->f:Lcom/tencent/mm/modelimage/ImgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelimage/ImgInfo;->f()J

    move-result-wide v1

    new-instance v0, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;-><init>(JJLcom/tencent/mm/modelbase/IOnSceneProgressEnd;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->g:Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->g:Lcom/tencent/mm/modelimage/NetSceneGetMsgImg;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->a:Lcom/tencent/mm/ui/MMProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMProgressBar;->a(Z)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ImageDownloadUI;->a:Lcom/tencent/mm/ui/MMProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMProgressBar;->a(Z)V

    return-void
.end method
