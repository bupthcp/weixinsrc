.class public Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/tencent/mm/ui/AddressAdapter;

.field private c:Lcom/tencent/mm/ui/AlphabetScrollBar;

.field private d:Landroid/widget/Button;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->f:Z

    new-instance v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI$6;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI$6;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->g:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->b:Lcom/tencent/mm/ui/AddressAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->b:Lcom/tencent/mm/ui/AddressAdapter;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/AddressAdapter;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->h(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;)Lcom/tencent/mm/ui/AddressAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->b:Lcom/tencent/mm/ui/AddressAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->f:Z

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method private h(I)V
    .locals 4

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->d:Landroid/widget/Button;

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->d:Landroid/widget/Button;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0427

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f03006e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/tencent/mm/ui/AvatarDrawable;->a(Lcom/tencent/mm/ui/MMActivity;)V

    const v0, 0x7f0a0435

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->d(I)V

    const v0, 0x7f07016b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->a:Landroid/widget/ListView;

    const v0, 0x7f0300ce

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f07022c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v3, 0x7f02026b

    invoke-virtual {v0, v3, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    new-instance v3, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI$1;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/tencent/mm/ui/AddressAdapter;

    const-string v3, "@micromsg.qq.com"

    invoke-direct {v0, p0, v3, v4, v1}, Lcom/tencent/mm/ui/AddressAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->b:Lcom/tencent/mm/ui/AddressAdapter;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    sget-object v4, Lcom/tencent/mm/model/ContactStorageLogic;->d:[Ljava/lang/String;

    array-length v5, v4

    move v0, v1

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "weixin"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mm/model/ContactStorageLogic;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->b:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/AddressAdapter;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->b:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->a:Landroid/widget/ListView;

    new-instance v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI$2;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI$2;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f07015b

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->d:Landroid/widget/Button;

    new-instance v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI$3;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI$3;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->h(I)V

    const v0, 0x7f07016c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AlphabetScrollBar;

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->c:Lcom/tencent/mm/ui/AlphabetScrollBar;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->c:Lcom/tencent/mm/ui/AlphabetScrollBar;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->g:Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/AlphabetScrollBar;->a(Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;)V

    new-instance v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI$4;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI$4;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a042a

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI$5;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {p0}, Lcom/tencent/mm/ui/AvatarDrawable;->b(Lcom/tencent/mm/ui/MMActivity;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->c:Lcom/tencent/mm/ui/AlphabetScrollBar;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AlphabetScrollBar;->a()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->b:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressAdapter;->n()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->b:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressAdapter;->m()V

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->b:Lcom/tencent/mm/ui/AddressAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/AddressAdapter;->a_(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->b:Lcom/tencent/mm/ui/AddressAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/AddressAdapter;->h()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendSelectContactUI;->h(I)V

    return-void
.end method
