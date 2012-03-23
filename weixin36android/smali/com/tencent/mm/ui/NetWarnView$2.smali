.class Lcom/tencent/mm/ui/NetWarnView$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/NetWarnView;

.field private synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/NetWarnView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/NetWarnView$2;->a:Lcom/tencent/mm/ui/NetWarnView;

    iput-object p2, p0, Lcom/tencent/mm/ui/NetWarnView$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView$2;->a:Lcom/tencent/mm/ui/NetWarnView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/NetWarnView;->a(Lcom/tencent/mm/ui/NetWarnView;Z)Z

    new-instance v0, Lcom/tencent/mm/network/NetworkHttpCheck;

    invoke-direct {v0}, Lcom/tencent/mm/network/NetworkHttpCheck;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/NetWarnView$2;->a:Lcom/tencent/mm/ui/NetWarnView;

    invoke-static {v1}, Lcom/tencent/mm/ui/NetWarnView;->a(Lcom/tencent/mm/ui/NetWarnView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/NetWarnView$2;->a:Lcom/tencent/mm/ui/NetWarnView;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/network/NetworkHttpCheck;->a(Ljava/lang/String;Lcom/tencent/mm/network/NetworkHttpCheck$IOnHttpConnectFinish;)I

    iget-object v0, p0, Lcom/tencent/mm/ui/NetWarnView$2;->a:Lcom/tencent/mm/ui/NetWarnView;

    iget-object v1, p0, Lcom/tencent/mm/ui/NetWarnView$2;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/NetWarnView$2;->b:Landroid/content/Context;

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/NetWarnView$2;->b:Landroid/content/Context;

    const v4, 0x7f0a0027

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/ui/NetWarnView$2$1;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/NetWarnView$2$1;-><init>(Lcom/tencent/mm/ui/NetWarnView$2;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/NetWarnView;->a(Lcom/tencent/mm/ui/NetWarnView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    return-void
.end method
