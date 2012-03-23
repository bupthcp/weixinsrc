.class Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;

    iget-object v8, v0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    new-instance v0, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    const/4 v1, 0x2

    const-string v6, ""

    const-string v7, ""

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/modelsimple/NetSceneLbsFind;-><init>(IFFIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->b(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;Lcom/tencent/mm/modelsimple/NetSceneLbsFind;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;

    iget-object v1, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->h(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;)Lcom/tencent/mm/modelsimple/NetSceneLbsFind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;

    iget-object v0, v0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;

    iget-object v1, v1, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->c()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;

    iget-object v2, v2, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6$1;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;

    iget-object v3, v3, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;

    const v4, 0x7f0a03ca

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6$1$1;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6$1$1;-><init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI$6$1;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;->a(Lcom/tencent/mm/ui/nearbyfriends/NearbyFriendsUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
