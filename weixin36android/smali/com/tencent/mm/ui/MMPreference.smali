.class public abstract Lcom/tencent/mm/ui/MMPreference;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Lcom/tencent/mm/ui/MMPreferenceAdapter;

.field private b:Landroid/widget/ListView;

.field private c:Landroid/content/SharedPreferences;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MMPreference;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/MMPreference;)Lcom/tencent/mm/ui/MMPreferenceAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreference;->a:Lcom/tencent/mm/ui/MMPreferenceAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/MMPreference;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreference;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/MMPreference;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MMPreference;->d:Z

    return v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f03008a

    return v0
.end method

.method public a(Landroid/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract d_()I
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPreference;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/MMPreference;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPreference;->c:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/tencent/mm/ui/MMPreferenceAdapter;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMPreference;->c:Landroid/content/SharedPreferences;

    invoke-direct {v0, p0, v1}, Lcom/tencent/mm/ui/MMPreferenceAdapter;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPreference;->a:Lcom/tencent/mm/ui/MMPreferenceAdapter;

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPreference;->b:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPreference;->d_()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/MMPreference;->a:Lcom/tencent/mm/ui/MMPreferenceAdapter;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreference;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMPreference;->a:Lcom/tencent/mm/ui/MMPreferenceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreference;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/MMPreference$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MMPreference$1;-><init>(Lcom/tencent/mm/ui/MMPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreference;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/MMPreference$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MMPreference$2;-><init>(Lcom/tencent/mm/ui/MMPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPreference;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreference;->a:Lcom/tencent/mm/ui/MMPreferenceAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    return-void
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPreference;->d:Z

    return v0
.end method

.method public final q()Lcom/tencent/mm/ui/IPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreference;->a:Lcom/tencent/mm/ui/MMPreferenceAdapter;

    return-object v0
.end method

.method public final r()Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreference;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreference;->b:Landroid/widget/ListView;

    invoke-static {v0}, Lb/a/b;->a(Landroid/widget/ListView;)V

    const/4 v0, 0x1

    return v0
.end method
