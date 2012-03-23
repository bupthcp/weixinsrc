.class Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FFIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    if-eqz p7, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->e(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->e(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    const v2, 0x7f0a03b8

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v8, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    const/4 v1, 0x1

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;-><init>(IFFIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->a(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;Lcom/tencent/mm/modelsimple/NetSceneLbsFind;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->d(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->e(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->e(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->a(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    const v1, 0x7f07019e

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$2;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->f(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
