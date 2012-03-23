.class Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x1007

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x1008

    iget-object v3, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;

    iget-object v3, v3, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    invoke-static {v3}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->c(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/SelfPersonCard;->b()Lcom/tencent/mm/model/SelfPersonCard;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;

    iget-object v2, v2, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    const-class v3, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->startActivity(Landroid/content/Intent;)V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/model/SelfPersonCard;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/model/SelfPersonCard;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/model/SelfPersonCard;->d()I

    move-result v0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;

    iget-object v2, v2, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    const-class v3, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;

    iget-object v2, v2, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;

    const-class v3, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsIntroUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
