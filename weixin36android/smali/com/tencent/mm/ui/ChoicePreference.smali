.class public final Lcom/tencent/mm/ui/ChoicePreference;
.super Landroid/preference/Preference;


# instance fields
.field private a:Landroid/widget/RadioGroup;

.field private final b:Ljava/util/HashMap;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:[Ljava/lang/CharSequence;

.field private f:[Ljava/lang/CharSequence;

.field private g:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/ChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->b:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->d:I

    sget-object v0, Lcom/tencent/mm/R$styleable;->a:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/ChoicePreference;->e:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/ChoicePreference;->f:[Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/tencent/mm/ui/ChoicePreference;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/ChoicePreference;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/ChoicePreference;->d:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/ChoicePreference;)Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->g:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/ChoicePreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/ChoicePreference;->c:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->e:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->e:[Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->f:[Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    new-array v0, v1, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->f:[Ljava/lang/CharSequence;

    :cond_1
    const-string v2, "entries count different"

    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->e:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget-object v3, p0, Lcom/tencent/mm/ui/ChoicePreference;->f:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->f:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    new-instance v0, Lcom/tencent/mm/ui/ChoiceItem;

    iget-object v2, p0, Lcom/tencent/mm/ui/ChoicePreference;->e:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    const/high16 v3, 0x10

    add-int/2addr v3, v1

    invoke-direct {v0, v2, v3}, Lcom/tencent/mm/ui/ChoiceItem;-><init>(Ljava/lang/CharSequence;I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/ChoicePreference;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/tencent/mm/ui/ChoicePreference;->f:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/tencent/mm/ui/ChoicePreference;)[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->f:[Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/ChoicePreference;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/ChoiceItem;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->d:I

    :goto_0
    return-void

    :cond_0
    iget v0, v0, Lcom/tencent/mm/ui/ChoiceItem;->a:I

    iput v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->d:I

    goto :goto_0
.end method

.method protected final onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->a:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->a:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/tencent/mm/ui/ChoicePreference;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_0
    return-void
.end method

.method protected final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/ChoicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f070117

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const v2, 0x7f03007a

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f070172

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/tencent/mm/ui/ChoicePreference;->a:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    iget-object v1, p0, Lcom/tencent/mm/ui/ChoicePreference;->f:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v3, v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/ChoicePreference;->f:[Ljava/lang/CharSequence;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/tencent/mm/ui/ChoicePreference;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/ChoiceItem;

    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    const v2, 0x7f030071

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/ChoiceItem;->a(Landroid/widget/RadioButton;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/ChoicePreference;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/ChoicePreference;->f:[Ljava/lang/CharSequence;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_2

    const v2, 0x7f030073

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/ChoiceItem;->a(Landroid/widget/RadioButton;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/ChoicePreference;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const v2, 0x7f030072

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/ChoiceItem;->a(Landroid/widget/RadioButton;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/ChoicePreference;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference;->a:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/tencent/mm/ui/ChoicePreference$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/ChoicePreference$1;-><init>(Lcom/tencent/mm/ui/ChoicePreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-object v4
.end method

.method public final setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/ChoicePreference;->g:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method
