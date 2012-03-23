.class Lcom/tencent/mm/ui/login/LoginHistoryUI$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/login/LoginHistoryUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/LoginHistoryUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI$6;->a:Lcom/tencent/mm/ui/login/LoginHistoryUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const-string v0, "MicroMsg.LoginHistoryUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "imgSid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI$6;->a:Lcom/tencent/mm/ui/login/LoginHistoryUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->b(Lcom/tencent/mm/ui/login/LoginHistoryUI;)Lcom/tencent/mm/ui/login/LoginQQModel;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/ui/login/LoginQQModel;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " img len"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI$6;->a:Lcom/tencent/mm/ui/login/LoginHistoryUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->b(Lcom/tencent/mm/ui/login/LoginHistoryUI;)Lcom/tencent/mm/ui/login/LoginQQModel;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/ui/login/LoginQQModel;->d:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneAuth;

    iget-object v1, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI$6;->a:Lcom/tencent/mm/ui/login/LoginHistoryUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->b(Lcom/tencent/mm/ui/login/LoginHistoryUI;)Lcom/tencent/mm/ui/login/LoginQQModel;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/ui/login/LoginQQModel;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI$6;->a:Lcom/tencent/mm/ui/login/LoginHistoryUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->b(Lcom/tencent/mm/ui/login/LoginHistoryUI;)Lcom/tencent/mm/ui/login/LoginQQModel;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/ui/login/LoginQQModel;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI$6;->a:Lcom/tencent/mm/ui/login/LoginHistoryUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->e(Lcom/tencent/mm/ui/login/LoginHistoryUI;)Lcom/tencent/mm/ui/SecurityImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/ui/SecurityImage;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI$6;->a:Lcom/tencent/mm/ui/login/LoginHistoryUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->e(Lcom/tencent/mm/ui/login/LoginHistoryUI;)Lcom/tencent/mm/ui/SecurityImage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/ui/SecurityImage;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mm/modelsimple/NetSceneAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v1, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI$6;->a:Lcom/tencent/mm/ui/login/LoginHistoryUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI$6;->a:Lcom/tencent/mm/ui/login/LoginHistoryUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI$6;->a:Lcom/tencent/mm/ui/login/LoginHistoryUI;

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/login/LoginHistoryUI$6;->a:Lcom/tencent/mm/ui/login/LoginHistoryUI;

    const v5, 0x7f0a011b

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/tencent/mm/ui/login/LoginHistoryUI$6$1;

    invoke-direct {v6, p0, v0}, Lcom/tencent/mm/ui/login/LoginHistoryUI$6$1;-><init>(Lcom/tencent/mm/ui/login/LoginHistoryUI$6;Lcom/tencent/mm/modelsimple/NetSceneAuth;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/login/LoginHistoryUI;->a(Lcom/tencent/mm/ui/login/LoginHistoryUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
