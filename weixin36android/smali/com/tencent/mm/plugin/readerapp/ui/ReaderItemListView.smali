.class public Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;
.super Landroid/widget/ListView;


# instance fields
.field private a:J

.field private b:I

.field private c:Ljava/util/List;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->a:J

    return-wide v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->f:I

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->g:I

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->b:I

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->b:I

    invoke-static {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const v0, 0x7f0300b6

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$1;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0701eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->e:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->e:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$2;-><init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;Landroid/content/Context;Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->b:I

    return v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    const/4 v2, 0x0

    iput-wide p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->a:J

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->r()Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->b:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfoStorage;->a(JI)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->e()I

    move-result v0

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->f:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->e:Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView$ItemAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderItemListView;->g:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    const v0, 0x1fffffff

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method
