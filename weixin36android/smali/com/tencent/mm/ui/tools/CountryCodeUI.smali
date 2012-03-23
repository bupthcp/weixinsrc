.class public Lcom/tencent/mm/ui/tools/CountryCodeUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/tencent/mm/ui/tools/CountryCodeAdapter;

.field private c:Lcom/tencent/mm/ui/AlphabetScrollBar;

.field private d:Ljava/util/List;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->g:Ljava/lang/String;

    new-instance v0, Lcom/tencent/mm/ui/tools/CountryCodeUI$6;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/CountryCodeUI$6;-><init>(Lcom/tencent/mm/ui/tools/CountryCodeUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->h:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/CountryCodeUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/tools/CountryCodeUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/tools/CountryCodeUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->f:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 10

    const/4 v9, 0x2

    const/4 v1, 0x0

    const v0, 0x7f0a0356

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CountryCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->d:Ljava/util/List;

    new-instance v5, Lcom/tencent/mm/ui/tools/CountryCode;

    const/4 v6, 0x1

    aget-object v6, v3, v6

    aget-object v7, v3, v1

    aget-object v8, v3, v9

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-object v3, v3, v9

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/tencent/mm/ui/tools/CountryCode;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->d:Ljava/util/List;

    new-instance v1, Lcom/tencent/mm/ui/tools/CountryCodeUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/CountryCodeUI$1;-><init>(Lcom/tencent/mm/ui/tools/CountryCodeUI;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/ui/tools/CountryCodeUI;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->b:Lcom/tencent/mm/ui/tools/CountryCodeAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->b:Lcom/tencent/mm/ui/tools/CountryCodeAdapter;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/ui/tools/CountryCodeUI;)Lcom/tencent/mm/ui/tools/CountryCodeAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->b:Lcom/tencent/mm/ui/tools/CountryCodeAdapter;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/tools/CountryCodeUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->a:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030046

    return v0
.end method

.method protected final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->d:Ljava/util/List;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CountryCodeUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "country_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CountryCodeUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "couttry_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->f:Ljava/lang/String;

    const v0, 0x7f0a022f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CountryCodeUI;->d(I)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/tools/CountryCodeUI;->b()V

    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/tools/CountryCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->a:Landroid/widget/ListView;

    new-instance v0, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->d:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->b:Lcom/tencent/mm/ui/tools/CountryCodeAdapter;

    const v0, 0x7f0300ce

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f07022c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f07022d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->a:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->a:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->b:Lcom/tencent/mm/ui/tools/CountryCodeAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->a:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    const v2, 0x7f070007

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/tools/CountryCodeUI;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/ui/AlphabetScrollBar;

    iput-object v2, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->c:Lcom/tencent/mm/ui/AlphabetScrollBar;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->c:Lcom/tencent/mm/ui/AlphabetScrollBar;

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->h:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/AlphabetScrollBar;->a(Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;)V

    const v2, 0x7f0a0015

    new-instance v3, Lcom/tencent/mm/ui/tools/CountryCodeUI$2;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/tools/CountryCodeUI$2;-><init>(Lcom/tencent/mm/ui/tools/CountryCodeUI;)V

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/ui/tools/CountryCodeUI;->b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v2, Lcom/tencent/mm/ui/tools/CountryCodeUI$3;

    invoke-direct {v2, p0, v1}, Lcom/tencent/mm/ui/tools/CountryCodeUI$3;-><init>(Lcom/tencent/mm/ui/tools/CountryCodeUI;Landroid/widget/Button;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Lcom/tencent/mm/ui/tools/CountryCodeUI$4;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/ui/tools/CountryCodeUI$4;-><init>(Lcom/tencent/mm/ui/tools/CountryCodeUI;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/tools/CountryCodeUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/tools/CountryCodeUI$5;-><init>(Lcom/tencent/mm/ui/tools/CountryCodeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "country_name"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "couttry_code"

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/tools/CountryCodeUI;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/tools/CountryCodeUI;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
