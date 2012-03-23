.class Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$5;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneBindQQ;

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->a()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$5;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->c(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$5;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->d(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Lcom/tencent/mm/ui/SecurityImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/ui/SecurityImage;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$5;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-static {v5}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->d(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Lcom/tencent/mm/ui/SecurityImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/ui/SecurityImage;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/modelsimple/NetSceneBindQQ;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$5;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$5;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->e(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$5;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->e(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$5;->a:Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->e(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a011b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$5$1;

    invoke-direct {v6, p0, v0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$5$1;-><init>(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd$5;Lcom/tencent/mm/modelsimple/NetSceneBindQQ;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;->a(Lcom/tencent/mm/ui/chatting/ProcessErrNeedQQPwd;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
