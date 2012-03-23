.class Lcom/tencent/mm/ui/bindqq/BindQQUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/bindqq/BindQQUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bindqq/BindQQUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bindqq/BindQQUI$3;->a:Lcom/tencent/mm/ui/bindqq/BindQQUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/bindqq/BindQQUI$3;->a:Lcom/tencent/mm/ui/bindqq/BindQQUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bindqq/BindQQUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a02e5

    const v2, 0x7f0a02e4

    new-instance v3, Lcom/tencent/mm/ui/bindqq/BindQQUI$3$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/bindqq/BindQQUI$3$1;-><init>(Lcom/tencent/mm/ui/bindqq/BindQQUI$3;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    return-void
.end method
