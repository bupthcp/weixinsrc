.class Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->a(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->b(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1$1;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1$1;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;)V

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->a(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->a(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
