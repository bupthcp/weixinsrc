.class public final Lcom/tencent/mm/ui/PluginTextPreference;
.super Landroid/preference/Preference;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/PluginTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/PluginTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/PluginTextPreference;->a:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/PluginTextPreference;->b:Landroid/widget/TextView;

    const v0, 0x7f030084

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/PluginTextPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/tencent/mm/ui/PluginTextPreference;->e:I

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/PluginTextPreference;->c:I

    return-void
.end method

.method public final b(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/PluginTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/PluginTextPreference;->d:Ljava/lang/String;

    return-void
.end method

.method protected final onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f070177

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/PluginTextPreference;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/PluginTextPreference;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/mm/ui/PluginTextPreference;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/PluginTextPreference;->a:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/mm/ui/PluginTextPreference;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f07017f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/PluginTextPreference;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/mm/ui/PluginTextPreference;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/ui/PluginTextPreference;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f070117

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/PluginTextPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030084

    invoke-static {v2, v3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-object v1
.end method
