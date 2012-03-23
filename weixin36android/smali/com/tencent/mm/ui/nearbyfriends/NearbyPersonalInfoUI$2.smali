.class Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->a(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;)I

    move-result v0

    if-eq v0, v5, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/SelfPersonCard;->a()Lcom/tencent/mm/model/SelfPersonCard;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->a(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/SelfPersonCard;->a(I)V

    invoke-static {v0}, Lcom/tencent/mm/model/SelfPersonCard;->a(Lcom/tencent/mm/model/SelfPersonCard;)Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/SelfPersonCard;->b()Lcom/tencent/mm/model/SelfPersonCard;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->b(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;)V

    :goto_0
    return-void

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
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->b(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    const-class v4, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/tencent/mm/model/SelfPersonCard;->a()Lcom/tencent/mm/model/SelfPersonCard;

    move-result-object v1

    if-eq v0, v5, :cond_4

    invoke-virtual {v1, v0}, Lcom/tencent/mm/model/SelfPersonCard;->a(I)V

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v0

    invoke-static {v1}, Lcom/tencent/mm/model/SelfPersonCard;->a(Lcom/tencent/mm/model/SelfPersonCard;)Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->finish()V

    goto :goto_0
.end method
