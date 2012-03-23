.class public Lcom/tencent/mm/ui/MMToast;
.super Landroid/widget/Toast;


# instance fields
.field private a:I

.field private b:I

.field private c:J

.field private final d:Landroid/content/Context;

.field private e:Landroid/view/View;

.field private final f:Landroid/widget/TextView;

.field private final g:Lcom/tencent/mm/platformtools/MTimerHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/ui/MMToast$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MMToast$1;-><init>(Lcom/tencent/mm/ui/MMToast;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMToast;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    iput-object p1, p0, Lcom/tencent/mm/ui/MMToast;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMToast;->e()V

    const v0, 0x7f0300f7

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMToast;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMToast;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMToast;->setView(Landroid/view/View;)V

    const/16 v0, 0x37

    const/high16 v1, 0x4220

    invoke-static {p1, v1}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/tencent/mm/ui/MMToast;->setGravity(III)V

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/MMToast;->setDuration(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMToast;->e:Landroid/view/View;

    const v1, 0x7f070297

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMToast;->f:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMToast;->d()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMToast;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/ui/MMToast;->c:J

    return-wide v0
.end method

.method public static a(Lcom/tencent/mm/ui/MMActivity;Ljava/lang/String;J)Landroid/widget/PopupWindow;
    .locals 3

    const v0, 0x7f0300f7

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f070297

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/high16 v1, 0x4220

    invoke-static {p0, v1}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->m()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    new-instance v1, Lcom/tencent/mm/ui/MMToast$2;

    invoke-direct {v1, v0}, Lcom/tencent/mm/ui/MMToast$2;-><init>(Landroid/widget/PopupWindow;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/MMToast;)I
    .locals 2

    iget v0, p0, Lcom/tencent/mm/ui/MMToast;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tencent/mm/ui/MMToast;->b:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/MMToast;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MMToast;->b:I

    return v0
.end method

.method private d()V
    .locals 3

    iget v0, p0, Lcom/tencent/mm/ui/MMToast;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMToast;->f:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMToast;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMToast;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private e()V
    .locals 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/MMToast;->a:I

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/tencent/mm/ui/MMToast;->c:J

    iget-wide v0, p0, Lcom/tencent/mm/ui/MMToast;->c:J

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/MMToast;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/mm/ui/MMToast;->c:J

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/MMToast;->a:I

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMToast;->d()V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMToast;->cancel()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMToast;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMToast;->e()V

    return-void
.end method

.method public final c()V
    .locals 4

    const-wide/16 v2, 0x64

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMToast;->cancel()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMToast;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    iget-wide v0, p0, Lcom/tencent/mm/ui/MMToast;->c:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/MMToast;->b:I

    iget-object v0, p0, Lcom/tencent/mm/ui/MMToast;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0, v2, v3}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    return-void
.end method

.method public setText(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMToast;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMToast;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
