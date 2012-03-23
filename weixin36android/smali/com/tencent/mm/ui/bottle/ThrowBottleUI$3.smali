.class Lcom/tencent/mm/ui/bottle/ThrowBottleUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$3;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$3;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->j(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$3;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    return-void
.end method
