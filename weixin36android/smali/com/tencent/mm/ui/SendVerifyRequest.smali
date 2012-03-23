.class public Lcom/tencent/mm/ui/SendVerifyRequest;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/app/AlertDialog;

.field private c:Lcom/tencent/mm/ui/SendVerifyRequest$IOnSendVerifyRequest;

.field private d:Landroid/content/Context;

.field private e:Landroid/view/View;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/SendVerifyRequest$IOnSendVerifyRequest;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->b:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->c:Lcom/tencent/mm/ui/SendVerifyRequest$IOnSendVerifyRequest;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/SendVerifyRequest;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->b:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/SendVerifyRequest;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->d:Landroid/content/Context;

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->d:Landroid/content/Context;

    const v3, 0x7f0a031d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/SendVerifyRequest$3;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/SendVerifyRequest$3;-><init>(Lcom/tencent/mm/ui/SendVerifyRequest;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->a:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->g:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;-><init>(ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/SendVerifyRequest;)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->b:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/SendVerifyRequest;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/SendVerifyRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/SendVerifyRequest;->a()V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/ui/SendVerifyRequest;)Lcom/tencent/mm/ui/SendVerifyRequest$IOnSendVerifyRequest;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->c:Lcom/tencent/mm/ui/SendVerifyRequest$IOnSendVerifyRequest;

    return-object v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const-string v0, "MicroMsg.SendVerifyRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not expected scene,  type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->a:Landroid/app/ProgressDialog;

    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/SendVerifyRequest;->a()V

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->d:Landroid/content/Context;

    const v2, 0x7f0a031e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->c:Lcom/tencent/mm/ui/SendVerifyRequest$IOnSendVerifyRequest;

    invoke-interface {v0}, Lcom/tencent/mm/ui/SendVerifyRequest$IOnSendVerifyRequest;->a()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->d:Landroid/content/Context;

    const v2, 0x7f0a031f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->c:Lcom/tencent/mm/ui/SendVerifyRequest$IOnSendVerifyRequest;

    invoke-interface {v0}, Lcom/tencent/mm/ui/SendVerifyRequest$IOnSendVerifyRequest;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iput-object p1, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->f:Ljava/util/List;

    iput-object p2, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->g:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->d:Landroid/content/Context;

    const v1, 0x7f0300d7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/SendVerifyRequest;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->e:Landroid/view/View;

    new-instance v0, Lcom/tencent/mm/ui/SendVerifyRequest$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/SendVerifyRequest$1;-><init>(Lcom/tencent/mm/ui/SendVerifyRequest;)V

    new-instance v1, Lcom/tencent/mm/ui/SendVerifyRequest$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/SendVerifyRequest$2;-><init>(Lcom/tencent/mm/ui/SendVerifyRequest;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->d:Landroid/content/Context;

    const v4, 0x7f0a031b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->e:Landroid/view/View;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest;->b:Landroid/app/AlertDialog;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
