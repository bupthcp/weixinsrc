.class public Lcom/tencent/mm/ui/SwitchKeyValuePreference;
.super Landroid/preference/Preference;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/SwitchKeyValuePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/SwitchKeyValuePreference;->b:Z

    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/SwitchKeyValuePreference;->setLayoutResource(I)V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/SwitchKeyValuePreference;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/SwitchKeyValuePreference;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/SwitchKeyValuePreference;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/SwitchKeyValuePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->a(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/SwitchKeyValuePreference;->a:Landroid/widget/TextView;

    const v1, 0x7f0202b2

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/SwitchKeyValuePreference;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/SwitchKeyValuePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->b(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/SwitchKeyValuePreference;->a:Landroid/widget/TextView;

    const v1, 0x7f0202b1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/SwitchKeyValuePreference;->b:Z

    invoke-direct {p0}, Lcom/tencent/mm/ui/SwitchKeyValuePreference;->a()V

    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/SwitchKeyValuePreference;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/tencent/mm/ui/SwitchKeyValuePreference;->a()V

    return-void
.end method
