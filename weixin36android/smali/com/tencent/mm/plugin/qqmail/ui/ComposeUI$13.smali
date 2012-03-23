.class Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    const v1, 0x7f0a0456

    const v2, 0x7f0a0010

    new-instance v3, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$1;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;)V

    new-instance v4, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$2;

    invoke-direct {v4, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13$2;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->finish()V

    goto :goto_0
.end method
