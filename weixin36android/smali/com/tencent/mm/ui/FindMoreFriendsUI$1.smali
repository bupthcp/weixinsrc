.class Lcom/tencent/mm/ui/FindMoreFriendsUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/FindMoreFriendsUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/FindMoreFriendsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI$1;->a:Lcom/tencent/mm/ui/FindMoreFriendsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI$1;->a:Lcom/tencent/mm/ui/FindMoreFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a(Lcom/tencent/mm/ui/FindMoreFriendsUI;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x1008

    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI$1;->a:Lcom/tencent/mm/ui/FindMoreFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->a(Lcom/tencent/mm/ui/FindMoreFriendsUI;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    const-string v1, "tab_find_friend"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MainTabUI;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI$1;->a:Lcom/tencent/mm/ui/FindMoreFriendsUI;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/FindMoreFriendsUI$1;->a:Lcom/tencent/mm/ui/FindMoreFriendsUI;

    const-class v3, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/FindMoreFriendsUI;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
