.class Lcom/tencent/mm/ui/setting/GmailAccountUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/GmailAccountUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/GmailAccountUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI$2;->a:Lcom/tencent/mm/ui/setting/GmailAccountUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI$2;->a:Lcom/tencent/mm/ui/setting/GmailAccountUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a(Lcom/tencent/mm/ui/setting/GmailAccountUI;)Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/gmailapp/model/GmailInfo;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/modelsimple/NetSceneGmailOper;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI$2;->a:Lcom/tencent/mm/ui/setting/GmailAccountUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI$2;->a:Lcom/tencent/mm/ui/setting/GmailAccountUI;

    iget-object v3, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI$2;->a:Lcom/tencent/mm/ui/setting/GmailAccountUI;

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/setting/GmailAccountUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/setting/GmailAccountUI$2;->a:Lcom/tencent/mm/ui/setting/GmailAccountUI;

    const v5, 0x7f0a040d

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/setting/GmailAccountUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/tencent/mm/ui/setting/GmailAccountUI$2$1;

    invoke-direct {v6, p0, v0}, Lcom/tencent/mm/ui/setting/GmailAccountUI$2$1;-><init>(Lcom/tencent/mm/ui/setting/GmailAccountUI$2;Lcom/tencent/mm/modelsimple/NetSceneGmailOper;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/setting/GmailAccountUI;->a(Lcom/tencent/mm/ui/setting/GmailAccountUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
