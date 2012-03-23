.class public Lcom/tencent/mm/ui/AddContact;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Lcom/tencent/mm/ui/AddContact$IOnAddContact;

.field private b:Landroid/content/Context;

.field private c:Landroid/app/ProgressDialog;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/AddContact$IOnAddContact;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/mm/ui/AddContact;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/mm/ui/AddContact;->a:Lcom/tencent/mm/ui/AddContact$IOnAddContact;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/AddContact;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddContact;->c:Landroid/app/ProgressDialog;

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/AddContact;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/AddContact;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/AddContact;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddContact;->a:Lcom/tencent/mm/ui/AddContact$IOnAddContact;

    invoke-interface {v0, p1}, Lcom/tencent/mm/ui/AddContact$IOnAddContact;->a(Z)V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    const-string v0, "MicroMsg.AddContact"

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
    iget-object v0, p0, Lcom/tencent/mm/ui/AddContact;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/AddContact;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddContact;->c:Landroid/app/ProgressDialog;

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/AddContact;->a(Z)V

    goto :goto_0

    :cond_2
    const/16 v0, -0x2c

    if-ne p2, v0, :cond_3

    new-instance v0, Lcom/tencent/mm/ui/SendVerifyRequest;

    iget-object v1, p0, Lcom/tencent/mm/ui/AddContact;->b:Landroid/content/Context;

    new-instance v2, Lcom/tencent/mm/ui/AddContact$2;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/AddContact$2;-><init>(Lcom/tencent/mm/ui/AddContact;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/ui/SendVerifyRequest;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/SendVerifyRequest$IOnSendVerifyRequest;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/AddContact;->a()V

    iget-object v1, p0, Lcom/tencent/mm/ui/AddContact;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/tencent/mm/ui/AddContact;->e:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/SendVerifyRequest;->a(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const/16 v0, -0x16

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/AddContact;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/AddContact;->b:Landroid/content/Context;

    const v2, 0x7f0a0321

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/AddContact;->a(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/AddContact;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/AddContact;->b:Landroid/content/Context;

    const v2, 0x7f0a0320

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    if-eqz p2, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/AddContact;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/AddContact;->b:Landroid/content/Context;

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/AddContact;->b:Landroid/content/Context;

    const v4, 0x7f0a0260

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/ui/AddContact$1;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/AddContact$1;-><init>(Lcom/tencent/mm/ui/AddContact;)V

    invoke-static {v0, v2, v3, v1, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/AddContact;->c:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lcom/tencent/mm/ui/AddContact;->e:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/mm/ui/AddContact;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;

    iget-object v3, p0, Lcom/tencent/mm/ui/AddContact;->d:Ljava/util/List;

    const-string v4, ""

    invoke-direct {v2, v1, v3, p2, v4}, Lcom/tencent/mm/modelverify/NetSceneVerifyUser;-><init>(ILjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method
