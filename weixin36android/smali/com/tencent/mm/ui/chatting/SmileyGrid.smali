.class public Lcom/tencent/mm/ui/chatting/SmileyGrid;
.super Landroid/widget/GridView;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;

.field private d:Lcom/tencent/mm/ui/MMActivity;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;

.field private j:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;

.field private k:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private l:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->f:I

    iput v1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->g:I

    new-instance v0, Lcom/tencent/mm/ui/chatting/SmileyGrid$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/SmileyGrid$1;-><init>(Lcom/tencent/mm/ui/chatting/SmileyGrid;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->k:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;-><init>(Lcom/tencent/mm/ui/chatting/SmileyGrid;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->l:Landroid/widget/AdapterView$OnItemClickListener;

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->d:Lcom/tencent/mm/ui/MMActivity;

    iput v1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->b:I

    new-instance v0, Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;-><init>(Lcom/tencent/mm/ui/chatting/SmileyGrid;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->c:Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->setBackgroundResource(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->setStretchMode(I)V

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->c:Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->l:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->k:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->b:I

    return v0
.end method

.method private a()V
    .locals 2

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->b:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->setColumnWidth(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->d:Lcom/tencent/mm/ui/MMActivity;

    const/high16 v1, 0x420c

    invoke-static {v0, v1}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->d:Lcom/tencent/mm/ui/MMActivity;

    const/high16 v1, 0x4292

    invoke-static {v0, v1}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/SmileyGrid;)Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->c:Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->h:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->g:I

    return v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->f:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->e:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/chatting/SmileyGrid;)Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->j:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/chatting/SmileyGrid;)Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->i:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/chatting/SmileyGrid;)Lcom/tencent/mm/ui/MMActivity;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->d:Lcom/tencent/mm/ui/MMActivity;

    return-object v0
.end method


# virtual methods
.method public final a(IIIIII)V
    .locals 3

    iput p1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->b:I

    iput p2, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->h:I

    iput p3, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->e:I

    iput p4, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->f:I

    iput p5, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->g:I

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a()V

    invoke-virtual {p0, p6}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->setNumColumns(I)V

    const-string v0, "MicroMsg.SmileyGrid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " itemsPerPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " curPage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->c:Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;->a()V

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->j:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->i:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/GridView;->onSizeChanged(IIII)V

    const-string v0, "MicroMsg.SmileyGrid"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on grid size changed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
