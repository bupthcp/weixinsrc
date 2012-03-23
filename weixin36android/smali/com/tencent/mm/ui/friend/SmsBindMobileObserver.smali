.class public Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;
.super Landroid/database/ContentObserver;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Landroid/app/AlertDialog;

.field private final i:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$OnMobileBindedListener;

.field private j:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

.field private k:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

.field private l:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

.field private m:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

.field private n:Ljava/lang/String;

.field private o:[Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ProgressBar;

.field private s:Ljava/lang/String;

.field private t:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

.field private u:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;Landroid/os/Handler;Landroid/content/Context;Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$OnMobileBindedListener;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-boolean v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->c:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->d:Z

    iput-boolean v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    iput v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->g:I

    iput-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->s:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;-><init>(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->u:Landroid/os/Handler;

    iput-object p1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->t:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    iput-object p3, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0300a4

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->q:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->q:Landroid/view/View;

    const v1, 0x7f0701b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->r:Landroid/widget/ProgressBar;

    iput-object p4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->i:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$OnMobileBindedListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private a(I)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    const v3, 0x7f0a00af

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    const v3, 0x7f0a02d0

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_2
    const-string v2, "MicroMsg.SmsBindMobileObserver"

    const-string v3, "dealErrCodeBindMobile"

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    sget-object v2, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;->b:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    iget-object v3, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->t:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const/16 v3, 0x1001

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v2

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/modelfriend/FriendLogic;->a(Landroid/content/Context;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    const v3, 0x7f0a02d1

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    const v3, 0x7f0a02d5

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->t:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    sget-object v2, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    const v2, 0x7f0a02d6

    const v3, 0x7f0a02d8

    new-instance v4, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$2;

    invoke-direct {v4, p0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$2;-><init>(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)V

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    const v3, 0x7f0a02d4

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    const v2, 0x7f0a02d2

    const v3, 0x7f0a0010

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x3b -> :sswitch_6
        -0x39 -> :sswitch_0
        -0x2b -> :sswitch_2
        -0x29 -> :sswitch_3
        -0x24 -> :sswitch_5
        -0x23 -> :sswitch_4
        -0x22 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "MicroMsg.SmsBindMobileObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verify number from sms:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->t:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    sget-object v1, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;->b:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->i:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$OnMobileBindedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->i:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$OnMobileBindedListener;

    invoke-interface {v0, p1}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$OnMobileBindedListener;->a(I)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->g:I

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 5

    const-string v1, ""

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->o:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->o:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->o:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->o:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->o:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " or address = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->o:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_5
    const-string v1, "MicroMsg.SmsBindMobileObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sql where:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->g:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->r:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->c:Z

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->d:Z

    return v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 8

    const v7, 0x7f0a02b8

    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v0, "MicroMsg.SmsBindMobileObserver"

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

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->j:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->k:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->l:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->m:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.SmsBindMobileObserver"

    const-string v1, "onSceneEnd, doScene is not called by this class"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    if-nez v0, :cond_0

    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_4

    :cond_2
    const-string v0, "MicroMsg.SmsBindMobileObserver"

    const-string v1, "error net"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b(I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;->b:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->t:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    if-ne v0, v1, :cond_f

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_f

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;->f()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_5
    if-nez p1, :cond_9

    if-nez p2, :cond_9

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;->f()I

    move-result v0

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelfriend/FriendLogic;->a(Landroid/content/Context;)Z

    invoke-direct {p0, v4}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b(I)V

    goto :goto_0

    :cond_6
    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;->f()I

    move-result v0

    if-ne v0, v4, :cond_9

    const-string v0, "MicroMsg.SmsBindMobileObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->f:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->f:Ljava/lang/String;

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_7
    iput-boolean v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b(I)V

    goto/16 :goto_0

    :cond_8
    check-cast p4, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    invoke-virtual {p4}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->n:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->o:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    check-cast p4, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    invoke-virtual {p4}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;->f()I

    move-result v0

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_a
    iput-boolean v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b(I)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, p2}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->a(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_c
    iput-boolean v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    goto/16 :goto_0

    :cond_d
    iput-boolean v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_e
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->t:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    if-ne v0, v1, :cond_1a

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1a

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_1
    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;->d()I

    move-result v0

    if-ne v0, v6, :cond_10

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_10
    if-nez p1, :cond_14

    if-nez p2, :cond_14

    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;->d()I

    move-result v0

    if-ne v0, v6, :cond_11

    check-cast p4, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    invoke-virtual {p4}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->s:Ljava/lang/String;

    const-string v0, "MicroMsg.SmsBindMobileObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetSceneBindOpMobileForReg ticket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b(I)V

    goto/16 :goto_0

    :cond_11
    move-object v0, p4

    check-cast v0, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;->d()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    const-string v0, "MicroMsg.SmsBindMobileObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->f:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->f:Ljava/lang/String;

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_12
    iput-boolean v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b(I)V

    goto/16 :goto_0

    :cond_13
    check-cast p4, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    invoke-virtual {p4}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;->f_()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->n:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->o:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_14
    check-cast p4, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    invoke-virtual {p4}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;->d()I

    move-result v0

    if-ne v0, v6, :cond_16

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_15
    iput-boolean v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    invoke-direct {p0, v3}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b(I)V

    goto/16 :goto_0

    :cond_16
    invoke-direct {p0, p2}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->a(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_17
    iput-boolean v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    goto/16 :goto_0

    :cond_18
    iput-boolean v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_19
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1a
    const-string v0, "code path should not be here!"

    invoke-static {v0, v5}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->t:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    sget-object v1, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;->b:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    :goto_0
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->f:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->c:Z

    iput-boolean v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->d:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->n:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->t:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    sget-object v1, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;->b:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->f:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->k:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->k:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    const v2, 0x7f0a02b6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iput v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->g:I

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->r:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->u:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->f:Ljava/lang/String;

    const/4 v2, 0x5

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->m:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->m:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->s:Ljava/lang/String;

    return-object v0
.end method

.method public onChange(Z)V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string v0, "MicroMsg.SmsBindMobileObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->n:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->o:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->a:Landroid/content/ContentResolver;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "body"

    aput-object v3, v2, v0

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "date"

    aput-object v0, v2, v9

    invoke-direct {p0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->a:Landroid/content/ContentResolver;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, -0x1

    const-wide/16 v0, 0x0

    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-lez v7, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    move-wide v0, v5

    goto :goto_1

    :cond_3
    iput-object v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->p:Ljava/lang/String;

    if-ltz v2, :cond_5

    iput-boolean v8, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->d:Z

    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v0, "body"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h:Landroid/app/AlertDialog;

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->t:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    sget-object v1, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;->b:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType;

    if-ne v0, v1, :cond_6

    new-instance v0, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v9, v2}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->j:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->j:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobile;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :cond_5
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->f:Ljava/lang/String;

    const/4 v2, 0x6

    iget-object v4, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4}, Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->l:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->l:Lcom/tencent/mm/modelfriend/NetSceneBindOpMobileForReg;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto :goto_2
.end method
