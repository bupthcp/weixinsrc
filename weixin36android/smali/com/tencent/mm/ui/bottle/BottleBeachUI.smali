.class public Lcom/tencent/mm/ui/bottle/BottleBeachUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Landroid/widget/FrameLayout;

.field private c:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

.field private d:Lcom/tencent/mm/ui/bottle/PickBottleUI;

.field private e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

.field private f:Lcom/tencent/mm/ui/bottle/BallonImageView;

.field private g:Lcom/tencent/mm/ui/bottle/LightHouseImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/tencent/mm/ui/bottle/MoonImageView;

.field private j:Landroid/widget/ImageView;

.field private k:I

.field private l:Z

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Lcom/tencent/mm/ui/bottle/BottleToast;

.field private r:Lcom/tencent/mm/ui/bottle/BottleDialog;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->k:I

    iput-boolean v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->l:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->s:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/BottleBeachUI;)Lcom/tencent/mm/ui/bottle/BallonImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->f:Lcom/tencent/mm/ui/bottle/BallonImageView;

    return-object v0
.end method

.method private a(IIII)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->b:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const v0, 0x7f070063

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->b:Landroid/widget/FrameLayout;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->p()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->n()V

    :cond_1
    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->c:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    if-nez v0, :cond_2

    const v0, 0x7f030021

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->c:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->c:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->c:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->b()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->c:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->c:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->setVisibility(I)V

    :cond_3
    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->d:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    if-nez v0, :cond_4

    const v0, 0x7f030020

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bottle/PickBottleUI;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->d:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->d:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->d:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->a()V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->d:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->d:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->setVisibility(I)V

    :cond_5
    if-nez p3, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->d:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->c()V

    :cond_6
    if-nez p4, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    if-nez v0, :cond_7

    const v0, 0x7f03001f

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    const v0, 0x7f070075

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070076

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    invoke-virtual {v0, p4}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/bottle/BottleBeachUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->k:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/bottle/BottleBeachUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->s:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/bottle/BottleBeachUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->o()V

    return-void
.end method

.method private j(I)V
    .locals 3

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->q:Lcom/tencent/mm/ui/bottle/BottleToast;

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/mm/ui/bottle/BottleToast;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/BottleToast;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->q:Lcom/tencent/mm/ui/bottle/BottleToast;

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->q:Lcom/tencent/mm/ui/bottle/BottleToast;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/bottle/BottleToast;->cancel()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->q:Lcom/tencent/mm/ui/bottle/BottleToast;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/bottle/BottleToast;->setDuration(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->q:Lcom/tencent/mm/ui/bottle/BottleToast;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/bottle/BottleToast;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->q:Lcom/tencent/mm/ui/bottle/BottleToast;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleToast;->show()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x400

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :goto_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->s:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->c(I)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->s:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->s:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->p:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f070062

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->p:Landroid/widget/TextView;

    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelbottle/BottleLogic;->c()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->p:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->p:Landroid/widget/TextView;

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f03001d

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 3

    const-string v0, "MM.UI.BottleUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSceneEnd: errType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x7d2

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->k:I

    if-nez v0, :cond_0

    const v0, 0x7f0a03e7

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->h(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0a03d9

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->j(I)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->p()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->p()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->l:Z

    return-void
.end method

.method protected final h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->r:Lcom/tencent/mm/ui/bottle/BottleDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/ui/bottle/BottleDialog;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/BottleDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->r:Lcom/tencent/mm/ui/bottle/BottleDialog;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->r:Lcom/tencent/mm/ui/bottle/BottleDialog;

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleDialog;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->r:Lcom/tencent/mm/ui/bottle/BottleDialog;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleDialog;->show()V

    return-void
.end method

.method public final i(I)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iput p1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->k:I

    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->j(I)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->s:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->o()V

    :cond_0
    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, v1, v1, v1, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(IIII)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->l:Z

    invoke-direct {p0, v2, v1, v1, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(IIII)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v1, v2, v1, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(IIII)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1, v1, v2, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(IIII)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v1, v1, v1, v2}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x3

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-static {}, Lcom/tencent/mm/modelbottle/BottleLogic;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0a03df

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->h(I)V

    goto :goto_0

    :sswitch_1
    invoke-static {}, Lcom/tencent/mm/modelbottle/BottleLogic;->b()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0a03e0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->h(I)V

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->s:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->o()V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/bottle/BottleConversationUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "conversation_from"

    const-string v2, "from_beach"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->k:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->d()V

    :cond_3
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    invoke-direct {p0, v2, v1, v1, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(IIII)V

    goto :goto_0

    :sswitch_4
    check-cast p1, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;

    invoke-virtual {p1}, Lcom/tencent/mm/ui/bottle/PickedBottleImageView;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/tencent/mm/ui/bottle/BottlePersonalInfoUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_allow_set"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07005f -> :sswitch_0
        0x7f070060 -> :sswitch_1
        0x7f070061 -> :sswitch_2
        0x7f070066 -> :sswitch_3
        0x7f070077 -> :sswitch_4
        0x7f070189 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpFunctionSwitch;

    const/16 v4, 0xb

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Lcom/tencent/mm/storage/OpLogStorage$OpFunctionSwitch;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/4 v4, 0x5

    invoke-direct {v1, v4}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :cond_0
    const v0, 0x7f0a03cb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->d(I)V

    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/ui/bottle/BottleBeachUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI$2;-><init>(Lcom/tencent/mm/ui/bottle/BottleBeachUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->a()Z

    move-result v4

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->f:Lcom/tencent/mm/ui/bottle/BallonImageView;

    if-nez v0, :cond_1

    const v0, 0x7f070059

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    if-eqz v4, :cond_2

    const v1, 0x7f02002c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bottle/BallonImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->f:Lcom/tencent/mm/ui/bottle/BallonImageView;

    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bottle/LightHouseImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->g:Lcom/tencent/mm/ui/bottle/LightHouseImageView;

    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->h:Landroid/widget/ImageView;

    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bottle/MoonImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i:Lcom/tencent/mm/ui/bottle/MoonImageView;

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->f:Lcom/tencent/mm/ui/bottle/BallonImageView;

    if-eqz v4, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/bottle/BallonImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->g:Lcom/tencent/mm/ui/bottle/LightHouseImageView;

    if-eqz v4, :cond_4

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i:Lcom/tencent/mm/ui/bottle/MoonImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/MoonImageView;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i:Lcom/tencent/mm/ui/bottle/MoonImageView;

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/bottle/MoonImageView;->setVisibility(I)V

    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/tencent/mm/ui/bottle/BottleBeachUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI$3;-><init>(Lcom/tencent/mm/ui/bottle/BottleBeachUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->m:Landroid/widget/ImageView;

    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->n:Landroid/widget/ImageView;

    const v0, 0x7f070061

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->o:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount;

    invoke-direct {v1}, Lcom/tencent/mm/modelbottle/NetSceneGetBottleCount;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    return-void

    :cond_2
    const v1, 0x7f020037

    goto/16 :goto_0

    :cond_3
    move v0, v3

    goto/16 :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_2

    :cond_5
    move v3, v2

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->c:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->c:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->a()V

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->c:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->d:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->d:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/PickBottleUI;->b()V

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->d:Lcom/tencent/mm/ui/bottle/PickBottleUI;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->q:Lcom/tencent/mm/ui/bottle/BottleToast;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->q:Lcom/tencent/mm/ui/bottle/BottleToast;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleToast;->cancel()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->q:Lcom/tencent/mm/ui/bottle/BottleToast;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleToast;->a()V

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->q:Lcom/tencent/mm/ui/bottle/BottleToast;

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->c()V

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    :cond_3
    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->f:Lcom/tencent/mm/ui/bottle/BallonImageView;

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->g:Lcom/tencent/mm/ui/bottle/LightHouseImageView;

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i:Lcom/tencent/mm/ui/bottle/MoonImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->r:Lcom/tencent/mm/ui/bottle/BottleDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->r:Lcom/tencent/mm/ui/bottle/BottleDialog;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleDialog;->dismiss()V

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->r:Lcom/tencent/mm/ui/bottle/BottleDialog;

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v8, 0x5

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->l:Z

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->k:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->finish()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v7}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    const-string v0, "MM.UI.BottleUI"

    const-string v1, "on key dwon"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    const/16 v1, 0x19

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    const-string v1, "MM.UI.BottleUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "volume current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " max:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    div-int/lit8 v1, v3, 0x7

    if-nez v1, :cond_3

    move v1, v2

    :cond_3
    sub-int v1, v4, v1

    invoke-virtual {v0, v7, v1, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v0, "MM.UI.BottleUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume current:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " max:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x18

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->g()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    const-string v1, "MM.UI.BottleUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "volume current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " max:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    div-int/lit8 v1, v3, 0x7

    if-nez v1, :cond_5

    move v1, v2

    :cond_5
    add-int/2addr v1, v4

    invoke-virtual {v0, v7, v1, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v0, "MM.UI.BottleUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume current:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " max:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->c:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->c:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c()V

    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->b()V

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConversationStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->p()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->f()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/bottle/BottleBeachUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI$1;-><init>(Lcom/tencent/mm/ui/bottle/BottleBeachUI;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->e:Lcom/tencent/mm/ui/bottle/OpenBottleUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a()V

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ConversationStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    return-void
.end method
