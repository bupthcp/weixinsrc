.class Lcom/tencent/mm/ui/bottle/PickBottleUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/bottle/PickBottleUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/PickBottleUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    new-instance v1, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

    invoke-direct {v1}, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->a(Lcom/tencent/mm/ui/bottle/PickBottleUI;Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;)Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->c(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/PickBottleUI$1$1;-><init>(Lcom/tencent/mm/ui/bottle/PickBottleUI$1;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->a(Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;)Z

    return-void
.end method
