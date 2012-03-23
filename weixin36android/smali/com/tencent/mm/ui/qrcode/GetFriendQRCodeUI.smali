.class public Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# static fields
.field private static p:I


# instance fields
.field private a:Z

.field private b:Lcom/tencent/mm/modelqrcode/CaptureHandler;

.field private c:Z

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/animation/TranslateAnimation;

.field private f:Landroid/widget/Button;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/view/View;

.field private j:Landroid/app/Dialog;

.field private k:Landroid/widget/Button;

.field private l:Lcom/tencent/mm/modelqrcode/CameraManager;

.field private m:Lcom/tencent/mm/modelqrcode/ScreenManager;

.field private n:Z

.field private o:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private final q:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private r:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xdc

    sput v0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->p:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v4, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a:Z

    iput-object v2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->b:Lcom/tencent/mm/modelqrcode/CaptureHandler;

    iput-object v2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->l:Lcom/tencent/mm/modelqrcode/CameraManager;

    iput-object v2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->m:Lcom/tencent/mm/modelqrcode/ScreenManager;

    iput-boolean v3, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->n:Z

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$6;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    invoke-direct {v0, v1, v4}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->o:Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$11;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$11;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    invoke-direct {v0, v1, v3}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->q:Lcom/tencent/mm/platformtools/MTimerHandler;

    iput-object v2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->r:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->j:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->r:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private a()V
    .locals 2

    const-string v0, "MicroMsg.GetFriendQRCodeUI"

    const-string v1, "prepare"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f070120

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a:Z

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a(Landroid/view/SurfaceHolder;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a:Z

    return-void

    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/SurfaceHolder;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->l:Lcom/tencent/mm/modelqrcode/CameraManager;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelqrcode/CameraManager;->a(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->c()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;Ljava/lang/String;)V
    .locals 5

    const v3, 0x7f0a0010

    const/4 v4, 0x1

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ""

    const-string v1, "weixin://qr/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "weixin://qr/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@qr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/tencent/mm/modelsimple/NetSceneSearchContact;

    invoke-direct {v1, v0}, Lcom/tencent/mm/modelsimple/NetSceneSearchContact;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0a022a

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$12;

    invoke-direct {v3, p0, v1}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$12;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;Lcom/tencent/mm/modelsimple/NetSceneSearchContact;)V

    invoke-static {p0, v0, v2, v4, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->r:Landroid/app/ProgressDialog;

    :goto_1
    return-void

    :cond_1
    const-string v1, "http://weixin.qq.com/r/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://weixin.qq.com/r/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@qr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f0a0333

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$13;

    invoke-direct {v2, p0, p1}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$13;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;Ljava/lang/String;)V

    new-instance v3, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$14;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$14;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method private b()V
    .locals 2

    const-string v0, "MicroMsg.GetFriendQRCodeUI"

    const-string v1, "unPrepare"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->b:Lcom/tencent/mm/modelqrcode/CaptureHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->b:Lcom/tencent/mm/modelqrcode/CaptureHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/modelqrcode/CaptureHandler;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->b:Lcom/tencent/mm/modelqrcode/CaptureHandler;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->l:Lcom/tencent/mm/modelqrcode/CameraManager;

    invoke-virtual {v0}, Lcom/tencent/mm/modelqrcode/CameraManager;->a()V

    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x12340011

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private c()V
    .locals 5

    new-instance v0, Lcom/tencent/mm/modelqrcode/CaptureHandler;

    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->l:Lcom/tencent/mm/modelqrcode/CameraManager;

    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->m:Lcom/tencent/mm/modelqrcode/ScreenManager;

    new-instance v3, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$9;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$9;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    new-instance v4, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$10;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$10;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mm/modelqrcode/CaptureHandler;-><init>(Lcom/tencent/mm/modelqrcode/CameraManager;Lcom/tencent/mm/modelqrcode/ScreenManager;Lcom/tencent/mm/modelqrcode/CaptureHandler$OnResetPreviewListener;Lcom/tencent/mm/modelqrcode/CaptureHandler$OnSuccessListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->b:Lcom/tencent/mm/modelqrcode/CaptureHandler;

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V
    .locals 8

    const/4 v7, 0x0

    const v0, 0x7f070122

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->c:Z

    if-eqz v0, :cond_0

    const v0, 0x7f070121

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->p:I

    int-to-float v2, v2

    invoke-static {p0, v2}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->d:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    add-int/2addr v2, v3

    const-string v4, "MicroMsg.GetFriendQRCodeUI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "matrix:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " content:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-direct {v0, v7, v7, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->e:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->e:Landroid/view/animation/TranslateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->e:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->e:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1
.end method

.method static synthetic d(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->n:Z

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a:Z

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a()V

    return-void
.end method

.method static synthetic g(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->r:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->c()V

    return-void
.end method

.method static synthetic i(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)Lcom/tencent/mm/platformtools/MTimerHandler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->q:Lcom/tencent/mm/platformtools/MTimerHandler;

    return-object v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 7

    const v6, 0x7f0a0010

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->q:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    const-string v0, "MicroMsg.GetFriendQRCodeUI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSceneEnd: errType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errMsg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->r:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->r:Landroid/app/ProgressDialog;

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :pswitch_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    :cond_2
    :goto_1
    return-void

    :pswitch_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/network/IDispatcher;->f()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/network/IDispatcher;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v3}, Lcom/tencent/mm/ui/MMAppMgr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/tencent/mm/network/NetService;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/tencent/mm/ui/MMAppMgr;->a(Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    const v0, 0x7f0a0079

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :pswitch_2
    const v0, 0x7f0a007a

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    goto :goto_0

    :pswitch_3
    const/4 v0, -0x4

    if-ne p2, v0, :cond_1

    const v0, 0x7f0a0334

    invoke-static {p0, v0, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    move v0, v1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    const/16 v0, -0x7d4

    if-ne p2, v0, :cond_6

    const v0, 0x7f0a0354

    invoke-static {p0, v0, v6}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;II)Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_6
    if-nez p1, :cond_7

    if-eqz p2, :cond_8

    :cond_7
    const v0, 0x7f0a007f

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_8
    check-cast p4, Lcom/tencent/mm/modelsimple/NetSceneSearchContact;

    invoke-virtual {p4}, Lcom/tencent/mm/modelsimple/NetSceneSearchContact;->f()Lcom/tencent/mm/protocal/MMSearchContact$Resp;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    const-string v3, "MicroMsg.GetFriendQRCodeUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " local:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "Contact_User"

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_9
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "Contact_User"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_Alias"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_Nick"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_PyInitial"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_QuanPin"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_Sex"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->i()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "Contact_VUser_Info"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_VUser_Info_Flag"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->n()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "Contact_KWeibo_flag"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->q()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "Contact_KWeibo"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_KWeiboNick"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Contact_Scene"

    const/16 v4, 0x1e

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "Contact_KHideExpose"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "Contact_Province"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Contact_City"

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->h()[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;[B)Z

    const-class v1, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v2, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSearchContact$Resp;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->n:Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->b()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.GetFriendQRCodeUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "select: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/modelqrcode/DecodeFile;

    invoke-direct {v1}, Lcom/tencent/mm/modelqrcode/DecodeFile;-><init>()V

    new-instance v2, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$7;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$7;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/modelqrcode/DecodeFile;->a(Ljava/lang/String;Lcom/tencent/mm/modelqrcode/DecodeFile$DecodeFinCallback;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$8;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12340011
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x10402

    const/16 v4, 0x400

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "com.tencent.mm_preferences"

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

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

    if-eqz v3, :cond_3

    :cond_0
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lb/a/ad;->b()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->c:Z

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->requestWindowFeature(I)Z

    iget-boolean v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->c:Z

    if-eqz v0, :cond_6

    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->setContentView(I)V

    const v0, 0x7f0300b0

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->i:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->setRequestedOrientation(I)V

    :goto_2
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v0, Lcom/tencent/mm/modelqrcode/ScreenManager;

    invoke-direct {v0, v2}, Lcom/tencent/mm/modelqrcode/ScreenManager;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->m:Lcom/tencent/mm/modelqrcode/ScreenManager;

    new-instance v0, Lcom/tencent/mm/modelqrcode/CameraManager;

    invoke-direct {v0, v2}, Lcom/tencent/mm/modelqrcode/CameraManager;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->l:Lcom/tencent/mm/modelqrcode/CameraManager;

    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f0b0053

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->j:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->j:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->i:Landroid/view/View;

    const v2, 0x7f0701e3

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->k:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->k:Landroid/widget/Button;

    new-instance v2, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$1;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    const v0, 0x7f070123

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->f:Landroid/widget/Button;

    const v0, 0x7f070125

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->g:Landroid/view/View;

    const v0, 0x7f070127

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->h:Landroid/widget/ImageView;

    const v0, 0x7f070126

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$2;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->f:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$3;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->g:Landroid/view/View;

    new-instance v1, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$4;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI$5;-><init>(Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->o:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    return-void

    :cond_3
    const-string v3, "en"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    goto/16 :goto_0

    :cond_4
    const-string v3, "zh_CN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->setRequestedOrientation(I)V

    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->setContentView(I)V

    const v0, 0x7f0300b1

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->i:Landroid/view/View;

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    const-string v0, "qrtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->q:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "qrtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->b()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const-string v0, "qrtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->n:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->setRequestedOrientation(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    const-string v0, "qrtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->n:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a(Landroid/view/SurfaceHolder;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a:Z

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    const-string v0, "qrtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const-string v0, "qrtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceDestroyed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->a:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/qrcode/GetFriendQRCodeUI;->l:Lcom/tencent/mm/modelqrcode/CameraManager;

    invoke-virtual {v0}, Lcom/tencent/mm/modelqrcode/CameraManager;->a()V

    return-void
.end method
