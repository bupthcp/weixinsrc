.class Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd;


# direct methods
.method constructor <init>(Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd$1;->a:Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->x()V

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->f()V

    return-void
.end method
