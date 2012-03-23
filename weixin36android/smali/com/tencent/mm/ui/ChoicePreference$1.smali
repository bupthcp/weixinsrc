.class Lcom/tencent/mm/ui/ChoicePreference$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/ChoicePreference;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/ChoicePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/ChoicePreference$1;->a:Lcom/tencent/mm/ui/ChoicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference$1;->a:Lcom/tencent/mm/ui/ChoicePreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/ChoicePreference;->a(Lcom/tencent/mm/ui/ChoicePreference;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference$1;->a:Lcom/tencent/mm/ui/ChoicePreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/ChoicePreference$1;->a:Lcom/tencent/mm/ui/ChoicePreference;

    invoke-static {v2}, Lcom/tencent/mm/ui/ChoicePreference;->b(Lcom/tencent/mm/ui/ChoicePreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    const/high16 v3, 0x10

    sub-int v3, p2, v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/ChoicePreference;->a(Lcom/tencent/mm/ui/ChoicePreference;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference$1;->a:Lcom/tencent/mm/ui/ChoicePreference;

    invoke-static {v0, p2}, Lcom/tencent/mm/ui/ChoicePreference;->a(Lcom/tencent/mm/ui/ChoicePreference;I)I

    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference$1;->a:Lcom/tencent/mm/ui/ChoicePreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/ChoicePreference;->a(Lcom/tencent/mm/ui/ChoicePreference;)Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/ChoicePreference$1;->a:Lcom/tencent/mm/ui/ChoicePreference;

    iget-object v2, p0, Lcom/tencent/mm/ui/ChoicePreference$1;->a:Lcom/tencent/mm/ui/ChoicePreference;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/ChoicePreference;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/ChoicePreference$1;->a:Lcom/tencent/mm/ui/ChoicePreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/ChoicePreference;->a(Lcom/tencent/mm/ui/ChoicePreference;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
