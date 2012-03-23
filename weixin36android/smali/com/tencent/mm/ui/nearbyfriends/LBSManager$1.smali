.class Lcom/tencent/mm/ui/nearbyfriends/LBSManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/nearbyfriends/LBSManager;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager$1;->a:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    const-string v0, "MicroMsg.LBSManager"

    const-string v1, "get location by GPS failed."

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager$1;->a:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->a:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager$1;->a:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager$1;->a:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    invoke-static {v0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->a(Lcom/tencent/mm/ui/nearbyfriends/LBSManager;)Z

    const/4 v0, 0x0

    return v0
.end method
