.class Lcom/tencent/mm/ui/shake/ShakeReportUI$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/shake/ShakeReportUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030101

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-virtual {v3}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b004b

    invoke-direct {v2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Landroid/app/Dialog;)Landroid/app/Dialog;

    new-instance v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$8$1;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI$8;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v0, 0x7f0702ba

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v0, 0x7f0702bc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-static {v2, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v2, 0x7f0702bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Landroid/view/View;)Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->r(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->h(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->u(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->r(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "MicroMsg.ShakeReportUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The HDAvatar of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->r(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->v(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->v(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    new-instance v1, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->r(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;)Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->v(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_0
.end method
