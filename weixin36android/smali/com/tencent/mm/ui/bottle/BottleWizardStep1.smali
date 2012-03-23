.class public Lcom/tencent/mm/ui/bottle/BottleWizardStep1;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->b:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/BottleWizardStep1;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->a:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a01c5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f06

    new-instance v3, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$5;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$5;-><init>(Lcom/tencent/mm/ui/bottle/BottleWizardStep1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0015

    new-instance v3, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$4;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$4;-><init>(Lcom/tencent/mm/ui/bottle/BottleWizardStep1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->a:Landroid/app/AlertDialog;

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->a:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/bottle/BottleWizardStep1;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->a:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030024

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x4

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/tencent/mm/platformtools/CameraUtil;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "CropImage_OutputPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v5}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CropImage_OutputPath"

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v5}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_0

    const-string v0, "CropImage_OutputPath"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.BottleWizardStep1"

    const-string v1, "crop picture failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/tencent/mm/ui/setting/ProcessUploadHDHeadImg;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->c()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/ui/setting/ProcessUploadHDHeadImg;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/setting/ProcessUploadHDHeadImg;->a(I)Z

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v2

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    const v0, 0x7f0a03cb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->d(I)V

    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$1;-><init>(Lcom/tencent/mm/ui/bottle/BottleWizardStep1;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$2;-><init>(Lcom/tencent/mm/ui/bottle/BottleWizardStep1;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a001a

    new-instance v1, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1$3;-><init>(Lcom/tencent/mm/ui/bottle/BottleWizardStep1;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleWizardStep1;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
