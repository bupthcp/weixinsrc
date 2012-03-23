.class Lcom/tencent/mm/ui/facebook/FacebookFriendUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private synthetic b:Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;

.field private synthetic c:Lcom/tencent/mm/ui/facebook/FacebookFriendUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/facebook/FacebookFriendUI;Lcom/tencent/mm/platformtools/MTimerHandler;Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$4;->c:Lcom/tencent/mm/ui/facebook/FacebookFriendUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$4;->a:Lcom/tencent/mm/platformtools/MTimerHandler;

    iput-object p3, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$4;->b:Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$4;->a:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/FacebookFriendUI$4;->b:Lcom/tencent/mm/modelfriend/NetSceneGetMFriend;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    return-void
.end method
