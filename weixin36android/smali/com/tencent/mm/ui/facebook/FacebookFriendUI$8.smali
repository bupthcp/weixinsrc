.class Lcom/tencent/mm/ui/facebook/FacebookFriendUI$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/facebook/FacebookFriendUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/facebook/FacebookFriendUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$8;->a:Lcom/tencent/mm/ui/facebook/FacebookFriendUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$8;->a:Lcom/tencent/mm/ui/facebook/FacebookFriendUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->c()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "is_force_unbind"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$8;->a:Lcom/tencent/mm/ui/facebook/FacebookFriendUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$8;->a:Lcom/tencent/mm/ui/facebook/FacebookFriendUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/facebook/FacebookFriendUI;->finish()V

    return-void
.end method
