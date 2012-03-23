.class public Lcom/tencent/mm/ui/video/VideoRecorderUI;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static A:Lcom/tencent/mm/ui/video/VideoRecorderUI;


# instance fields
.field private B:Z

.field private C:Z

.field private D:Lcom/tencent/mm/ui/skin/MMSkinFactory;

.field private E:Z

.field private F:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private G:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private a:Landroid/view/SurfaceView;

.field private b:Landroid/view/SurfaceHolder;

.field private c:Ljava/lang/String;

.field private d:Lcom/tencent/mm/modelvideo/SceneVideo;

.field private e:Landroid/app/ProgressDialog;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/ImageButton;

.field private h:Z

.field private i:Z

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:J

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/PopupWindow;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageButton;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:I

.field private y:Z

.field private z:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a:Landroid/view/SurfaceView;

    iput-object v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->b:Landroid/view/SurfaceHolder;

    iput-object v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->c:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->e:Landroid/app/ProgressDialog;

    iput-boolean v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->h:Z

    iput-boolean v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->i:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->n:J

    iput-object v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->s:Landroid/widget/ImageButton;

    iput v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->x:I

    iput-boolean v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->B:Z

    iput-boolean v4, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->C:Z

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI$1;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->F:Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoRecorderUI$12;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI$12;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->G:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-void
.end method

.method static synthetic A(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic B(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->p:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic C(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic D(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->v:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic E(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->w:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic F(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Lcom/tencent/mm/platformtools/MTimerHandler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->G:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-object v0
.end method

.method static synthetic G(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->s:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic H(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->k:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic I(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->z:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoRecorderUI;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->x:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoRecorderUI;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->n:J

    return-wide v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoRecorderUI;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoRecorderUI;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->p:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/video/VideoRecorderUI;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->q:Landroid/widget/TextView;

    return-object p1
.end method

.method public static a()Lcom/tencent/mm/ui/video/VideoRecorderUI;
    .locals 1

    sget-object v0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->A:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->h:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0329

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/video/VideoRecorderUI$8;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI$8;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    new-instance v3, Lcom/tencent/mm/ui/video/VideoRecorderUI$9;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI$9;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->finish()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->u:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->k:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iput-boolean v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->h:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->t:Landroid/widget/ImageView;

    const v1, 0x7f020254

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->j:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->f:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->u:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->t:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->y:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/SceneVideo;->c()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/SceneVideo;->b()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    const-string v3, "MicroMsg.VideoRecorderUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video size:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-virtual {v2}, Lcom/tencent/mm/modelvideo/SceneVideo;->b()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-virtual {v3}, Lcom/tencent/mm/modelvideo/SceneVideo;->c()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    const-string v3, "MicroMsg.VideoRecorderUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video size:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    return-void
.end method

.method static synthetic e(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->i:Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->e()V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->g:Landroid/widget/ImageButton;

    const v1, 0x7f0202f0

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0326

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/video/VideoRecorderUI$10;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI$10;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-static {p0, v0, v1, v5, v2}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->e:Landroid/app/ProgressDialog;

    iget-wide v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->n:J

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->F:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v5, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->h:Z

    iget-object v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a:Landroid/view/SurfaceView;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoRecorderUI$11;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI$11;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Lcom/tencent/mm/modelvideo/SceneVideo$OnProgressListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->g:Landroid/widget/ImageButton;

    const v1, 0x7f0202f1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/video/VideoRecorderUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->x:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/video/VideoRecorderUI;)I
    .locals 2

    iget v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->x:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->x:I

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->i:Z

    return v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->h:Z

    return v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->y:Z

    return v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->g:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->k:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iput-boolean v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->i:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->t:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->s:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->j:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->n:J

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->F:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/SceneVideo;->j()V

    return-void
.end method

.method static synthetic m(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Lcom/tencent/mm/modelvideo/SceneVideo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->j:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->b()V

    return-void
.end method

.method static synthetic p(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->E:Z

    return v0
.end method

.method static synthetic q(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->B:Z

    return v0
.end method

.method static synthetic s(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->b:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic t(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->B:Z

    return v0
.end method

.method static synthetic u(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->c()V

    return-void
.end method

.method static synthetic v(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->o:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic w(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/view/SurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic x(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->e:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic y(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/app/ProgressDialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->e:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic z(Lcom/tencent/mm/ui/video/VideoRecorderUI;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->f:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public final a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->D:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/skin/MMSkinFactory;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, v0, p3}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->finish()V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x400

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "com.tencent.mm_preferences"

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "zh_TW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "zh_HK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/skin/MMSkinFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->D:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    sput-object p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->A:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->requestWindowFeature(I)Z

    invoke-static {}, Lb/a/ad;->b()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->y:Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->y:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0300fb

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->setContentView(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "VideoRecorder_ToUser"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "VideoRecorder_NeedResult"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->E:Z

    const-string v0, "MicroMsg.VideoRecorderUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "talker :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a:Landroid/view/SurfaceView;

    const v0, 0x7f0702a6

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->o:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->b:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->b:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->b:Landroid/view/SurfaceHolder;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    const v0, 0x7f0702ac

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->t:Landroid/widget/ImageView;

    const v0, 0x7f0702a9

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->z:Landroid/widget/ImageButton;

    const v0, 0x7f0702ad

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->u:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->u:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-direct {v0}, Lcom/tencent/mm/modelvideo/SceneVideo;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->l:Landroid/widget/TextView;

    const v0, 0x7f0702af

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->v:Landroid/widget/TextView;

    const v0, 0x7f0702ae

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->w:Landroid/widget/TextView;

    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->m:Landroid/widget/TextView;

    const v0, 0x7f07008e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->g:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->g:Landroid/widget/ImageButton;

    new-instance v3, Lcom/tencent/mm/ui/video/VideoRecorderUI$2;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI$2;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->j:Landroid/widget/Button;

    new-instance v3, Lcom/tencent/mm/ui/video/VideoRecorderUI$3;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI$3;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->k:Landroid/widget/Button;

    new-instance v3, Lcom/tencent/mm/ui/video/VideoRecorderUI$4;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI$4;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->f:Landroid/widget/Button;

    new-instance v3, Lcom/tencent/mm/ui/video/VideoRecorderUI$5;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI$5;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lb/a/ad;->a()I

    move-result v0

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->z:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->z:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoRecorderUI$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI$6;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0702b0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->s:Landroid/widget/ImageButton;

    const v0, 0x7f0702a8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->s:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tencent/mm/ui/video/VideoRecorderUI$7;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI$7;-><init>(Lcom/tencent/mm/ui/video/VideoRecorderUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->y:Z

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Ljava/lang/String;Z)I

    return-void

    :cond_2
    const-string v3, "en"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    goto/16 :goto_0

    :cond_3
    const-string v3, "zh_CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->setRequestedOrientation(I)V

    const v0, 0x7f0300fc

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->setContentView(I)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->z:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/tencent/mm/ui/video/VideoRecorderUI;->A:Lcom/tencent/mm/ui/video/VideoRecorderUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->D:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->D:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/MMSkinFactory;->a()V

    iput-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->D:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    :cond_0
    const-string v0, "MicroMsg.VideoRecorderUI"

    const-string v1, "on destroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const-string v1, "MicroMsg.VideoRecorderUI"

    const-string v2, "KEYCODE_BACK"

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->i:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->b()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/SceneVideo;->k()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->c()V

    iput-boolean v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->i:Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->e()V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->y:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->g:Landroid/widget/ImageButton;

    const v1, 0x7f0202f0

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->F:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->l:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->p:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->p:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->G:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    const-string v0, "MicroMsg.VideoRecorderUI"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->g:Landroid/widget/ImageButton;

    const v1, 0x7f0202f1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->C:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->b:Landroid/view/SurfaceHolder;

    iget-boolean v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->B:Z

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Landroid/view/SurfaceHolder;Z)Z

    iput-boolean v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->B:Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d()V

    :cond_0
    iput-boolean v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->C:Z

    const-string v0, "MicroMsg.VideoRecorderUI"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "MicroMsg.VideoRecorderUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    iget-object v1, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->b:Landroid/view/SurfaceHolder;

    iget-boolean v2, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->B:Z

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelvideo/SceneVideo;->a(Landroid/view/SurfaceHolder;Z)Z

    iput-boolean v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->B:Z

    iput-boolean v3, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->C:Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "MicroMsg.VideoRecorderUI"

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "MicroMsg.VideoRecorderUI"

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->C:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/video/VideoRecorderUI;->d:Lcom/tencent/mm/modelvideo/SceneVideo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/SceneVideo;->a()I

    return-void
.end method
