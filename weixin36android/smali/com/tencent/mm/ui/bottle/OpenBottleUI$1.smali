.class Lcom/tencent/mm/ui/bottle/OpenBottleUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/OpenBottleUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/OpenBottleUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a(Lcom/tencent/mm/ui/bottle/OpenBottleUI;)Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI$1;->a:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->b(Lcom/tencent/mm/ui/bottle/OpenBottleUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    return-void
.end method
