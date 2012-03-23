.class Lcom/tencent/mm/ui/MMPreference$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/ui/MMPreference;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMPreference$1;->a:Lcom/tencent/mm/ui/MMPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreference$1;->a:Lcom/tencent/mm/ui/MMPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMPreference;->a(Lcom/tencent/mm/ui/MMPreference;)Lcom/tencent/mm/ui/MMPreferenceAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/preference/Preference;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, v0, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/MMPreference$1;->a:Lcom/tencent/mm/ui/MMPreference;

    invoke-static {v2}, Lcom/tencent/mm/ui/MMPreference;->b(Lcom/tencent/mm/ui/MMPreference;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/tencent/mm/ui/MMPreference$1;->a:Lcom/tencent/mm/ui/MMPreference;

    invoke-static {v1}, Lcom/tencent/mm/ui/MMPreference;->c(Lcom/tencent/mm/ui/MMPreference;)Z

    :goto_0
    instance-of v1, v0, Lcom/tencent/mm/ui/DialogPreference;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/tencent/mm/ui/DialogPreference;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/DialogPreference;->b()V

    new-instance v2, Lcom/tencent/mm/ui/MMPreference$1$1;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/MMPreference$1$1;-><init>(Lcom/tencent/mm/ui/MMPreference$1;)V

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/DialogPreference;->a(Lcom/tencent/mm/ui/MMPreference$OnInternalChangeListerner;)V

    :cond_1
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/MMPreference$1;->a:Lcom/tencent/mm/ui/MMPreference;

    iget-object v2, p0, Lcom/tencent/mm/ui/MMPreference$1;->a:Lcom/tencent/mm/ui/MMPreference;

    invoke-static {v2}, Lcom/tencent/mm/ui/MMPreference;->a(Lcom/tencent/mm/ui/MMPreference;)Lcom/tencent/mm/ui/MMPreferenceAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/ui/MMPreference;->a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z

    :cond_2
    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreference$1;->a:Lcom/tencent/mm/ui/MMPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMPreference;->a(Lcom/tencent/mm/ui/MMPreference;)Lcom/tencent/mm/ui/MMPreferenceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void

    :cond_4
    move v3, v2

    goto :goto_0
.end method
