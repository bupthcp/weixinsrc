.class public Lcom/tencent/mm/ui/bottle/ThrowBottleUI;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private final A:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

.field private c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

.field private d:Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

.field private e:Landroid/media/ToneGenerator;

.field private f:J

.field private g:Landroid/widget/Toast;

.field private h:Landroid/os/Vibrator;

.field private i:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

.field private j:Landroid/graphics/drawable/AnimationDrawable;

.field private k:Landroid/os/Handler;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/view/View;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;

.field private final x:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private final y:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private final z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->a:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->b:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x7t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->f:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->k:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->t:Z

    iput-boolean v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    new-instance v0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$3;-><init>(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->w:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$4;-><init>(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->x:Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$5;-><init>(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->y:Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$7;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$7;-><init>(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->z:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$8;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$8;-><init>(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->A:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

    check-cast p1, Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->p:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->g:Landroid/widget/Toast;

    return-object p1
.end method

.method private a(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->o:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->t:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->v:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->a(Z)V

    return-void
.end method

.method static synthetic f()[I
    .locals 1

    sget-object v0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->b:[I

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->o:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g()[I
    .locals 1

    sget-object v0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->a:[I

    return-object v0
.end method

.method private h()V
    .locals 5

    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->n:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-boolean v4, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    if-eqz v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    if-nez v0, :cond_3

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->r:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v4, 0x7f020058

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v2}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->a(Z)V

    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v1, 0x7f070083

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->p:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->p:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    if-eqz v0, :cond_6

    const v0, 0x7f0a03d1

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v4, 0x7f020065

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->a(Z)V

    goto :goto_3

    :cond_6
    const v0, 0x7f0a03d0

    goto :goto_4
.end method

.method static synthetic h(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->i()V

    return-void
.end method

.method private i()V
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v4, 0x7f070064

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->i:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->i:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    iget-object v4, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->w:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;

    invoke-virtual {v0, v4}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->i:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    iget-boolean v4, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    invoke-virtual {v0, v4, v3, v2, v1}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a(ZIII)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLeft()I

    move-result v2

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->o:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->h()V

    return-void
.end method

.method static synthetic j(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->i:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d:Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->f:J

    return-wide v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->g:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->v:Z

    return v0
.end method

.method static synthetic q(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->t:Z

    return-void
.end method

.method static synthetic r(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/media/ToneGenerator;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->e:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic s(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/platformtools/MTimerHandler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->x:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-object v0
.end method

.method static synthetic t(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Lcom/tencent/mm/platformtools/MTimerHandler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->y:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d:Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->g:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->h:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->h:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->h:Landroid/os/Vibrator;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->i:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->i:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a()V

    :cond_1
    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->i:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->j:Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->e:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->e:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    :cond_2
    return-void
.end method

.method public final a(II)V
    .locals 2

    const/16 v0, -0x7d2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v1, 0x7f0a03e7

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->h(I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x1

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->e:Landroid/media/ToneGenerator;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->h:Landroid/os/Vibrator;

    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->l:Landroid/widget/ImageView;

    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->m:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->n:Landroid/widget/ImageView;

    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->o:Landroid/widget/EditText;

    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->q:Landroid/widget/ImageView;

    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->r:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->r:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->p:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$1;-><init>(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->e()Z

    return-void
.end method

.method public final d()Z
    .locals 7

    const-wide/16 v5, 0xc8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-static {v0, v4}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    :goto_0
    return v3

    :cond_0
    const-string v0, "MM.Bottle.ThrowBottleUI"

    const-string v1, "record start"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d:Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d:Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d:Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

    :cond_1
    new-instance v0, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;-><init>(Lcom/tencent/mm/modelbottle/SceneBottle$IOnFinishListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d:Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->x:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->m:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->j:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->j:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->n:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d:Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

    if-eqz v0, :cond_2

    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d:Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->d()Z

    iput-boolean v3, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->v:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->y:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0, v5, v6}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->e:Landroid/media/ToneGenerator;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->k:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$6;-><init>(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->h:Landroid/os/Vibrator;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d:Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->A:Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Recorder$OnErrorListener;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto/16 :goto_0
.end method

.method public final e()Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "MM.Bottle.ThrowBottleUI"

    const-string v2, "bottle record stop"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->j:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->j:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d:Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->d:Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;

    invoke-virtual {v0}, Lcom/tencent/mm/modelbottle/SceneBottle$ThrowVoice;->c()Z

    move-result v0

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->x:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->y:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->f:J

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->p:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->p:Landroid/widget/Button;

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v3, 0x7f0202f9

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->l:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->z:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v3, 0x7f04000d

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const/high16 v3, 0x42f0

    invoke-static {v2, v3}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setWidth(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v2, 0x7f0a03d3

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->h(I)V

    :cond_1
    :goto_1
    return v1

    :cond_2
    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->i()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a03dd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a03de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$2;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$2;-><init>(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->h()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f070081
        :pswitch_0
    .end packed-switch
.end method

.method public setVisibility(I)V
    .locals 6

    const/16 v5, 0x400

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const/high16 v2, 0x42f0

    invoke-static {v1, v2}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->o:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->s:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->r:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v2, 0x7f020058

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->p:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v2, 0x7f0202fa

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->p:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->u:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a03d1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_0
    const v0, 0x7f0a03d0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->c:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    goto :goto_1
.end method
