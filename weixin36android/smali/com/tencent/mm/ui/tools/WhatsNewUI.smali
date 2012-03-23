.class public Lcom/tencent/mm/ui/tools/WhatsNewUI;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;

.field private b:Lcom/tencent/mm/ui/MMGallery;

.field private c:Lcom/tencent/mm/ui/MMPageControlView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WhatsNewUI;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->d:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/WhatsNewUI;)Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/WhatsNewUI;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->e:Landroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/WhatsNewUI;)Lcom/tencent/mm/ui/MMGallery;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->b:Lcom/tencent/mm/ui/MMGallery;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/WhatsNewUI;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->f:Landroid/view/View;

    return-object p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/WhatsNewUI;)Lcom/tencent/mm/ui/MMPageControlView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->c:Lcom/tencent/mm/ui/MMPageControlView;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/WhatsNewUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->d:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x400

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "com.tencent.mm_preferences"

    invoke-virtual {p0, v0, v2}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f030107

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->setContentView(I)V

    invoke-virtual {p0, v3}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->setRequestedOrientation(I)V

    const v0, 0x7f0702cc

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMGallery;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->b:Lcom/tencent/mm/ui/MMGallery;

    const v0, 0x7f0702cd

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/WhatsNewUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMPageControlView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->c:Lcom/tencent/mm/ui/MMPageControlView;

    new-instance v0, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;

    invoke-direct {v0, p0, p0}, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;-><init>(Lcom/tencent/mm/ui/tools/WhatsNewUI;Lcom/tencent/mm/ui/tools/WhatsNewUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->b:Lcom/tencent/mm/ui/MMGallery;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->b:Lcom/tencent/mm/ui/MMGallery;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/MMGallery;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->c:Lcom/tencent/mm/ui/MMPageControlView;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->a:Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/tools/WhatsNewUI$ImageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMPageControlView;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->b:Lcom/tencent/mm/ui/MMGallery;

    new-instance v1, Lcom/tencent/mm/ui/tools/WhatsNewUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/WhatsNewUI$1;-><init>(Lcom/tencent/mm/ui/tools/WhatsNewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMGallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/WhatsNewUI;->b:Lcom/tencent/mm/ui/MMGallery;

    new-instance v1, Lcom/tencent/mm/ui/tools/WhatsNewUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/WhatsNewUI$2;-><init>(Lcom/tencent/mm/ui/tools/WhatsNewUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void

    :cond_2
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    goto :goto_0

    :cond_3
    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    goto :goto_0
.end method
