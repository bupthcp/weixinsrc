.class public Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/app/ProgressDialog;

.field private d:Landroid/app/AlertDialog;

.field private e:Lcom/tencent/mm/ui/SecurityImage;

.field private f:Ljava/lang/String;

.field private g:[B

.field private h:Ljava/lang/String;

.field private i:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->b:Landroid/view/View;

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->c:Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->d:Landroid/app/AlertDialog;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->e:Lcom/tencent/mm/ui/SecurityImage;

    iput-object v1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->g:[B

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->i:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->d:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->c:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a:Landroid/content/Context;

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a:Landroid/content/Context;

    const v3, 0x7f0a031d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$3;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$3;-><init>(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->c:Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v7

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneBindQQ;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->a()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->f:Ljava/lang/String;

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/modelsimple/NetSceneBindQQ;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->d:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Lcom/tencent/mm/ui/SecurityImage;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->e:Lcom/tencent/mm/ui/SecurityImage;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Lcom/tencent/mm/ui/SecurityImage;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->e:Lcom/tencent/mm/ui/SecurityImage;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 7

    const/4 v5, 0x0

    const v4, 0x7f0a0010

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v5, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->c:Landroid/app/ProgressDialog;

    :cond_2
    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelsimple/NetSceneBindQQ;

    invoke-virtual {v0}, Lcom/tencent/mm/modelsimple/NetSceneBindQQ;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->h:Ljava/lang/String;

    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneBindQQ;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneBindQQ;->f()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->g:[B

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->i:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->i:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$CallBack;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a:Landroid/content/Context;

    const v1, 0x7f0a016d

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->d:Landroid/app/AlertDialog;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->e:Lcom/tencent/mm/ui/SecurityImage;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a:Landroid/content/Context;

    const v1, 0x7f0a00f6

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->g:[B

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->h:Ljava/lang/String;

    new-instance v4, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$5;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$5;-><init>(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)V

    new-instance v5, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$6;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$6;-><init>(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)V

    new-instance v6, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$GenKeyModel;

    invoke-direct {v6, p0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$GenKeyModel;-><init>(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)V

    invoke-static/range {v0 .. v6}, Lcom/tencent/mm/ui/SecurityImage$Builder;->a(Landroid/content/Context;I[BLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;)Lcom/tencent/mm/ui/SecurityImage;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->e:Lcom/tencent/mm/ui/SecurityImage;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->e:Lcom/tencent/mm/ui/SecurityImage;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->g:[B

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ui/SecurityImage;->b([BLjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$4;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$4;-><init>(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a:Landroid/content/Context;

    const v3, 0x7f0a016c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->d:Landroid/app/AlertDialog;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x48 -> :sswitch_0
        -0x6 -> :sswitch_1
        0x2710 -> :sswitch_2
    .end sparse-switch
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a:Landroid/content/Context;

    const v1, 0x7f0300d6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->b:Landroid/view/View;

    const v1, 0x7f07023e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f0a016b

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    new-instance v1, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$1;-><init>(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;Landroid/widget/EditText;)V

    new-instance v0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$2;-><init>(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a:Landroid/content/Context;

    const v4, 0x7f0a016a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->b:Landroid/view/View;

    invoke-static {v2, v3, v4, v1, v0}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->d:Landroid/app/AlertDialog;

    return-void
.end method
