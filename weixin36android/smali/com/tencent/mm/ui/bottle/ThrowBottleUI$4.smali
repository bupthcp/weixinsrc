.class Lcom/tencent/mm/ui/bottle/ThrowBottleUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$4;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$4;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->k(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->h()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->f()[I

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->g()[I

    move-result-object v2

    aget v2, v2, v0

    if-lt v1, v2, :cond_1

    invoke-static {}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->g()[I

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$4;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->l(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$4;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->f()[I

    move-result-object v3

    aget v0, v3, v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
