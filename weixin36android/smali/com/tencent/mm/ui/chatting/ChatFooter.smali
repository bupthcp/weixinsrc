.class public Lcom/tencent/mm/ui/chatting/ChatFooter;
.super Landroid/widget/LinearLayout;


# static fields
.field private static final S:[I

.field private static final T:[I


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:Landroid/view/inputmethod/InputMethodManager;

.field private D:I

.field private E:Landroid/widget/ImageView;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/view/View;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/Button;

.field private K:I

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:I

.field private P:Landroid/view/animation/ScaleAnimation;

.field private Q:Z

.field private final R:Landroid/os/Handler;

.field private a:Landroid/view/View;

.field private b:Lcom/tencent/mm/ui/MMEditText;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/ImageButton;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Lcom/tencent/mm/ui/chatting/SmileyPanel;

.field private k:Landroid/view/View;

.field private l:Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;

.field private m:Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;

.field private n:Lcom/tencent/mm/ui/chatting/ChatFooter$OnChooseListener;

.field private o:Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStopRequest;

.field private p:Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStartRequest;

.field private q:Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdCancelRequest;

.field private r:Lcom/tencent/mm/ui/chatting/ChatFooter$OnArtSmileySelectListener;

.field private s:Lcom/tencent/mm/ui/chatting/ChatFooter$OnVideoRequest;

.field private t:Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendCustomEmojiListener;

.field private u:Lcom/tencent/mm/ui/chatting/ChatFooter$OnAddCustomEmojiListener;

.field private v:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;

.field private w:Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendCardRequest;

.field private final x:Lcom/tencent/mm/ui/MMActivity;

.field private y:Landroid/widget/PopupWindow;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/mm/ui/chatting/ChatFooter;->S:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/mm/ui/chatting/ChatFooter;->T:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x2t 0x7ft
        0x1t 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->a:Landroid/view/View;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->c:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->d:Landroid/widget/TextView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->L:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->M:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->N:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->Q:Z

    new-instance v0, Lcom/tencent/mm/ui/chatting/ChatFooter$13;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/ChatFooter$13;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->R:Landroid/os/Handler;

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->x:Lcom/tencent/mm/ui/MMActivity;

    return-void
.end method

.method static synthetic A(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendCustomEmojiListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->t:Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendCustomEmojiListener;

    return-object v0
.end method

.method static synthetic B(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/ChatFooter$OnArtSmileySelectListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->r:Lcom/tencent/mm/ui/chatting/ChatFooter$OnArtSmileySelectListener;

    return-object v0
.end method

.method static synthetic C(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/ChatFooter$OnAddCustomEmojiListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->u:Lcom/tencent/mm/ui/chatting/ChatFooter$OnAddCustomEmojiListener;

    return-object v0
.end method

.method static synthetic D(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChatFooter;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->O:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ChatFooter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->M:Z

    return p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/SmileyPanel;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->j:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/ChatFooter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->Q:Z

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/chatting/ChatFooter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->N:Z

    return p1
.end method

.method static synthetic d(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/ChatFooter$OnChooseListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->n:Lcom/tencent/mm/ui/chatting/ChatFooter$OnChooseListener;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendCardRequest;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->w:Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendCardRequest;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/chatting/ChatFooter;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->D:I

    return v0
.end method

.method static synthetic g(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->e:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/MMActivity;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->x:Lcom/tencent/mm/ui/MMActivity;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->H:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/ui/chatting/ChatFooter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->M:Z

    return v0
.end method

.method static synthetic l(Lcom/tencent/mm/ui/chatting/ChatFooter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->N:Z

    return v0
.end method

.method static synthetic m(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStartRequest;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->p:Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStartRequest;

    return-object v0
.end method

.method static synthetic n(Lcom/tencent/mm/ui/chatting/ChatFooter;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->O:I

    return v0
.end method

.method static synthetic o(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->F:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic p(Lcom/tencent/mm/ui/chatting/ChatFooter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->Q:Z

    return v0
.end method

.method static synthetic q(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/view/animation/ScaleAnimation;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->P:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic r(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->G:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic s(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->I:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic t(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdCancelRequest;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->q:Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdCancelRequest;

    return-object v0
.end method

.method static synthetic u(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStopRequest;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->o:Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStopRequest;

    return-object v0
.end method

.method static synthetic v(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic w(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/MMEditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    return-object v0
.end method

.method static synthetic x(Lcom/tencent/mm/ui/chatting/ChatFooter;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->f:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic y(Lcom/tencent/mm/ui/chatting/ChatFooter;)I
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->D:I

    return v0
.end method

.method static synthetic z(Lcom/tencent/mm/ui/chatting/ChatFooter;)Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->v:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->j:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a()V

    return-void
.end method

.method public final a(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->x:Lcom/tencent/mm/ui/MMActivity;

    const/high16 v2, 0x4248

    invoke-static {v0, v2}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    add-int v2, p1, v0

    iget v3, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->K:I

    if-ge v2, v3, :cond_1

    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->B:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->A:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->z:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    const/16 v2, 0x31

    invoke-virtual {v1, p0, v2, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_0
    return-void

    :cond_1
    iget v2, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->K:I

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public final a(Landroid/text/TextWatcher;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatFooter$14;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/ChatFooter$14;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;Landroid/text/TextWatcher;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final a(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->J:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->J:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View$OnFocusChangeListener;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatFooter$15;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/ChatFooter$15;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;Landroid/view/View$OnFocusChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x0

    const v2, 0x3f99999a

    const/high16 v1, 0x3f80

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->k:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->l()V

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->x:Lcom/tencent/mm/ui/MMActivity;

    const/high16 v0, 0x4334

    invoke-static {v3, v0}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->K:I

    const-string v0, "input_method"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->C:Landroid/view/inputmethod/InputMethodManager;

    const-string v0, "layout_inflater"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v4, Landroid/widget/PopupWindow;

    const v7, 0x7f030102

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v4, v0, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v4, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0702bf

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->E:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0702c1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->H:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0702c0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->F:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0702c2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->I:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0702c3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->G:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0702c4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->z:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0702bd

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->A:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0702c6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->B:Landroid/view/View;

    const v0, 0x7f030027

    invoke-static {v3, v0, p0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->a:Landroid/view/View;

    const v3, 0x7f070098

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->a:Landroid/view/View;

    const v3, 0x7f070099

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMEditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->a:Landroid/view/View;

    const v3, 0x7f07009b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->a:Landroid/view/View;

    const v3, 0x7f07009c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->e:Landroid/widget/Button;

    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->f:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    new-instance v3, Lcom/tencent/mm/ui/chatting/ChatFooter$1;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/chatting/ChatFooter$1;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/MMEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    new-instance v3, Lcom/tencent/mm/ui/chatting/ChatFooter$2;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/chatting/ChatFooter$2;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/MMEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->e:Landroid/widget/Button;

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->P:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->P:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->P:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v9}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->e:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatFooter$8;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChatFooter$8;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->e:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatFooter$9;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChatFooter$9;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->f:Landroid/widget/ImageButton;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatFooter$7;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChatFooter$7;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07009d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ChatFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/SmileyPanel;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->j:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->k:Landroid/view/View;

    const v1, 0x7f070199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatFooter$10;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChatFooter$10;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->j:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatFooter$11;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChatFooter$11;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->j:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatFooter$12;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChatFooter$12;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->k:Landroid/view/View;

    const v1, 0x7f07019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->h:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatFooter$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChatFooter$5;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->k:Landroid/view/View;

    const v1, 0x7f07019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->J:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->J:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatFooter$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChatFooter$4;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->k:Landroid/view/View;

    const v1, 0x7f07019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->i:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatFooter$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChatFooter$6;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->a:Landroid/view/View;

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatFooter$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ChatFooter$3;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/chatting/ChatFooter;->c(I)V

    return-void

    :cond_0
    move v0, v9

    goto/16 :goto_0
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnAddCustomEmojiListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->u:Lcom/tencent/mm/ui/chatting/ChatFooter$OnAddCustomEmojiListener;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnArtSmileySelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->r:Lcom/tencent/mm/ui/chatting/ChatFooter$OnArtSmileySelectListener;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnChooseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->n:Lcom/tencent/mm/ui/chatting/ChatFooter$OnChooseListener;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->l:Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendCardRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->w:Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendCardRequest;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendCustomEmojiListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->t:Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendCustomEmojiListener;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendRequest;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->c:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ChatFooter$16;

    invoke-direct {v1, p0, p1}, Lcom/tencent/mm/ui/chatting/ChatFooter$16;-><init>(Lcom/tencent/mm/ui/chatting/ChatFooter;Lcom/tencent/mm/ui/chatting/ChatFooter$OnSendRequest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnVideoRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->s:Lcom/tencent/mm/ui/chatting/ChatFooter$OnVideoRequest;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdCancelRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->q:Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdCancelRequest;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStartRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->p:Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStartRequest;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStopRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->o:Lcom/tencent/mm/ui/chatting/ChatFooter$OnVoiceRcdStopRequest;

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->v:Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileyLongClickListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/MMEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Landroid/widget/TextView;)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MMEditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMEditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->L:Z

    return-void
.end method

.method public final b()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->x:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f0202f9

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->B:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->A:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->z:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->R:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final b(I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/tencent/mm/ui/chatting/ChatFooter;->T:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/tencent/mm/ui/chatting/ChatFooter;->S:[I

    aget v2, v2, v0

    if-lt p1, v2, :cond_2

    sget-object v2, Lcom/tencent/mm/ui/chatting/ChatFooter;->S:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->E:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->x:Lcom/tencent/mm/ui/MMActivity;

    sget-object v4, Lcom/tencent/mm/ui/chatting/ChatFooter;->T:[I

    aget v0, v4, v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->A:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->B:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->h:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->h:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->m:Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(I)V
    .locals 4

    const/4 v2, 0x0

    const/16 v3, 0x8

    iput p1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->D:I

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/chatting/ChatFooter;->setVisibility(I)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->f:Landroid/widget/ImageButton;

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMEditText;->requestFocus()Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->j:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->C:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->f:Landroid/widget/ImageButton;

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->j:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-virtual {v0, v3}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->C:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->z:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->A:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final e()V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->y:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->A:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->z:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->x:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f0202fa

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->e:Landroid/widget/Button;

    const v1, 0x7f0a0171

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->N:Z

    iput-boolean v3, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->M:Z

    return-void
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->L:Z

    return v0
.end method

.method public final g()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMEditText;->requestFocus()Z

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->h:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->J:Landroid/widget/Button;

    const v1, 0x7f0202cc

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->i:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->D:I

    return v0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->j:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->a(I)V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->j:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->setVisibility(I)V

    return-void
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->j:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->j:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->j:Lcom/tencent/mm/ui/chatting/SmileyPanel;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/chatting/SmileyPanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 5

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->a:Landroid/view/View;

    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->b:Lcom/tencent/mm/ui/MMEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x8c

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMEditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->m:Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->m:Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;

    invoke-interface {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;->a()Z

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->l:Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ChatFooter;->l:Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;

    invoke-interface {v0}, Lcom/tencent/mm/ui/chatting/ChatFooter$OnSelectImageListener;->a()Z

    :cond_0
    return-void
.end method
