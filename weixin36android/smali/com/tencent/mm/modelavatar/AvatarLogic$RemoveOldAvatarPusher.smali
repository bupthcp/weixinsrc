.class Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldAvatarPusher;
.super Lcom/tencent/mm/platformtools/MTimerHandler;


# instance fields
.field private final a:Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldCallBack;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldCallBack;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object p1, p0, Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldAvatarPusher;->a:Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldCallBack;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldAvatarPusher;->a:Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldCallBack;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldCallBack;->a(Ljava/lang/Runnable;)V

    return-void
.end method
