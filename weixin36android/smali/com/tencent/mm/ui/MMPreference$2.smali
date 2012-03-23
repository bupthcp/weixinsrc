.class Lcom/tencent/mm/ui/MMPreference$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MMPreference;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMPreference$2;->a:Lcom/tencent/mm/ui/MMPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreference$2;->a:Lcom/tencent/mm/ui/MMPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMPreference;->a(Lcom/tencent/mm/ui/MMPreference;)Lcom/tencent/mm/ui/MMPreferenceAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMPreference$2;->a:Lcom/tencent/mm/ui/MMPreference;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MMPreference;->a(Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method
