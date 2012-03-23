.class public Lcom/tencent/mm/ui/shake/ShakeReportUI;
.super Lcom/tencent/mm/ui/MMActivity;

# interfaces
.implements Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# static fields
.field private static final X:[J


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/view/View;

.field private E:Landroid/view/View;

.field private F:Landroid/view/View;

.field private G:Landroid/view/animation/Animation;

.field private H:Landroid/view/animation/Animation;

.field private I:Landroid/view/animation/Animation;

.field private J:Landroid/view/animation/Animation;

.field private K:Lcom/tencent/mm/ui/shake/ScreenOnKeeper;

.field private L:Lcom/tencent/mm/ui/shake/DraggerButton;

.field private M:Landroid/widget/LinearLayout;

.field private N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

.field private O:Landroid/widget/TextView;

.field private P:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private Q:Landroid/os/Handler;

.field private R:Ljava/lang/Runnable;

.field private S:Z

.field private T:I

.field private U:I

.field private V:Landroid/media/MediaPlayer;

.field private W:Landroid/os/Vibrator;

.field private Y:Landroid/view/View$OnClickListener;

.field private Z:I

.field a:Z

.field private aa:I

.field private ab:Z

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/tencent/mm/modelshake/NetSceneShakeReport;

.field private l:Lcom/tencent/mm/modelshake/NetSceneShakeGet;

.field private m:Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;

.field private n:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

.field private o:Lcom/tencent/mm/ui/shake/ShakeManager;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:Landroid/app/Dialog;

.field private s:Z

.field private t:Landroid/view/View;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/widget/ProgressBar;

.field private w:Landroid/view/View;

.field private x:Landroid/widget/Button;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->X:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-boolean v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->h:Z

    iput-boolean v3, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->i:Z

    iput-boolean v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->j:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->p:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->q:J

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/shake/ShakeReportUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$1;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->P:Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Q:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$2;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->R:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->S:Z

    iput v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->T:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->U:I

    iput-boolean v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Y:Landroid/view/View$OnClickListener;

    iput v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Z:I

    iput v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->aa:I

    iput-boolean v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->ab:Z

    return-void
.end method

.method static synthetic A(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->i:Z

    return v0
.end method

.method static synthetic B(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 7

    new-instance v0, Lcom/tencent/mm/modelshake/NetSceneShakeReport;

    iget v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c:F

    iget v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b:F

    iget v3, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->e:I

    iget v4, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->d:I

    iget-object v5, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->g:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/modelshake/NetSceneShakeReport;-><init>(FFIILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->k:Lcom/tencent/mm/modelshake/NetSceneShakeReport;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->k:Lcom/tencent/mm/modelshake/NetSceneShakeReport;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->n:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->a()V

    :cond_0
    return-void
.end method

.method static synthetic C(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    return-object v0
.end method

.method static synthetic D(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->A:Landroid/view/View;

    return-object v0
.end method

.method static synthetic E(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->B:Landroid/view/View;

    return-object v0
.end method

.method static synthetic F(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->D:Landroid/view/View;

    return-object v0
.end method

.method static synthetic G(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->h(I)V

    return-void
.end method

.method static synthetic H(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->j:Z

    return v0
.end method

.method static synthetic I(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->q()V

    return-void
.end method

.method static synthetic J(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/ui/shake/DraggerButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->L:Lcom/tencent/mm/ui/shake/DraggerButton;

    return-object v0
.end method

.method static synthetic K(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->aa:I

    div-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->q()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->r()V

    goto :goto_0
.end method

.method static synthetic L(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/ui/shake/ShakeFriendsView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    return-object v0
.end method

.method static synthetic M(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->I()Lcom/tencent/mm/modelshake/ShakeItemStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->e()V

    const-string v0, "MicroMsg.ShakeFriendsView"

    const-string v1, "onAfterView"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/ShakeReportUI;F)F
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b:F

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/ShakeReportUI;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->e:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/ShakeReportUI;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->q:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->r:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->w:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->u:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->v:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;)Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->m:Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Lcom/tencent/mm/modelshake/NetSceneShakeGet;)Lcom/tencent/mm/modelshake/NetSceneShakeGet;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->l:Lcom/tencent/mm/modelshake/NetSceneShakeGet;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->v:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->w:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f070270

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070272

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/shake/DraggerButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->L:Lcom/tencent/mm/ui/shake/DraggerButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->L:Lcom/tencent/mm/ui/shake/DraggerButton;

    const v1, 0x7f02028e

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/shake/DraggerButton;->setBackgroundResource(I)V

    const/high16 v0, 0x4220

    invoke-static {p0, v0}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Z:I

    const v0, 0x7f070271

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->M:Landroid/widget/LinearLayout;

    const v0, 0x7f070275

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->aa:I

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/shake/ShakeFriendsView;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    :cond_0
    const v0, 0x7f070273

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f070274

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->O:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->e()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->aa:I

    iget v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Z:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b(F)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->L:Lcom/tencent/mm/ui/shake/DraggerButton;

    new-instance v1, Lcom/tencent/mm/ui/shake/ShakeReportUI$18;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$18;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/shake/DraggerButton;->a(Lcom/tencent/mm/ui/shake/DraggerButton$OnDragListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->L:Lcom/tencent/mm/ui/shake/DraggerButton;

    new-instance v1, Lcom/tencent/mm/ui/shake/ShakeReportUI$19;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$19;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/shake/DraggerButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->J:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040004

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->J:Landroid/view/animation/Animation;

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->h(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->C:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const v0, 0x7f070269

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->C:Landroid/widget/TextView;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->C:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->J:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/shake/ShakeReportUI$13;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$13;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->J:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/ShakeReportUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->S:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/shake/ShakeReportUI;F)F
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c:F

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/shake/ShakeReportUI;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->d:I

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Q:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/shake/ShakeReportUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->g:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->S:Z

    const-string v0, "MicroMsg.ShakeReportUI"

    const-string v1, "tryStartShake"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o:Lcom/tencent/mm/ui/shake/ShakeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o:Lcom/tencent/mm/ui/shake/ShakeManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o:Lcom/tencent/mm/ui/shake/ShakeManager;

    new-instance v1, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$5;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/shake/ShakeManager;->a(Lcom/tencent/mm/ui/shake/ShakeManager$ShakeListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o:Lcom/tencent/mm/ui/shake/ShakeManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeManager;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->D:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->D:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a03f0

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->D:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a03f3

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private b(F)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    if-gez v1, :cond_0

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    :cond_0
    iget v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->aa:I

    iget v3, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Z:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->aa:I

    iget v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Z:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/shake/ShakeReportUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->s:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->R:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/shake/ShakeReportUI;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b(F)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/shake/ShakeReportUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->j:Z

    return p1
.end method

.method static synthetic d(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/modelshake/NetSceneShakeGet;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->l:Lcom/tencent/mm/modelshake/NetSceneShakeGet;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/shake/ShakeReportUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->i:Z

    return p1
.end method

.method static synthetic e(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/modelshake/NetSceneShakeReport;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->k:Lcom/tencent/mm/modelshake/NetSceneShakeReport;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->h:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->S:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/shake/ShakeReportUI;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->q:J

    return-wide v0
.end method

.method private h(I)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->E:Landroid/view/View;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->F:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->F:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->F:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->F:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    goto :goto_1
.end method

.method static synthetic i(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/ui/shake/ScreenOnKeeper;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->K:Lcom/tencent/mm/ui/shake/ScreenOnKeeper;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->ab:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->r()V

    return-void
.end method

.method static synthetic l(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->s:Z

    return v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->V:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    const v0, 0x7f0a000c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->V:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->W:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->W:Landroid/os/Vibrator;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->W:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->W:Landroid/os/Vibrator;

    sget-object v1, Lcom/tencent/mm/ui/shake/ShakeReportUI;->X:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->k:Lcom/tencent/mm/modelshake/NetSceneShakeReport;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->k:Lcom/tencent/mm/modelshake/NetSceneShakeReport;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->l:Lcom/tencent/mm/modelshake/NetSceneShakeGet;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->l:Lcom/tencent/mm/modelshake/NetSceneShakeGet;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Q:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->R:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->h(I)V

    return-void
.end method

.method static synthetic o(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o()V

    return-void
.end method

.method private p()V
    .locals 4

    const/4 v3, 0x2

    const v0, 0x7f070260

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x100e

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "default_shake_img_filename.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/algorithm/FileOperation;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const v0, 0x7f070262

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f070266

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->T:I

    if-ne v2, v3, :cond_6

    const v2, 0x7f020284

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->T:I

    if-ne v2, v3, :cond_7

    const v2, 0x7f020283

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Y:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/mm/ui/shake/ShakeReportUI$17;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$17;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    iput-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Y:Landroid/view/View$OnClickListener;

    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->A:Landroid/view/View;

    if-nez v0, :cond_1

    const v0, 0x7f070265

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->A:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->A:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->B:Landroid/view/View;

    if-nez v0, :cond_2

    const v0, 0x7f070263

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->B:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->B:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    iget v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->T:I

    if-ne v1, v3, :cond_4

    const v1, 0x7f020293

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    const v1, 0x7f020292

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x100f

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_6
    const v2, 0x7f020285

    goto :goto_1

    :cond_7
    const v2, 0x7f020282

    goto :goto_2
.end method

.method static synthetic p(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->y:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f070261

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->y:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->z:Landroid/view/View;

    if-nez v0, :cond_1

    const v0, 0x7f070264

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->z:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->A:Landroid/view/View;

    if-nez v0, :cond_2

    const v0, 0x7f070265

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->A:Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->B:Landroid/view/View;

    if-nez v0, :cond_3

    const v0, 0x7f070263

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->B:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->G:Landroid/view/animation/Animation;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040018

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->G:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->G:Landroid/view/animation/Animation;

    new-instance v1, Lcom/tencent/mm/ui/shake/ShakeReportUI$14;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$14;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->H:Landroid/view/animation/Animation;

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040015

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->H:Landroid/view/animation/Animation;

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->I:Landroid/view/animation/Animation;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->I:Landroid/view/animation/Animation;

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->J:Landroid/view/animation/Animation;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->C:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->C:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->J:Landroid/view/animation/Animation;

    invoke-static {v0, v1}, Lb/a/r;->a(Landroid/view/View;Landroid/view/animation/Animation;)V

    :cond_7
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->h(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->A:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->I:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->B:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->I:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->A:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->B:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->D:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->y:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->G:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->z:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->H:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/tencent/mm/ui/shake/ShakeReportUI$15;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$15;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    iput-boolean v5, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/shake/ShakeReportUI$16;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$16;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private q()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    rsub-int/lit8 v1, v0, 0x0

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b(F)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    invoke-direct {v1, v2, v2, v0, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$20;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$20;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-virtual {v1, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->ab:Z

    if-nez v0, :cond_0

    const v0, 0x7f070185

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f040014

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->L:Lcom/tencent/mm/ui/shake/DraggerButton;

    const v1, 0x7f02028a

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/shake/DraggerButton;->setBackgroundResource(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->ab:Z

    return-void
.end method

.method static synthetic q(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b()V

    return-void
.end method

.method static synthetic r(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->p:Ljava/lang/String;

    return-object v0
.end method

.method private r()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->aa:I

    iget v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Z:I

    sub-int v1, v0, v1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    sub-int v2, v1, v0

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b(F)V

    iget-boolean v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->ab:Z

    if-eqz v2, :cond_0

    const v2, 0x7f070185

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f040013

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {v2, v4, v4, v0, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x190

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$21;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$21;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->L:Lcom/tencent/mm/ui/shake/DraggerButton;

    const v1, 0x7f02028e

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/shake/DraggerButton;->setBackgroundResource(I)V

    iput-boolean v5, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->ab:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->d()V

    return-void
.end method

.method static synthetic s(Lcom/tencent/mm/ui/shake/ShakeReportUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->U:I

    return v0
.end method

.method static synthetic t(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->r:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic u(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->u:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic v(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->m:Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;

    return-object v0
.end method

.method static synthetic w(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->E:Landroid/view/View;

    return-object v0
.end method

.method static synthetic x(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->O:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic y(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->p()V

    return-void
.end method

.method static synthetic z(Lcom/tencent/mm/ui/shake/ShakeReportUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->F:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300e4

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 9

    const v2, 0x7f0a000d

    const/4 v3, 0x4

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->a(Z)V

    :cond_1
    check-cast p4, Lcom/tencent/mm/modelshake/NetSceneShakeReport;

    if-nez p2, :cond_2

    if-nez p1, :cond_2

    invoke-virtual {p4}, Lcom/tencent/mm/modelshake/NetSceneShakeReport;->g()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->s:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;I)V

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Ljava/lang/String;)V

    const-string v0, "MicroMsg.ShakeReportUI"

    const-string v1, "onSceneEnd reprot failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->Q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->R:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :sswitch_1
    check-cast p4, Lcom/tencent/mm/modelshake/NetSceneShakeGet;

    if-nez p2, :cond_5

    if-nez p1, :cond_5

    invoke-virtual {p4}, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->i()I

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->s:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;I)V

    :cond_6
    invoke-virtual {p4}, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p4}, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->h()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->U:I

    invoke-virtual {p4}, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "MicroMsg.ShakeReportUI"

    const-string v1, "empty shake get list"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->s:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;I)V

    :cond_8
    invoke-virtual {p4}, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    if-ne v0, v7, :cond_16

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    invoke-virtual {v0, v7}, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->a(Z)V

    :cond_a
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelshake/ShakeItem;

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelshake/ShakeItem;

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->d()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MicroMsg.ShakeReportUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1 u:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " n:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " d:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelshake/ShakeItem;

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->s:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;I)V

    :cond_b
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->h(I)V

    invoke-virtual {p4}, Lcom/tencent/mm/modelshake/NetSceneShakeGet;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelshake/ShakeItem;

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    const v3, 0x7f07025b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v2

    if-eqz v2, :cond_11

    const v2, 0x7f0a03fc

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v3, v2, v4}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    const v2, 0x7f07025d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->r()I

    move-result v2

    if-ne v2, v7, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->m()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0a03f5

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    const v2, 0x7f07025a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    const v2, 0x7f07026f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->n()I

    move-result v2

    if-lez v2, :cond_13

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->n()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/mm/modelgetvuserinfo/SceneGetVUserInfo;->a(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x3fc0

    invoke-static {v2, v3}, Lb/a/e;->a(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->i()I

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->i()I

    move-result v1

    if-ne v1, v7, :cond_14

    const v1, 0x7f02013a

    :goto_4
    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    const v3, 0x7f07025c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    const v2, 0x7f07025e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_d

    const-string v2, "MicroMsg.ShakeReportUI"

    const-string v3, "PROVINCE NULL"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelshake/ShakeItem;->c(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    :cond_d
    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    const-string v2, "MicroMsg.ShakeReportUI"

    const-string v3, "CITY NULL"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelshake/ShakeItem;->d(Ljava/lang/String;)Lcom/tencent/mm/protocal/protobuf/ShakeGetItem;

    :cond_e
    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->m()I

    move-result v2

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_15

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_f

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    :cond_f
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040011

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_10
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_11
    const-string v2, ""

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->h()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_13
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_14
    const v1, 0x7f020139

    goto/16 :goto_4

    :cond_15
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_16
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    invoke-virtual {v0, v7}, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->a(Z)V

    :cond_17
    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->s:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;I)V

    :cond_18
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->h(I)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->q()V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "MicroMsg.ShakeReportUI"

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

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->v:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->w:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    check-cast p4, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;

    invoke-virtual {p4}, Lcom/tencent/mm/modelavatar/NetSceneGetHDHeadImg;->g()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1a

    if-nez p2, :cond_1a

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_1a
    if-ne p1, v3, :cond_1b

    const/16 v0, -0x37

    if-eq p2, v0, :cond_0

    :cond_1b
    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0287

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_2
        0x33 -> :sswitch_0
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.ShakeReportUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyChanged user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    const v1, 0x7f07025a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected final h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final j()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/mm/ui/MMActivity;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/tools/CropImageUI;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "CropImage_ImgPath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "CropImage_OutputPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "custom_shake_img_filename.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_0

    const-string v0, "CropImage_OutputPath"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x100e

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x100f

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->p()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "onConfigurationChanged"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/16 v8, 0x100c

    const/4 v7, 0x1

    const/high16 v6, -0x3b86

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a03ef

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    invoke-static {p0}, Lcom/tencent/mm/ui/AvatarDrawable;->a(Lcom/tencent/mm/ui/MMActivity;)V

    new-instance v0, Lcom/tencent/mm/ui/shake/ScreenOnKeeper;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->f()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/shake/ScreenOnKeeper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->K:Lcom/tencent/mm/ui/shake/ScreenOnKeeper;

    const v0, 0x7f07026b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0300e2

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0b0051

    invoke-direct {v4, v1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    new-instance v1, Lcom/tencent/mm/ui/shake/ShakeReportUI$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$6;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const v1, 0x7f070259

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->x:Landroid/widget/Button;

    const v1, 0x7f070267

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->D:Landroid/view/View;

    const v1, 0x7f070268

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->E:Landroid/view/View;

    const v1, 0x7f070269

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->F:Landroid/view/View;

    const v1, 0x7f07026e

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    new-instance v5, Lcom/tencent/mm/ui/shake/ShakeReportUI$7;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$7;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->t:Landroid/view/View;

    const v5, 0x7f07025a

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v5, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;

    invoke-direct {v5, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$8;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->b(Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v8, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_0
    new-instance v1, Lcom/tencent/mm/ui/shake/ShakeReportUI$9;

    invoke-direct {v1, p0, v4}, Lcom/tencent/mm/ui/shake/ShakeReportUI$9;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->x:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/shake/ShakeReportUI$10;

    invoke-direct {v1, p0, v4}, Lcom/tencent/mm/ui/shake/ShakeReportUI$10;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/mm/ui/shake/ShakeReportUI$11;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$11;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$12;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->T:I

    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->p()V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->P:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v3, 0x14

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    new-instance v0, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    new-instance v1, Lcom/tencent/mm/ui/shake/ShakeReportUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$3;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/nearbyfriends/LBSManager$OnLocationGotListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->n:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    iput v6, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b:F

    iput v6, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->c:F

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->e:I

    iput v7, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->d:I

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->n:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->n:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->n:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->a()V

    new-instance v0, Lcom/tencent/mm/ui/shake/ShakeManager;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/shake/ShakeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o:Lcom/tencent/mm/ui/shake/ShakeManager;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x1010

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->s:Z

    const v0, 0x7f07026a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->s:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o:Lcom/tencent/mm/ui/shake/ShakeManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeManager;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0a03f3

    const v1, 0x7f0a0010

    new-instance v2, Lcom/tencent/mm/ui/shake/ShakeReportUI$4;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI$4;-><init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V

    invoke-static {p0, v0, v1, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x33

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x34

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    invoke-static {p0}, Lcom/tencent/mm/ui/AvatarDrawable;->b(Lcom/tencent/mm/ui/MMActivity;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->n:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->n:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->d()V

    iput-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->n:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o:Lcom/tencent/mm/ui/shake/ShakeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o:Lcom/tencent/mm/ui/shake/ShakeManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeManager;->c()V

    iput-object v2, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o:Lcom/tencent/mm/ui/shake/ShakeManager;

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->b()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->V:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_3
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->ab:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->r()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "MicroMsg.ShakeReportUI"

    const-string v1, "onPause!"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->n:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->n:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->b()V

    :cond_0
    const-string v0, "MicroMsg.ShakeReportUI"

    const-string v1, "stopShake"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->S:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o:Lcom/tencent/mm/ui/shake/ShakeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o:Lcom/tencent/mm/ui/shake/ShakeManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeManager;->c()V

    :cond_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o()V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->a()V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->K:Lcom/tencent/mm/ui/shake/ScreenOnKeeper;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ScreenOnKeeper;->b()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->q:J

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->n:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->n:Lcom/tencent/mm/ui/nearbyfriends/LBSManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/nearbyfriends/LBSManager;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o:Lcom/tencent/mm/ui/shake/ShakeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->o:Lcom/tencent/mm/ui/shake/ShakeManager;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeManager;->b()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeReportUI;->N:Lcom/tencent/mm/ui/shake/ShakeFriendsView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/shake/ShakeFriendsView;->c()V

    :cond_2
    return-void
.end method
