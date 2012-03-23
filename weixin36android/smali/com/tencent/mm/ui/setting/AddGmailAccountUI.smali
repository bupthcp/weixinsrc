.class public Lcom/tencent/mm/ui/setting/AddGmailAccountUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/app/ProgressDialog;

.field private e:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->d:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->e:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/AddGmailAccountUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->d:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/AddGmailAccountUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/AddGmailAccountUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030002

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 4

    const v3, 0x7f0a0010

    const-string v0, "MicroMsg.AddGmailAccountUI"

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

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->g()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->d:Landroid/app/ProgressDialog;

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    const v0, 0x7f0a0416

    invoke-static {p0, v0, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->e:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;->f()I

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0a0417

    invoke-static {p0, v0, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->e:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0410

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->d(I)V

    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->a:Landroid/widget/EditText;

    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->b:Landroid/widget/EditText;

    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/ui/setting/AddGmailAccountUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/AddGmailAccountUI$1;-><init>(Lcom/tencent/mm/ui/setting/AddGmailAccountUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/AddGmailAccountUI$2;-><init>(Lcom/tencent/mm/ui/setting/AddGmailAccountUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->e:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->e:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->d:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/tencent/mm/ui/setting/AddGmailAccountUI;->d:Landroid/app/ProgressDialog;

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method
