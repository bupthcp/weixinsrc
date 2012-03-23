.class public Lcom/tencent/mm/ui/MMPreferenceAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Lcom/tencent/mm/ui/IPreferenceScreen;


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Ljava/util/LinkedList;

.field private final c:Lcom/tencent/mm/ui/MMPreferenceInflater;

.field private final d:Ljava/util/HashMap;

.field private final e:Ljava/util/HashMap;

.field private final f:Ljava/util/HashSet;

.field private final g:Landroid/content/SharedPreferences;

.field private final h:Lcom/tencent/mm/ui/MMActivity;

.field private i:[I

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->f:Ljava/util/HashSet;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->i:[I

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->j:Z

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->k:Z

    new-instance v0, Lcom/tencent/mm/ui/MMPreferenceInflater;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/MMPreferenceInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->c:Lcom/tencent/mm/ui/MMPreferenceInflater;

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->h:Lcom/tencent/mm/ui/MMActivity;

    iput-object p2, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->g:Landroid/content/SharedPreferences;

    return-void
.end method

.method private static a(Landroid/preference/Preference;Landroid/content/SharedPreferences;)V
    .locals 3

    instance-of v0, p0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private static c(Landroid/preference/Preference;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    return-object v0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->j:Z

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->c:Lcom/tencent/mm/ui/MMPreferenceInflater;

    invoke-virtual {v0, p1, p0}, Lcom/tencent/mm/ui/MMPreferenceInflater;->a(ILcom/tencent/mm/ui/IPreferenceScreen;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->j:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Landroid/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->d:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->c(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->d:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->c(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->e:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->j:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final b(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->f:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->d:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->c(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->d:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->c(Landroid/preference/Preference;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->i:[I

    aget v0, v0, p1

    and-int/lit8 v2, v0, 0x3

    packed-switch v2, :pswitch_data_0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->h:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f0201fc

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-object v1

    :pswitch_0
    if-nez p1, :cond_2

    const v0, 0x7f020201

    :goto_1
    iget-object v2, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->h:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0201fb

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->h:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f0201fd

    invoke-virtual {v0, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_2
    if-nez p1, :cond_3

    const v0, 0x7f0201fe

    :goto_2
    iget-object v2, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->h:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v2, v0}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const v0, 0x7f020200

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->k:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->k:Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 5

    const v4, 0x7f030076

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->i:[I

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->i:[I

    array-length v0, v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->i:[I

    array-length v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->i:[I

    const/4 v2, 0x3

    aput v2, v0, v1

    :goto_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->g:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->a(Landroid/preference/Preference;Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->i:[I

    const/4 v2, 0x4

    aput v2, v0, v1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->g:Landroid/content/SharedPreferences;

    invoke-static {v0, v2}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->a(Landroid/preference/Preference;Landroid/content/SharedPreferences;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v0

    if-ne v0, v4, :cond_6

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->i:[I

    aget v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :cond_3
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->i:[I

    aget v2, v0, v1

    or-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->i:[I

    aget v2, v0, v1

    or-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->i:[I

    aget v2, v0, v1

    or-int/lit8 v2, v2, 0x4

    aput v2, v0, v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->b:Ljava/util/LinkedList;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreferenceAdapter;->i:[I

    add-int/lit8 v2, v1, -0x1

    aget v3, v0, v2

    or-int/lit8 v3, v3, 0x2

    aput v3, v0, v2

    goto :goto_3

    :cond_7
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
