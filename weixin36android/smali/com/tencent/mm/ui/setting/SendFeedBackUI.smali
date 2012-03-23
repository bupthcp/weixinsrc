.class public Lcom/tencent/mm/ui/setting/SendFeedBackUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->b:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SendFeedBackUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->b:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SendFeedBackUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->a:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f03004c

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 3

    const v1, 0x7f0a0010

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->b:Landroid/app/ProgressDialog;

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const v0, 0x7f0a0193

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/setting/SendFeedBackUI$3;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/setting/SendFeedBackUI$3;-><init>(Lcom/tencent/mm/ui/setting/SendFeedBackUI;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0a0194

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/setting/SendFeedBackUI$4;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/setting/SendFeedBackUI$4;-><init>(Lcom/tencent/mm/ui/setting/SendFeedBackUI;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0192

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->d(I)V

    const v0, 0x7f070117

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->a:Landroid/widget/EditText;

    const v0, 0x7f0a0015

    new-instance v1, Lcom/tencent/mm/ui/setting/SendFeedBackUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SendFeedBackUI$1;-><init>(Lcom/tencent/mm/ui/setting/SendFeedBackUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a0011

    new-instance v1, Lcom/tencent/mm/ui/setting/SendFeedBackUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/setting/SendFeedBackUI$2;-><init>(Lcom/tencent/mm/ui/setting/SendFeedBackUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/setting/SendFeedBackUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method
