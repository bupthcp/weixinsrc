.class public Lcom/tencent/mm/ui/chatting/SmileyPanel;
.super Landroid/widget/LinearLayout;


# static fields
.field private static A:I

.field private static z:I


# instance fields
.field private a:Lcom/tencent/mm/ui/MMActivity;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/util/ArrayList;

.field private f:Lcom/tencent/mm/ui/MMFlipper;

.field private g:Landroid/widget/RadioGroup;

.field private h:Lcom/tencent/mm/ui/chatting/DotView;

.field private i:Z

.field private j:I

.field private k:I

.field private l:Landroid/widget/RadioButton;

.field private m:Landroid/widget/RadioButton;

.field private n:Landroid/widget/RadioButton;

.field private o:Landroid/widget/RadioButton;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z

.field private v:I

.field private w:Lcom/tencent/mm/modelemoji/ArtEmojiUpdater;

.field private x:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;

.field private y:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb1

    sput v0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->z:I

    const/16 v0, 0x6e

    sput v0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->A:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v1, 0x7f070291

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->i:Z

    iput v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->p:I

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->u:Z

    iput v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->v:I

    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a:Lcom/tencent/mm/ui/MMActivity;

    const v0, 0x7f0300f2

    invoke-static {p1, v0, p0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f070290

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->g:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->l:Landroid/widget/RadioButton;

    const v0, 0x7f070292

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->m:Landroid/widget/RadioButton;

    const v0, 0x7f070293

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->n:Landroid/widget/RadioButton;

    const v0, 0x7f070294

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->o:Landroid/widget/RadioButton;

    new-instance v0, Lcom/tencent/mm/modelemoji/ArtEmojiUpdater;

    new-instance v1, Lcom/tencent/mm/ui/chatting/SmileyPanel$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/SmileyPanel$1;-><init>(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelemoji/ArtEmojiUpdater;-><init>(Lcom/tencent/mm/modelemoji/ArtEmojiUpdater$OnArtEmojiUpdatedListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->w:Lcom/tencent/mm/modelemoji/ArtEmojiUpdater;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->w:Lcom/tencent/mm/modelemoji/ArtEmojiUpdater;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/ArtEmojiUpdater;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->g:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/SmileyPanel$2;-><init>(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const v0, 0x7f07028f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/DotView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->h:Lcom/tencent/mm/ui/chatting/DotView;

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->q:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/MMFlipper;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f:Lcom/tencent/mm/ui/MMFlipper;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/SmileyPanel;Ljava/util/ArrayList;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/SmileyGrid;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f:Lcom/tencent/mm/ui/MMFlipper;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Lcom/tencent/mm/ui/MMFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->h:Lcom/tencent/mm/ui/chatting/DotView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/DotView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->h:Lcom/tencent/mm/ui/chatting/DotView;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/chatting/DotView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->h:Lcom/tencent/mm/ui/chatting/DotView;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/DotView;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->h:Lcom/tencent/mm/ui/chatting/DotView;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/ui/chatting/DotView;->b(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/SmileyPanel;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->p:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->r:I

    return p1
.end method

.method private b()V
    .locals 4

    const v2, 0x7f07028d

    const v0, 0x7f07028e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMFlipper;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f:Lcom/tencent/mm/ui/MMFlipper;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a:Lcom/tencent/mm/ui/MMActivity;

    sget v3, Lcom/tencent/mm/ui/chatting/SmileyPanel;->A:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f:Lcom/tencent/mm/ui/MMFlipper;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMFlipper;->removeAllViews()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f:Lcom/tencent/mm/ui/MMFlipper;

    new-instance v1, Lcom/tencent/mm/ui/chatting/SmileyPanel$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/SmileyPanel$3;-><init>(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMFlipper;->a(Lcom/tencent/mm/ui/MMFlipper$OnMeasureListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f:Lcom/tencent/mm/ui/MMFlipper;

    new-instance v1, Lcom/tencent/mm/ui/chatting/SmileyPanel$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/SmileyPanel$4;-><init>(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMFlipper;->a(Lcom/tencent/mm/ui/MMFlipper$OnScreenChangedListener;)V

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a:Lcom/tencent/mm/ui/MMActivity;

    sget v3, Lcom/tencent/mm/ui/chatting/SmileyPanel;->z:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->s:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->e:Ljava/util/ArrayList;

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->j:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->k:I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a:Lcom/tencent/mm/ui/MMActivity;

    const/high16 v1, 0x4292

    invoke-static {v0, v1}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    iget v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->j:I

    div-int v6, v1, v0

    iget v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->k:I

    div-int v0, v1, v0

    mul-int v4, v6, v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->a:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c(I)I

    move-result v3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->g:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c(I)I

    move-result v0

    add-int/2addr v3, v0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v5, v2

    :goto_0
    if-lez v0, :cond_3

    sub-int/2addr v0, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ge v2, v5, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f0300ee

    const/4 v7, 0x0

    invoke-static {v0, v1, v7}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/SmileyGrid;

    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a(IIIIII)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/SmileyGrid;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->x:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a(Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->y:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a(Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;)V

    goto :goto_2
.end method

.method static synthetic d(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->t:I

    return p1
.end method

.method private d()V
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->d:Ljava/util/ArrayList;

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->j:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->k:I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a:Lcom/tencent/mm/ui/MMActivity;

    const/high16 v1, 0x4292

    invoke-static {v0, v1}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    iget v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->j:I

    div-int v6, v1, v0

    iget v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->k:I

    div-int v0, v1, v0

    mul-int v4, v6, v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    sget v1, Lcom/tencent/mm/modelemoji/EmojiInfo;->b:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->c(I)I

    move-result v3

    move v0, v3

    move v5, v2

    :goto_0
    if-lez v0, :cond_2

    sub-int/2addr v0, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v5, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f0300ee

    const/4 v7, 0x0

    invoke-static {v0, v1, v7}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/SmileyGrid;

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a(IIIIII)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/SmileyGrid;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->x:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a(Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;)V

    goto :goto_2
.end method

.method static synthetic d(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V
    .locals 9

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->b:Ljava/util/ArrayList;

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->j:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->k:I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a:Lcom/tencent/mm/ui/MMActivity;

    const/high16 v2, 0x420c

    invoke-static {v0, v2}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    iget v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->j:I

    div-int v6, v2, v0

    iget v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->k:I

    div-int v0, v2, v0

    mul-int v4, v6, v0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move v0, v3

    move v5, v1

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v2, v4, -0x1

    sub-int/2addr v0, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a:Lcom/tencent/mm/ui/MMActivity;

    const v7, 0x7f0300ee

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a(IIIIII)V

    iget-object v7, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/SmileyGrid;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->x:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a(Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;)V

    goto :goto_2
.end method

.method static synthetic e(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->v:I

    return p1
.end method

.method static synthetic e(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->l:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->p:I

    return p1
.end method

.method static synthetic f(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->m:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->k:I

    return p1
.end method

.method static synthetic g(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->n:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/chatting/SmileyPanel;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->j:I

    return p1
.end method

.method static synthetic h(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->o:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/chatting/SmileyPanel;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->q:I

    return v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V
    .locals 8

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->c:Ljava/util/ArrayList;

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->j:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->k:I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a:Lcom/tencent/mm/ui/MMActivity;

    const/high16 v1, 0x420c

    invoke-static {v0, v1}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    iget v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->j:I

    div-int v6, v1, v0

    iget v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->k:I

    div-int v0, v1, v0

    mul-int v4, v6, v0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v0}, Lcom/tencent/mm/ui/EmojiManager;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    move v0, v3

    move v5, v2

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v1, v4, -0x1

    sub-int/2addr v0, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v5, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f0300ee

    const/4 v7, 0x0

    invoke-static {v0, v1, v7}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/SmileyGrid;

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a(IIIIII)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/SmileyGrid;

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->x:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a(Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;)V

    goto :goto_2
.end method

.method static synthetic l(Lcom/tencent/mm/ui/chatting/SmileyPanel;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->r:I

    return v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->c()V

    return-void
.end method

.method static synthetic o(Lcom/tencent/mm/ui/chatting/SmileyPanel;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->s:I

    return v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic q(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->d()V

    return-void
.end method

.method static synthetic r(Lcom/tencent/mm/ui/chatting/SmileyPanel;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->t:I

    return v0
.end method

.method static synthetic s(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->i:Z

    return v0
.end method

.method static synthetic t(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->i:Z

    return v0
.end method

.method static synthetic u(Lcom/tencent/mm/ui/chatting/SmileyPanel;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x1

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->e:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->g:Landroid/widget/RadioGroup;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    iget-boolean v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->u:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v2, -0x1c0d2c4

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->v:I

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->v:I

    packed-switch v0, :pswitch_data_0

    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v2, -0x1c0d2c3

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f:Lcom/tencent/mm/ui/MMFlipper;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMFlipper;->a(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->h:Lcom/tencent/mm/ui/chatting/DotView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/DotView;->b(I)V

    iput-boolean v4, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->u:Z

    :goto_3
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->l:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->n:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->o:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic v(Lcom/tencent/mm/ui/chatting/SmileyPanel;)Lcom/tencent/mm/ui/chatting/DotView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->h:Lcom/tencent/mm/ui/chatting/DotView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, -0x1c0d2c4

    iget v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, -0x1c0d2c3

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f:Lcom/tencent/mm/ui/MMFlipper;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/MMFlipper;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(I)V
    .locals 4

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->k:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->j:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->d()V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f:Lcom/tencent/mm/ui/MMFlipper;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMFlipper;->b()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->g:Landroid/widget/RadioGroup;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->f:Lcom/tencent/mm/ui/MMFlipper;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MMFlipper;->a(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->c()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->y:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->x:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/SmileyPanel;->i:Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->b()V

    :cond_1
    return-void
.end method
