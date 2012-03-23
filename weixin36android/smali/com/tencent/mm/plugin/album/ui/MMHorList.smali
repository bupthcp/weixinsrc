.class public Lcom/tencent/mm/plugin/album/ui/MMHorList;
.super Landroid/widget/AdapterView;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/Queue;

.field private h:Z

.field private i:Z

.field private j:Landroid/widget/Scroller;

.field private k:Landroid/view/GestureDetector;

.field private l:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private m:Landroid/widget/AdapterView$OnItemClickListener;

.field private n:Landroid/widget/ListAdapter;

.field private o:Landroid/database/DataSetObserver;

.field private p:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x2000

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->f:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->g:Ljava/util/Queue;

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->h:Z

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->i:Z

    new-instance v0, Lcom/tencent/mm/plugin/album/ui/MMHorList$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList$2;-><init>(Lcom/tencent/mm/plugin/album/ui/MMHorList;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->o:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;-><init>(Lcom/tencent/mm/plugin/album/ui/MMHorList;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->p:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x2000

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->f:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->g:Ljava/util/Queue;

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->h:Z

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->i:Z

    new-instance v0, Lcom/tencent/mm/plugin/album/ui/MMHorList$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList$2;-><init>(Lcom/tencent/mm/plugin/album/ui/MMHorList;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->o:Landroid/database/DataSetObserver;

    new-instance v0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;-><init>(Lcom/tencent/mm/plugin/album/ui/MMHorList;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->p:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/album/ui/MMHorList;I)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e:I

    return v0
.end method

.method private a(I)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->c:I

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChildLayout nums :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v5, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v3, v2, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " i : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " left : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " childWidth :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "  all: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int v5, v4, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b:I

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->n:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->n:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b:I

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->n:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->d:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->f:I

    :cond_0
    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/high16 v2, -0x8000

    iput-boolean v3, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->i:Z

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/album/ui/MMHorList;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->h:Z

    return v0
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->j:Landroid/widget/Scroller;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a:I

    iput v2, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b:I

    iput v2, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->c:I

    iput v2, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->d:I

    iput v2, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e:I

    iput-boolean v2, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->h:Z

    const/high16 v0, 0x2000

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->f:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->p:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->k:Landroid/view/GestureDetector;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getmScroller "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->j:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private b(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->c:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->c:I

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->g:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->removeViewInLayout(Landroid/view/View;)V

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a:I

    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-boolean v4, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->i:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->g:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->removeViewInLayout(Landroid/view/View;)V

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b:I

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-boolean v4, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->i:Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private b(II)V
    .locals 3

    :goto_0
    add-int v0, p1, p2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->n:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v2, v0, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a(Landroid/view/View;I)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a:I

    iget v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->c:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->c:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/album/ui/MMHorList;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->c()V

    return-void
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/album/ui/MMHorList;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e:I

    return v0
.end method

.method private c()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b()V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->requestLayout()V

    return-void
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/album/ui/MMHorList;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->m:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/album/ui/MMHorList;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/album/ui/MMHorList;)Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->n:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/album/ui/MMHorList;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method


# virtual methods
.method protected final a()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->j:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v1
.end method

.method protected final a(FF)Z
    .locals 9

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFling : nextX :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " velocityX : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  velocityY : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->j:Landroid/widget/Scroller;

    iget v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e:I

    neg-float v3, p1

    float-to-int v3, v3

    iget v6, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->f:I

    move v4, v2

    move v5, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->requestLayout()V

    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->k:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent handled\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->n:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->n:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayout scroller :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->j:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-boolean v3, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->i:Z

    iget-boolean v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->h:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->d:I

    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b()V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->removeAllViewsInLayout()V

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e:I

    iput-boolean v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->h:Z

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e:I

    :cond_3
    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e:I

    if-gez v0, :cond_4

    iput v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->j:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_4
    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e:I

    iget v2, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->f:I

    if-le v0, v2, :cond_5

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->f:I

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->j:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->d:I

    iget v2, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e:I

    sub-int v2, v0, v2

    invoke-direct {p0, v2}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fillLIst: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->n:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_1
    invoke-direct {p0, v0, v2}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a(II)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    :cond_6
    invoke-direct {p0, v1, v2}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->b(II)V

    invoke-direct {p0, v2}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a(I)V

    iget v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e:I

    iput v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->d:I

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->j:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/plugin/album/ui/MMHorList$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList$1;-><init>(Lcom/tencent/mm/plugin/album/ui/MMHorList;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2

    const v0, 0x1fffffff

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/AdapterView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 1

    check-cast p1, Landroid/widget/ListAdapter;

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->n:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->o:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-direct {p0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->c()V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->m:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList;->l:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    return-void
.end method
