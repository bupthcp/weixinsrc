.class Lcom/tencent/mm/ui/bottle/PickBottleUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/PickBottleUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/PickBottleUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$2;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$2;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->d(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$2;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->d(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$2;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->b(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    :cond_0
    return-void
.end method
