.class Lcom/tencent/mm/ui/DialogPreference$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/DialogPreference;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/DialogPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/DialogPreference$1;->a:Lcom/tencent/mm/ui/DialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference$1;->a:Lcom/tencent/mm/ui/DialogPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/DialogPreference;->a(Lcom/tencent/mm/ui/DialogPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference$1;->a:Lcom/tencent/mm/ui/DialogPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/DialogPreference;->a(Lcom/tencent/mm/ui/DialogPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/ui/DialogPreference$1;->a:Lcom/tencent/mm/ui/DialogPreference;

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference$1;->a:Lcom/tencent/mm/ui/DialogPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/DialogPreference;->b(Lcom/tencent/mm/ui/DialogPreference;)Lcom/tencent/mm/ui/DialogListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/DialogListAdapter;->b:[Ljava/lang/CharSequence;

    aget-object v0, v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/DialogPreference;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference$1;->a:Lcom/tencent/mm/ui/DialogPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/DialogPreference;->c(Lcom/tencent/mm/ui/DialogPreference;)Lcom/tencent/mm/ui/MMPreference$OnInternalChangeListerner;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference$1;->a:Lcom/tencent/mm/ui/DialogPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/DialogPreference;->c(Lcom/tencent/mm/ui/DialogPreference;)Lcom/tencent/mm/ui/MMPreference$OnInternalChangeListerner;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/MMPreference$OnInternalChangeListerner;->a()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference$1;->a:Lcom/tencent/mm/ui/DialogPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/DialogPreference;->d(Lcom/tencent/mm/ui/DialogPreference;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference$1;->a:Lcom/tencent/mm/ui/DialogPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/DialogPreference;->d(Lcom/tencent/mm/ui/DialogPreference;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/DialogPreference$1;->a:Lcom/tencent/mm/ui/DialogPreference;

    iget-object v2, p0, Lcom/tencent/mm/ui/DialogPreference$1;->a:Lcom/tencent/mm/ui/DialogPreference;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/DialogPreference;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
