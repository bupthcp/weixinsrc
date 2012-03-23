.class public Lcom/tencent/mm/ui/ADListView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/tencent/mm/ui/ADListAdapter;

.field private b:I

.field private c:Lcom/tencent/mm/ui/ViewHolder;

.field private d:Lcom/tencent/mm/ui/ADListView$ADEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/ui/ADListView;->b:I

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/ADListView;)Lcom/tencent/mm/ui/ADListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/ADListView;->a:Lcom/tencent/mm/ui/ADListAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/ADListView;)Lcom/tencent/mm/ui/ADListView$ADEvent;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/ADListView;->d:Lcom/tencent/mm/ui/ADListView$ADEvent;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/ADListView;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/ADListView;->b:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/ADListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/ADListView;->a:Lcom/tencent/mm/ui/ADListAdapter;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/ADListView$ADEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/ADListView;->d:Lcom/tencent/mm/ui/ADListView$ADEvent;

    return-void
.end method

.method public final a()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/ui/ADListView;->a:Lcom/tencent/mm/ui/ADListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/ADListView;->a:Lcom/tencent/mm/ui/ADListAdapter;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/ADListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/ADListView;->a:Lcom/tencent/mm/ui/ADListAdapter;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/ADListAdapter;->a(I)Lcom/tencent/mm/ui/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/ADListView;->c:Lcom/tencent/mm/ui/ViewHolder;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/Message;->a(Lcom/tencent/mm/ui/ViewHolder;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    new-instance v0, Lcom/tencent/mm/ui/ViewHolder;

    invoke-direct {v0}, Lcom/tencent/mm/ui/ViewHolder;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/ADListView;->c:Lcom/tencent/mm/ui/ViewHolder;

    iget-object v0, p0, Lcom/tencent/mm/ui/ADListView;->c:Lcom/tencent/mm/ui/ViewHolder;

    iput-object p0, v0, Lcom/tencent/mm/ui/ViewHolder;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/tencent/mm/ui/ADListView;->c:Lcom/tencent/mm/ui/ViewHolder;

    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ADListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/tencent/mm/ui/ViewHolder;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/ADListView;->c:Lcom/tencent/mm/ui/ViewHolder;

    iget-object v0, v0, Lcom/tencent/mm/ui/ViewHolder;->b:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/ADListView$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/ADListView$1;-><init>(Lcom/tencent/mm/ui/ADListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/tencent/mm/ui/ADListView$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/ADListView$2;-><init>(Lcom/tencent/mm/ui/ADListView;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ADListView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
