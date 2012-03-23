.class public Lcom/tencent/mm/ui/bottle/OpenBottleUI;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;
.implements Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnCompletionListener;
.implements Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;
.implements Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;


# static fields
.field private static i:Lcom/tencent/mm/platformtools/SensorController;


# instance fields
.field private a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private j:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

.field private k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

.field private l:Lcom/tencent/mm/storage/MsgInfo;

.field private m:Ljava/lang/String;

.field private n:Lcom/tencent/mm/ui/chatting/SpanUtil;

.field private o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->o:Z

    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ContactStorage;->a(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    new-instance v0, Lcom/tencent/mm/ui/chatting/SpanUtil;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->n:Lcom/tencent/mm/ui/chatting/SpanUtil;

    sget-object v0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->i:Lcom/tencent/mm/platformtools/SensorController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/platformtools/SensorController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->i:Lcom/tencent/mm/platformtools/SensorController;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/bottle/OpenBottleUI;)Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->j:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    return-object v0
.end method

.method private a(Lcom/tencent/mm/storage/MsgInfo;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a(Landroid/content/Context;I)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-direct {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    :cond_2
    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->a(Ljava/lang/String;)Z

    invoke-static {p1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->e(Lcom/tencent/mm/storage/MsgInfo;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->o:Z

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    iget-boolean v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->o:Z

    invoke-static {v0, v1}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Landroid/content/Context;Z)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnCompletionListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Lcom/tencent/mm/modelvoice/SceneVoice$Player$OnErrorListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->e:Landroid/widget/ImageView;

    const v1, 0x7f040003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v3, 0x7f0a0155

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/bottle/OpenBottleUI;)Lcom/tencent/mm/ui/bottle/BottleBeachUI;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    return-object v0
.end method

.method private h()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v3, 0x7f0a03dc

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->L()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/mm/model/ContactStorageLogic;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->g:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->p()I

    move-result v0

    if-ne v0, v8, :cond_1

    const v0, 0x7f02013a

    :goto_0
    invoke-virtual {v2, v0, v7, v7, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->K()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, v1, v3}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    const v0, 0x7f020139

    goto :goto_0
.end method

.method private i()V
    .locals 2

    const-string v0, "keep_app_silent"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->e:Landroid/widget/ImageView;

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->b()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->l:Lcom/tencent/mm/storage/MsgInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->l:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    sget-object v2, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->i:Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->i:Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/platformtools/SensorController;->a(Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->l:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Landroid/content/Context;Z)Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->o:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-static {v0, p1}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Landroid/content/Context;Z)Z

    iput-boolean p1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->o:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->l:Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a(Lcom/tencent/mm/storage/MsgInfo;)V

    goto :goto_0
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->h()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->l:Lcom/tencent/mm/storage/MsgInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->l:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->d()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->i()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a(Z)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-static {v0, v1}, Lcom/tencent/mm/modelvoice/VoicePlayer;->a(Landroid/content/Context;Z)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->l:Lcom/tencent/mm/storage/MsgInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->l:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->d()V

    :cond_0
    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->j:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->j:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a()V

    iput-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->j:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    :cond_1
    sput-object v1, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->i:Lcom/tencent/mm/platformtools/SensorController;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Lcom/tencent/mm/modelavatar/AvatarStorage$IOnAvatarChanged;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ContactStorage;->b(Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 6

    const/16 v2, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->j:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->j:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->j:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    new-instance v1, Lcom/tencent/mm/ui/bottle/OpenBottleUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI$1;-><init>(Lcom/tencent/mm/ui/bottle/OpenBottleUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a(Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI$OnThrowAnimEndListener;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->b:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->b:Landroid/widget/TextView;

    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->d:Landroid/widget/FrameLayout;

    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->e:Landroid/widget/ImageView;

    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->f:Landroid/widget/TextView;

    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->g:Landroid/widget/TextView;

    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->m:Ljava/lang/String;

    const-string v0, "MM.Bottle_OpenBottleUI"

    invoke-static {v0, p1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/MsgInfoStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->l:Lcom/tencent/mm/storage/MsgInfo;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->l:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->l:Lcom/tencent/mm/storage/MsgInfo;

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Lcom/tencent/mm/storage/MsgInfo;)F

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->d:Landroid/widget/FrameLayout;

    float-to-int v2, v0

    const/4 v0, 0x2

    if-gt v2, v0, :cond_2

    const/16 v0, 0x64

    :goto_0
    int-to-float v0, v0

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v3, 0x7f0a009b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    sget-object v2, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->i:Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->i:Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/platformtools/SensorController;->a(Lcom/tencent/mm/platformtools/SensorController$SensorEventCallBack;)V

    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->h()V

    return-void

    :cond_2
    const/16 v0, 0xa

    if-ge v2, v0, :cond_3

    add-int/lit8 v0, v2, -0x2

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_3
    const/16 v0, 0x3c

    if-ge v2, v0, :cond_4

    div-int/lit8 v0, v2, 0xa

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_4
    const/16 v0, 0xcc

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->l:Lcom/tencent/mm/storage/MsgInfo;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->n:Lcom/tencent/mm/ui/chatting/SpanUtil;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/widget/TextView;)V

    goto :goto_1
.end method

.method public final d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    sget-object v1, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->i:Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->i:Lcom/tencent/mm/platformtools/SensorController;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/SensorController;->a()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "MM.Bottle_OpenBottleUI"

    const-string v1, "sensor receiver has already unregistered"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l_()V
    .locals 2

    const-string v0, "MM.Bottle_OpenBottleUI"

    const-string v1, "voice play completion"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->i()V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const v1, 0x7f0a000a

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public final m_()V
    .locals 2

    const-string v0, "MM.Bottle_OpenBottleUI"

    const-string v1, "voice play error"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->i()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->j:Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->l:Lcom/tencent/mm/storage/MsgInfo;

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/ThrowBottleAnimUI;->a(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/OpLogStorage$OpDeleteBottle;

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->m:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/storage/OpLogStorage$OpDeleteBottle;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->d(Ljava/lang/String;)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->d()V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->i()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->i(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    const-class v2, Lcom/tencent/mm/ui/bottle/BottleChattingUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Chat_User"

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a:Lcom/tencent/mm/ui/bottle/BottleBeachUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/bottle/BottleBeachUI;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->d()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->k:Lcom/tencent/mm/modelvoice/SceneVoice$Player;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/SceneVoice$Player;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->l:Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/bottle/OpenBottleUI;->a(Lcom/tencent/mm/storage/MsgInfo;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f070072
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
