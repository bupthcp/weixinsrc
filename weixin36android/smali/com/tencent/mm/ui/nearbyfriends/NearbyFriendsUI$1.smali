.class Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->a(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->a(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->d()V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->b(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->c(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->d(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->d(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_1
    return-void
.end method
