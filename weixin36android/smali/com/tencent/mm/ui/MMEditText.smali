.class public Lcom/tencent/mm/ui/MMEditText;
.super Landroid/widget/EditText;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/view/inputmethod/InputConnection;

.field private g:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/MMEditText;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMEditText;->b:Z

    iput v1, p0, Lcom/tencent/mm/ui/MMEditText;->c:I

    iput v1, p0, Lcom/tencent/mm/ui/MMEditText;->d:I

    iput v1, p0, Lcom/tencent/mm/ui/MMEditText;->e:I

    new-instance v0, Lcom/tencent/mm/ui/MMEditText$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/MMEditText$1;-><init>(Lcom/tencent/mm/ui/MMEditText;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMEditText;->g:Landroid/text/TextWatcher;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/MMEditText;->a:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMEditText;->b:Z

    iput v1, p0, Lcom/tencent/mm/ui/MMEditText;->c:I

    iput v1, p0, Lcom/tencent/mm/ui/MMEditText;->d:I

    iput v1, p0, Lcom/tencent/mm/ui/MMEditText;->e:I

    new-instance v0, Lcom/tencent/mm/ui/MMEditText$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/MMEditText$1;-><init>(Lcom/tencent/mm/ui/MMEditText;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMEditText;->g:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMEditText;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/MMEditText;->c:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMEditText;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/MMEditText;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/MMEditText;->d:I

    return p1
.end method


# virtual methods
.method public final a()Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMEditText;->f:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMEditText;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMEditText;->getSelectionEnd()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/MMEditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMEditText;->b:Z

    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Landroid/widget/TextView;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/MMEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMEditText;->setSelection(I)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMEditText;->f:Landroid/view/inputmethod/InputConnection;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMEditText;->f:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    const v1, 0x1020022

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMEditText;->getSelectionStart()I

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/mm/ui/MMEditText;->b:Z

    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Landroid/widget/TextView;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MMEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/MMEditText;->setSelection(I)V

    :cond_0
    return v0
.end method
