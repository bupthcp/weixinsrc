.class Lcom/tencent/mm/ui/bottle/BottleBeachUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/BottleBeachUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI$1;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI$1;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(Lcom/tencent/mm/ui/bottle/BottleBeachUI;)Lcom/tencent/mm/ui/bottle/BallonImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI$1;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->b(Lcom/tencent/mm/ui/bottle/BottleBeachUI;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI$1;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->c(Lcom/tencent/mm/ui/bottle/BottleBeachUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI$1;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->d(Lcom/tencent/mm/ui/bottle/BottleBeachUI;)V

    :cond_0
    return-void
.end method
