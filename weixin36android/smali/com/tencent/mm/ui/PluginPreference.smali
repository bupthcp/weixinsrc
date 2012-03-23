.class public final Lcom/tencent/mm/ui/PluginPreference;
.super Landroid/preference/Preference;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Landroid/widget/ImageView;

.field private g:I

.field private h:Lcom/tencent/mm/ui/MMActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/PluginPreference;->h:Lcom/tencent/mm/ui/MMActivity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/PluginPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/PluginPreference;->h:Lcom/tencent/mm/ui/MMActivity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/ui/PluginPreference;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/PluginPreference;->d:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/tencent/mm/ui/PluginPreference;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/PluginPreference;->f:Landroid/widget/ImageView;

    const/16 v0, 0xff

    iput v0, p0, Lcom/tencent/mm/ui/PluginPreference;->g:I

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/PluginPreference;->h:Lcom/tencent/mm/ui/MMActivity;

    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/PluginPreference;->setLayoutResource(I)V

    const v0, 0x7f030091

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/PluginPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/PluginPreference;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/PluginPreference;->g:I

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/PluginPreference;->c:Ljava/lang/String;

    iput p2, p0, Lcom/tencent/mm/ui/PluginPreference;->d:I

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "MicroMsg.PluginPreference"

    const-string v1, "plugin do not exist"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/mm/ui/PluginPreference;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/PluginPreference;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "settings_plugins_list_#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/PluginPreference;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/PluginPreference;->setKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/PluginPreference;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/PluginPreference;->e:I

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/PluginPreference;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/PluginPreference;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/PluginPreference;->f:Landroid/widget/ImageView;

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/ui/PluginPreference;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/PluginPreference;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected final onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f070177

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/PluginPreference;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/PluginPreference;->f:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/mm/ui/PluginPreference;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    const v0, 0x7f07017b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/tencent/mm/ui/PluginPreference;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/PluginPreference;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/tencent/mm/ui/PluginPreference;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/PluginPreference;->h:Lcom/tencent/mm/ui/MMActivity;

    iget v2, p0, Lcom/tencent/mm/ui/PluginPreference;->d:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/PluginPreference;->c()V

    return-void
.end method

.method protected final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/PluginPreference;->getContext()Landroid/content/Context;

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

    const v3, 0x7f030083

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-object v2
.end method
