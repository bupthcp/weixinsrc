.class public Lcom/tencent/mm/ui/bottle/PickBottleUI;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

.field private b:Lcom/tencent/mm/ui/bottle/SprayLayout;

.field private c:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->f:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/PickBottleUI$1;-><init>(Lcom/tencent/mm/ui/bottle/PickBottleUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->g:Ljava/lang/Runnable;

    new-instance v0, Lcom/tencent/mm/ui/bottle/PickBottleUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/PickBottleUI$2;-><init>(Lcom/tencent/mm/ui/bottle/PickBottleUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->h:Ljava/lang/Runnable;

    check-cast p1, Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/PickBottleUI;Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;)Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->e:Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/ui/bottle/SprayLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->b:Lcom/tencent/mm/ui/bottle/SprayLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->e:Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Lcom/tencent/mm/ui/bottle/PickedBottleImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->c:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/bottle/PickBottleUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->d:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const v0, 0x7f070077

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->c:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v1, 0x7f070067

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bottle/SprayLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->b:Lcom/tencent/mm/ui/bottle/SprayLayout;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->c:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f02003a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->setBackgroundResource(I)V

    :cond_0
    invoke-virtual {p0, p0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->b:Lcom/tencent/mm/ui/bottle/SprayLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->c:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    return-void
.end method

.method public final c()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->c:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->b:Lcom/tencent/mm/ui/bottle/SprayLayout;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1, v2, v2}, Lcom/tencent/mm/ui/bottle/SprayLayout;->a(III)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->c:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->c:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->e(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->onClick(Landroid/view/View;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f070077
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->getWidth()I

    move-result v5

    mul-int/lit16 v4, v4, 0x226

    div-int/lit16 v4, v4, 0x320

    mul-int/lit8 v6, v5, 0x78

    div-int/lit16 v6, v6, 0x1e0

    sub-int v6, v5, v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v7, v4

    cmpl-float v7, v3, v7

    if-lez v7, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->e:Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->e:Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->e:Lcom/tencent/mm/modelbottle/SceneBottle$PickBottle;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->f:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    :cond_1
    return v1

    :cond_2
    int-to-float v7, v6

    int-to-float v8, v6

    mul-float/2addr v8, v3

    int-to-float v9, v4

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    cmpg-float v7, v0, v7

    if-gez v7, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    int-to-float v5, v5

    int-to-float v6, v6

    mul-float/2addr v3, v6

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v5

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->b:Lcom/tencent/mm/ui/bottle/SprayLayout;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/bottle/SprayLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/PickBottleUI;->c:Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->setVisibility(I)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
