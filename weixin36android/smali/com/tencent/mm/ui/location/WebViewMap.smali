.class public Lcom/tencent/mm/ui/location/WebViewMap;
.super Lcom/tencent/mm/ui/MMActivity;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:D

.field private d:D

.field private e:I

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ProgressBar;

.field private h:Ljava/lang/String;

.field private i:Landroid/view/View;

.field private j:Ljava/lang/Thread;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/List;

.field private o:Z

.field private p:Ljava/io/File;

.field private q:Landroid/app/ProgressDialog;

.field private r:Landroid/app/ActivityManager;

.field private s:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "file:///android_asset/map/map_cn.html"

    sput-object v0, Lcom/tencent/mm/ui/location/WebViewMap;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-wide v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->c:D

    iput-wide v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->d:D

    iput v2, p0, Lcom/tencent/mm/ui/location/WebViewMap;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->k:Z

    iput-boolean v2, p0, Lcom/tencent/mm/ui/location/WebViewMap;->o:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->q:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/tencent/mm/ui/location/WebViewMap$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/location/WebViewMap$1;-><init>(Lcom/tencent/mm/ui/location/WebViewMap;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->s:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/location/WebViewMap;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/location/WebViewMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/location/WebViewMap;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/location/WebViewMap;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->s:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/mm/ui/location/WebViewMap$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/location/WebViewMap$2;-><init>(Lcom/tencent/mm/ui/location/WebViewMap;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/location/WebViewMap;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/location/WebViewMap;->o()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/location/WebViewMap;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/location/WebViewMap;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/location/WebViewMap;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/location/WebViewMap;)D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->c:D

    return-wide v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/location/WebViewMap;)D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->d:D

    return-wide v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/location/WebViewMap;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->e:I

    return v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/location/WebViewMap;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/location/WebViewMap;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->q:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/location/WebViewMap;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->o:Z

    return v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/location/WebViewMap;)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->n:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tencent/mm/ui/location/WebViewMap;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/tencent/mm/ui/location/WebViewMap;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->k:Z

    return v0
.end method

.method private o()V
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->o:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/location/WebViewMap;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->n:Ljava/util/List;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/location/WebViewMap;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->k:Z

    return v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/location/WebViewMap;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->s:Landroid/os/Handler;

    return-object v0
.end method

.method private p()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v0, 0x7f0a017f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/location/WebViewMap;->d(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:centerAt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/ui/location/WebViewMap;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/tencent/mm/ui/location/WebViewMap;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/ui/location/WebViewMap$4;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/location/WebViewMap$4;-><init>(Lcom/tencent/mm/ui/location/WebViewMap;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/location/WebViewMap;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0201e8

    new-instance v2, Lcom/tencent/mm/ui/location/WebViewMap$5;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/location/WebViewMap$5;-><init>(Lcom/tencent/mm/ui/location/WebViewMap;)V

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/location/WebViewMap;->c(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f070140

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/location/WebViewMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->b:Landroid/webkit/WebView;

    const v0, 0x7f07013e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/location/WebViewMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->f:Landroid/widget/TextView;

    const v0, 0x7f07013d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/location/WebViewMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->g:Landroid/widget/ProgressBar;

    const v0, 0x7f070139

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/location/WebViewMap;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->i:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->b:Landroid/webkit/WebView;

    const-string v2, "MicroMsg"

    invoke-virtual {v0, p0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->b:Landroid/webkit/WebView;

    sget-object v2, Lcom/tencent/mm/ui/location/WebViewMap;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/tencent/mm/ui/location/WebViewMap$6;

    invoke-direct {v2, p0, v1}, Lcom/tencent/mm/ui/location/WebViewMap$6;-><init>(Lcom/tencent/mm/ui/location/WebViewMap;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;

    iget-wide v2, p0, Lcom/tencent/mm/ui/location/WebViewMap;->c:D

    iget-wide v4, p0, Lcom/tencent/mm/ui/location/WebViewMap;->d:D

    iget-object v6, p0, Lcom/tencent/mm/ui/location/WebViewMap;->m:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/ui/location/WebViewMap$AddressgeocodeThread;-><init>(Lcom/tencent/mm/ui/location/WebViewMap;DDLjava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->j:Ljava/lang/Thread;

    iput-boolean v8, p0, Lcom/tencent/mm/ui/location/WebViewMap;->k:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/location/WebViewMap;->o()V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/location/WebViewMap;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->r:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->r:Landroid/app/ActivityManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    move v1, v7

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RunningTaskInfo i "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/location/WebViewMap;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap;->g:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f03005d

    return v0
.end method

.method protected final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public keep_getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->c:D

    return-wide v0
.end method

.method public keep_getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->d:D

    return-wide v0
.end method

.method public keep_getScale()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->e:I

    return v0
.end method

.method public keep_logbyJs(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "js "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public keep_setLocation(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/location/WebViewMap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "kwebmap_slat"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->c:D

    invoke-virtual {p0}, Lcom/tencent/mm/ui/location/WebViewMap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "kwebmap_lng"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->d:D

    invoke-virtual {p0}, Lcom/tencent/mm/ui/location/WebViewMap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "kwebmap_scale"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->e:I

    invoke-virtual {p0}, Lcom/tencent/mm/ui/location/WebViewMap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Kwebmap_locaion"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/location/WebViewMap;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "kimg_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mmmap/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->l:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/platformtools/LocaleUtil;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->m:Ljava/lang/String;

    const v0, 0x7f0a0183

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/location/WebViewMap;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/ui/location/WebViewMap;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->n:Ljava/util/List;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/mm/ui/location/WebViewMap;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->p:Ljava/io/File;

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->p:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/location/WebViewMap;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0181

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/location/WebViewMap;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/tencent/mm/ui/location/WebViewMap$3;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/location/WebViewMap$3;-><init>(Lcom/tencent/mm/ui/location/WebViewMap;)V

    invoke-static {p0, v0, v1, v2, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->q:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Lcom/tencent/mm/ui/location/WebViewMap;->p()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->j:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->k:Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->p:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/mm/algorithm/FileOperation;->a(Ljava/io/File;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 7

    const v6, 0x10802

    const v5, 0x10801

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/location/WebViewMap;->r:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "webviewmap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "map"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    if-eqz v0, :cond_2

    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v4}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onStop()V

    return-void

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, v4}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method
