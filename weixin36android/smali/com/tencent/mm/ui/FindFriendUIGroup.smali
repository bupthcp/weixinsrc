.class public Lcom/tencent/mm/ui/FindFriendUIGroup;
.super Lcom/tencent/mm/ui/MMUIGroup;


# static fields
.field public static a:Lcom/tencent/mm/ui/FindFriendUIGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMUIGroup;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/FindMoreFriendsUI;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/FindFriendUIGroup;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "MicroMsg.FindFriendUIGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMUIGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMUIGroup;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/tencent/mm/ui/FindFriendUIGroup;->a:Lcom/tencent/mm/ui/FindFriendUIGroup;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMUIGroup;->onDestroy()V

    const-string v0, "MicroMsg.FindFriendUIGroup"

    const-string v1, "on destroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/FindFriendUIGroup;->a:Lcom/tencent/mm/ui/FindFriendUIGroup;

    return-void
.end method
