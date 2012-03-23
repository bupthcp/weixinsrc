.class public Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/widget/ImageView;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->a:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->b:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->c:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->c:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->a(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300e9

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "MicroMsg.ShowQRCodeStep1UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneEnd: errType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->a:Landroid/app/ProgressDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->c()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, p1, p2, v1}, Lcom/tencent/mm/ui/MMErrorProcessor$CertainError;->a(Landroid/content/Context;III)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    const v0, 0x7f0a0338

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->b:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->A()Lcom/tencent/mm/modelqrcode/QRCodeStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modelqrcode/QRCodeStorage;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method final b()V
    .locals 6

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneGetQRCode;

    invoke-direct {v0}, Lcom/tencent/mm/modelsimple/NetSceneGetQRCode;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0337

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI$5;

    invoke-direct {v5, p0, v0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI$5;-><init>(Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;Lcom/tencent/mm/modelsimple/NetSceneGetQRCode;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->a:Landroid/app/ProgressDialog;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v5, 0x7f0a0342

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a033a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->d(I)V

    const v0, 0x7f070235

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_to"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->c:I

    const v0, 0x7f07027c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->c:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0a0344

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v5, v1}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->A()Lcom/tencent/mm/modelqrcode/QRCodeStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelqrcode/QRCodeStorage;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->b()V

    :goto_1
    new-instance v0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI$1;-><init>(Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0201e8

    new-instance v1, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI$2;-><init>(Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->c(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f070236

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI$3;-><init>(Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->c:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0a0343

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v5, v1}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0a0346

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v5, v1}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-array v1, v3, [Ljava/lang/Object;

    const v2, 0x7f0a0345

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v5, v1}, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/ShowQRCodeStep1UI;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method
