.class Lcom/tencent/mm/ui/ContactSearchUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/ContactSearchUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/ContactSearchUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/ContactSearchUI$4;->a:Lcom/tencent/mm/ui/ContactSearchUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/ContactSearchUI$4;->a:Lcom/tencent/mm/ui/ContactSearchUI;

    const-class v2, Lcom/tencent/mm/ui/friend/InviteRecommendChoiceUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/ContactSearchUI$4;->a:Lcom/tencent/mm/ui/ContactSearchUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/ContactSearchUI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
