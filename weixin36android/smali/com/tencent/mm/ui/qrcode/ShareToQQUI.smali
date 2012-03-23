.class public Lcom/tencent/mm/ui/qrcode/ShareToQQUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->a:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->d:I

    return v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->a:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f03004b

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "MicroMsg.EditMicroBlogUI"

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

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v6, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->a:Landroid/app/ProgressDialog;

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const/16 v0, -0x44

    if-ne p2, v0, :cond_4

    invoke-static {p3}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p3, "error"

    :cond_3
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$3;-><init>(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;)V

    invoke-static {p0, p3, v0, v1, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    const v0, 0x7f0a02fc

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->finish()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, v3}, Lcom/tencent/mm/ui/MMErrorProcessor$CertainError;->a(Landroid/content/Context;III)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0a02fb

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    const v0, 0x7f0a033a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->d(I)V

    const v0, 0x7f070117

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->b:Landroid/widget/EditText;

    const v0, 0x7f070118

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/ui/MMEditText$MixedWordCountTextWatcher;

    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->b:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->c:Landroid/widget/TextView;

    const/16 v4, 0x118

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMEditText$MixedWordCountTextWatcher;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_to"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->d:I

    iget v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->b:Landroid/widget/EditText;

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    :goto_0
    new-instance v0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$1;-><init>(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f070119

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/qrcode/ShareToQQUI$2;-><init>(Lcom/tencent/mm/ui/qrcode/ShareToQQUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/ShareToQQUI;->b:Landroid/widget/EditText;

    const v1, 0x7f0a0348

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method
