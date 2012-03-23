.class public final Lcom/tencent/mm/ui/DialogPreference;
.super Landroid/preference/Preference;


# instance fields
.field private final a:Lcom/tencent/mm/ui/DialogListAdapter;

.field private b:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private c:Lcom/tencent/mm/ui/MMPreference$OnInternalChangeListerner;

.field private d:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/tencent/mm/ui/DialogListAdapter;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/DialogListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/DialogPreference;->a:Lcom/tencent/mm/ui/DialogListAdapter;

    sget-object v0, Lcom/tencent/mm/R$styleable;->a:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/DialogPreference;->a:Lcom/tencent/mm/ui/DialogListAdapter;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/ui/DialogListAdapter;->a:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/tencent/mm/ui/DialogPreference;->a:Lcom/tencent/mm/ui/DialogListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/ui/DialogListAdapter;->b:[Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference;->a:Lcom/tencent/mm/ui/DialogListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/DialogListAdapter;->a()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/DialogPreference;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference;->d:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/DialogPreference;)Lcom/tencent/mm/ui/DialogListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference;->a:Lcom/tencent/mm/ui/DialogListAdapter;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/DialogPreference;)Lcom/tencent/mm/ui/MMPreference$OnInternalChangeListerner;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference;->c:Lcom/tencent/mm/ui/MMPreference$OnInternalChangeListerner;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/DialogPreference;)Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference;->a:Lcom/tencent/mm/ui/DialogListAdapter;

    iget-object v0, v0, Lcom/tencent/mm/ui/DialogListAdapter;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/ui/MMPreference$OnInternalChangeListerner;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/DialogPreference;->c:Lcom/tencent/mm/ui/MMPreference$OnInternalChangeListerner;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference;->a:Lcom/tencent/mm/ui/DialogListAdapter;

    iput-object p1, v0, Lcom/tencent/mm/ui/DialogListAdapter;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference;->a:Lcom/tencent/mm/ui/DialogListAdapter;

    iget-object v0, v0, Lcom/tencent/mm/ui/DialogListAdapter;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/DialogItem;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference;->a:Lcom/tencent/mm/ui/DialogListAdapter;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/mm/ui/DialogListAdapter;->c:I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/DialogPreference;->a:Lcom/tencent/mm/ui/DialogListAdapter;

    iget v0, v0, Lcom/tencent/mm/ui/DialogItem;->b:I

    iput v0, v1, Lcom/tencent/mm/ui/DialogListAdapter;->c:I

    goto :goto_0
.end method

.method protected final b()V
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/mm/ui/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030074

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/DialogPreference$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/DialogPreference$1;-><init>(Lcom/tencent/mm/ui/DialogPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/DialogPreference;->a:Lcom/tencent/mm/ui/DialogListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/DialogPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tencent/mm/ui/DialogPreference$2;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/DialogPreference$2;-><init>(Lcom/tencent/mm/ui/DialogPreference;)V

    invoke-static {v1, v2, v0, v3}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/DialogPreference;->d:Landroid/app/AlertDialog;

    return-void
.end method

.method public final onBindView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference;->a:Lcom/tencent/mm/ui/DialogListAdapter;

    iget-object v0, v0, Lcom/tencent/mm/ui/DialogListAdapter;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/mm/ui/DialogPreference;->a:Lcom/tencent/mm/ui/DialogListAdapter;

    iget-object v1, v1, Lcom/tencent/mm/ui/DialogListAdapter;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/DialogItem;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/tencent/mm/ui/DialogItem;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method protected final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/DialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f070117

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    const v3, 0x7f030081

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-object v2
.end method

.method public final setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/DialogPreference;->b:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method
